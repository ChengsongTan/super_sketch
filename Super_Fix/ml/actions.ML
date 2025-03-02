(* 
  Mantainers: 
    Jonathan Julián Huerta y Munive -- huertjon[at]cvut[dot]cz

Part of project DeepIsaHOL (latest version at https://github.com/yonoteam/DeepIsaHOL). 
Representation of Isabelle's transitions as user actions.
*)

signature ACTIONS =
sig
  (* Actions.T *)
  type T
  val void: T
  val text_of: T -> string
  val transition_of: T -> Toplevel.transition
  val kind_of: T -> string
  val pos_of: T -> Position.T
  val on_text: (string -> 'a) -> T -> 'a
  val on_kind: (string -> 'a) -> T -> 'a
  val make: theory -> string -> T list
  val make_one: theory -> string -> T
  val make': theory -> string -> T list

  (* Application *)
  val apply_safe: T -> Toplevel.state -> Toplevel.state * (exn * string) option
  val apply: T -> Toplevel.state -> Toplevel.state
  val apply_all: T list -> Toplevel.state -> (T * Toplevel.state * (exn * string) option) list
  val apply_all': T list -> Toplevel.state -> (Toplevel.state * T * (exn * string) option) list
  val apply_while: (Toplevel.state * T * (exn * string) option -> bool) -> T list  -> Toplevel.state
    -> (Toplevel.state * T * (exn * string) option) list * T list
  val timed_apply_all: {debug: bool, no_batches: int, timeout_in_secs: int} -> T list 
    -> Toplevel.state -> (T * Toplevel.state * (exn * string) option) list

end;


structure Actions: ACTIONS =
struct


(** ACTIONS **)

datatype T = Action of {
  text: string,
  transition: Toplevel.transition}

fun build txt tr = Action {text=txt, transition=tr};

val void = build "" (Toplevel.ignored Position.none);

fun text_of (Action a) = #text a;

fun transition_of (Action a) = #transition a;

fun kind_of (Action a) = Toplevel.name_of (#transition a);

fun pos_of (Action a) = Toplevel.pos_of (#transition a);

(* on_text: (string -> 'a) -> Actions.T -> 'a *)
fun on_text f act = f (text_of act);

(* on_kind: (string -> 'a) -> Actions.T -> 'a *)
fun on_kind f act = f (kind_of act);

(* inspired by Portal-to-Isabelle's parse_text MLFunction2 *)
(* make: theory -> string -> Actions.T list *)
fun make thy0 thy_text =
  let
    val trs = Get.transitions thy0 Position.start thy_text;
    fun dist tr1 tr2 = Option.valOf (Position.distance_of (Toplevel.pos_of tr1, Toplevel.pos_of tr2));
    fun record_acts syms [tr] = [build (implode syms) tr]
      | record_acts _ [] = []
      | record_acts syms (tr1 :: tr2 :: trs) = 
          let 
           val (syms1, syms2) = Library.chop (dist tr1 tr2) syms;
           val act = build (implode syms1) tr1;
          in act :: record_acts syms2 (tr2 :: trs) end;
  in record_acts (Symbol.explode thy_text) trs end;

(* make_one: theory -> string -> Actions.T *)
fun make_one thy0 thy_text = hd (make thy0 thy_text)

(* make': theory -> string -> Actions.T list *)
fun make' thy0 thy_text =
  let
    val does_something = on_kind (
      Pred.is_not "<ignored>" 
      andf Pred.neg (Seps.is_document_step (Get.grouped_commands thy0)))
  in void :: (filter does_something (make thy0 thy_text)) end;


(** APPLICATION **)

(* apply_safe: Actions.T -> Toplevel.state -> Toplevel.state * (exn * string) option *)
fun apply_safe (Action a) st = Toplevel.transition true (#transition a) st;

(* apply: Actions.T -> Toplevel.state -> Toplevel.state *)
fun apply act st = fst (apply_safe act st);

(* apply_all: Actions.T list -> Toplevel.state 
  -> (Actions.T * Toplevel.state * (exn * string) option) list *)
fun apply_all [] _ = []
  | apply_all acts st =
  let
    fun do_next act' (_, st, _) =
      let
        val (st', err') = apply_safe act' st
      in (act', st', err') end;
  in Ops.log_fold do_next (void, st, NONE) acts end;

(* apply_all': Actions.T list -> Toplevel.state 
  -> (Toplevel.state * Actions.T * (exn * string) option) list *)
fun apply_all' [] st = [(st, void, NONE)]
  | apply_all' acts st =
  let
    fun do_next act (st, so_far) =
      let
        val (st', err') = apply_safe act st;
      in (st', (st, act, err') :: so_far) end;
    val (_, rev_result) = fold do_next acts (st, [])
  in rev rev_result end;

(* apply_while: (Toplevel.state * Actions.T * (exn * string) option -> bool) 
  -> Actions.T list -> Toplevel.state 
  -> (Toplevel.state * Actions.T * (exn * string) option) list * Actions.T list *)
fun apply_while P acts st =
  let
    fun do_next act' (st, _, _) =
      let
        val (st', err') = apply_safe act' st;
      in (st', act', err') end;
  in Pred.log_fold P do_next acts (st, void, NONE) end;

(* timed_apply_all: {debug: bool, no_batches: int, timeout_in_secs: int} 
  -> Actions.T list -> Toplevel.state 
  -> (Actions.T * Toplevel.state * (exn * string) option) list *)
fun timed_apply_all {timeout_in_secs=t, no_batches=n, debug=debugging} acts st =
  if n < 2 orelse t < 0 then raise Fail "negative time or less than 2 batches"
  else let
    (* Preliminary defs *)
    val timeout = Time.fromSeconds t
    val is_sledgehammer_step = on_kind (Pred.is "apply") 
      andf on_text (Pred.contains "smt" orf Pred.contains "metis")
    fun get_last_st stateful_trs = #2 (Ops.last stateful_trs);

    (* Single batch processing *)
    fun debug_report batch = if debugging then
      let
        val report_size = n div 2
        val text =
          Ops.range 0 report_size (rev batch)
          |> rev o map text_of
          |> Library.cat_lines
      in tracing ("Just processed\n" ^ text) end
      else ()
    fun do_next_batch batch (st, good_so_far, [], _) = 
      let
        val exn_result = Ops.apply_with_timeout timeout (apply_all batch) st;
        val result  = (case exn_result of 
          Exn.Exn _ => (st, good_so_far, batch, [])
          | Exn.Res ress => (get_last_st ress, good_so_far @ ress, [], []))
        val _ = debug_report batch;
      in result end
      (* if there is an error, do_next_batch stops processing the remaining batches *)
      | do_next_batch batch (st, goods, some_errs, rest) = (st, goods, some_errs, rest @ batch);

    (* Multiple batch processing *)
    (* prev_sts: (Actions.T * Toplevel.state * (exn * string) option) list *)
    fun process_in_batches st0 prev_sts [] [] = (st0, prev_sts, [], [])
      | process_in_batches st0 prev_sts after_acts [] = process_in_batches st0 prev_sts [] after_acts
      | process_in_batches st0 prev_sts after_acts [curr_act] = 
        let
          val new_sts = prev_sts @ [(curr_act, st0, SOME (Timeout.TIMEOUT timeout, "TIMEOUT_ERROR"))]
        in process_in_batches st0 new_sts [] after_acts end
      | process_in_batches st0 prev_sts after_acts curr_acts = 
        (* Large processing *)
        if length curr_acts > n
        then let
            val batches = Ops.split_into n curr_acts;
            val (st', goods', bads, rest) = fold do_next_batch batches (st0, [], [], []);
          in process_in_batches st' (prev_sts @ goods') (rest @ after_acts) bads end
        (* Fine-grained processing *)
        else let
            val batches = Pred.split is_sledgehammer_step curr_acts;
            val (st', goods', bads, rest) = fold do_next_batch batches (st0, [], [], []);
          in process_in_batches st' (prev_sts @ goods') (rest @ after_acts) bads end
  in #2 (process_in_batches st [] [] acts) end;


end;