theory FixIDData  imports "../examples_deps/BasicInvariants"  begin
sledgehammer_params[timeout=10, dont_minimize, "try0" = false]







lemma HostIDData'_CSTATE_invariant1: shows "CSTATE X (  T [ 1 +=reqresp GO Shared txid] [ 5 sHost= InvalidM] [ 0 -=snpresp  ]) 0 = CSTATE X T 0" 
  by simp

lemma HostIDData'_CSTATE_invariant2: shows "CSTATE X (  T [ 1 +=reqresp GO Shared txid] [ 5 sHost= InvalidM] [ 0 -=snpresp  ]) 1 = CSTATE X T 1" 
  by simp



lemma HostIDData'_devcache_invariant1: shows "(CLEntry.block_state (devcache1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))) = CLEntry.block_state (devcache1 T)" 
  by simp

lemma HostIDData'_devcache_invariant2: shows "(CLEntry.block_state (devcache2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))) = CLEntry.block_state (devcache2 T)" 
  by simp


lemma HostIDData_nextLoad: shows "nextLoad T 1 = nextLoad ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
  by simp


   


lemma snps1_HostIDData: shows "snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = snps1 T"
  by simp

lemma snps2_HostIDData: shows "snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = snps2 T"
  by simp

lemma reqs2_HostIDData: shows "reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = reqs2 T"
  by simp

lemma reqs1_HostIDData: shows "reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = reqs1 T"
  by simp

lemma htddatas2_HostIDData: shows "htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = htddatas2 T"
  by simp

lemma nextSnoopIs_HostIDData: shows "nextSnoopIs X ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) i = nextSnoopIs X T i"
  by simp


lemma snpresps2_HostIDData: shows "snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = snpresps2 T"
  by simp

lemma snpresps1_HostIDData: shows "snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = snpresps1 T"
  by simp

lemma reqresps2_HostIDData: shows "reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = reqresps2 T"
  by simp



lemma reqresps1_HostIDData: shows "reqresps1 T = [] \<Longrightarrow> length (reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
  by simp

lemma reqresps1_HostIDData2: shows "reqresps1 T =  (reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))"
  by simp

lemma dthdatas1_HostIDData_aux: shows "length (dthdatas1 T) \<le> 1 \<Longrightarrow> (dthdatas1 (T [ Dev1 -=d2hdHead ])) = []" 
  apply simp
  apply(case_tac "dthdatas1 T")
  by simp+
  

lemma dthdatas1_HostIDData: shows "length (dthdatas1 T) \<le> 1 \<Longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
  apply(subgoal_tac "dthdatas1 ( T   [ =hv v] [ 5 sHost= InvalidM] ) = dthdatas1 T")
   apply(subgoal_tac "length (dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] )) \<le> 1")  
  using dthdatas1_HostIDData_aux apply blast
   apply presburger 
  by simp

  

lemma dthdatas2_HostIDData: shows "dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = dthdatas2 T"
  apply(case_tac "program1 T")
  by simp+


lemma htddatas1_HostIDData: shows "htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = htddatas1 T"
  apply simp
  done




lemma reqresps1_HostIDData_aux: shows "length (reqresps1 T) \<le> 1 \<Longrightarrow> reqresps1 (T [0 -=reqresp ]) = []"
  apply(case_tac "reqresps1 T")
  by simp+

lemma reqresps1_HostIDData_aux1: shows "reqresps1 T = reqresps1 (T [ Dev1 +=d2hd dthd] [ -=i 0])"
 apply(case_tac "program1 T")
  by simp+


lemma nextEvict_HostIDData_invariant: shows"nextEvict T 0 = nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
  by simp





lemma nextReqIs_HostIDData_IMAD_invariant2: shows 
  "nextReqIs X ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 = nextReqIs X T 1"
  by simp
  

lemma nextReqIs_HostIDData_IMAD_invariant1: shows 
  "nextReqIs X ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 = nextReqIs X T 0"
  by simp



lemma CSTATE_HostIDData_otherside_invariant2: shows
" CSTATE X ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 = CSTATE X T 1"
  by simp

lemma CSTATE_HostIDData_otherside_invariant3: shows
" CSTATE X ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 = CSTATE X T 0"
  by simp



lemma HostIDData_nextGOPendingIs_otherside: shows 
"nextGOPendingIs X ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) i = nextGOPendingIs X T i"
  by simp

lemma HostIDData_nextEvict_otherside: shows 
"nextEvict  ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) i = nextEvict T i"
 by simp

lemma HostIDData_nextHTDDataPending_otherside: shows 
"nextDTHDataPending  ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 = nextDTHDataPending T 1" 
  by simp


lemma HostIDData_nextSnpRespIs_otherside: shows 
"nextSnpRespIs X  ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 = nextSnpRespIs X T 1"
  by simp




lemma HostIDData_nextSnpRespIs_sameside: shows 
"nextSnpRespIs X  ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 = nextSnpRespIs X T 0"
  by simp
 

lemma HostIDData_HSTATE: shows "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) " 
  by simp  


lemma nextStore_nextEvict_exclusive: shows "nextEvict T i \<Longrightarrow> \<not>nextStore T i"
  apply(induct "program1 T")
   apply simp
  apply (metis One_nat_def startsEvict.elims(2) startsStore.simps(4) zero_neq_one)
  apply(case_tac a)
  apply (metis nextEvict_def nextStore_def startsEvict.elims(2) startsStore.simps(4))
  apply (metis nextEvict_def nextStore_def startsEvict.elims(2) startsStore.simps(4))
  by (metis nextEvict_def nextStore_def startsEvict.elims(2) startsStore.simps(4))


lemma nextStore_HostIDData: shows "nextStore T = nextStore ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
  unfolding nextStore_def
  by simp

lemma nextLoad_HostIDData: shows "nextLoad T = nextLoad ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
  unfolding nextLoad_def
  by simp

lemma reqlength1_minus: shows "length (reqs1 T) \<le> 1 \<Longrightarrow> reqs1 (T [ 0 -=req]) = []"
  apply(cases "reqs1 T")
   apply simp+
  done


  
lemma empty_reqs_nextReqIs: shows "reqs1 T  = [] \<Longrightarrow> \<not> nextReqIs X T 0"
  by simp

lemma HostIDData_empty_reqs1_aux: shows " reqs1 T = reqs1 (  T [ 1 +=snp SnpInv txid]  [ 5 sHost= MAD])"
  by simp







lemma reqs1_HostShareRdOwn_aux: shows "reqs1 ( T [ 0 +=hostdata  txid] [ 5 sHost= MA] [ 1 +=snp SnpInv txid] ) = reqs1 T"
  by simp


lemma HostIDData_one_msg_htddatas1: shows "htddatas1 T = (htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))"
  by simp+
  
lemma HostIDData_nextGOPending: shows "nextGOPending T i = nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) i"
  by simp




lemma nextReqIs_nonempty_reqs1:shows "nextReqIs X T 0 \<Longrightarrow> reqs1 T \<noteq> []"
  
  using empty_reqs_nextReqIs by blast

lemma HostIDData_htddatas2_aux: shows "htddatas2 T = [] \<Longrightarrow> length (htddatas2 (T [Dev2 +=h2dd msg])) \<le> 1"
  apply simp
  done







lemma nextGOPending_HostIDData: "nextGOPending (  T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ] ) i = nextGOPending T i"
apply(case_tac i)
apply simp+
done







(*\<and> CSTATE Invalid T 1*)
lemma HostIDData'_coherent_aux_simpler: assumes "SWMR_state_machine T \<and> HSTATE ID T \<and> nextDTHDataFrom 0 T \<and> CSTATE Invalid T 0 \<and> (CSTATE IIA T 1 \<or> CSTATE Invalid T 1 \<or> CSTATE SIA T 1) "
  shows "SWMR_state_machine  ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
proof -
have i0: "SWMR T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i1x: "HSTATE ID T " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i2x: "nextDTHDataFrom 0 T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i6x: " CSTATE Invalid T 0" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i7x: "(CSTATE IIA T 1 \<or> CSTATE Invalid T 1 \<or> CSTATE SIA T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i3: "C_msg_P_oppo ISD nextHTDDataPending (\<lambda>T i. \<not> CSTATE Modified T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i4: "H_msg_P_same SD nextDTHDataPending (\<lambda>T i. \<not> CSTATE Modified T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i5: "H_msg_P_same SAD nextDTHDataPending (\<lambda>T i. \<not> CSTATE Modified T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i6: "C_msg_P_oppo ISAD nextGOPending (\<lambda>T i. \<not> CSTATE Modified T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i10: "H_msg_P_same SharedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)


have i11: "H_msg_P_oppo SharedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i12: "H_msg_P_same ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i13: "H_msg_P_oppo ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextDTHDataPending T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i14: "H_msg_P_oppo ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextSnpRespIs RspIFwdM T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i15: "H_msg_P_same ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextSnpRespIs RspIFwdM T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i16: "C_H_state IMAD (nextReqIs RdOwn) Modified SD T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i17: "C_H_state IMAD (nextReqIs RdOwn) Modified SAD T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i18: "C_H_state IMAD (nextReqIs RdOwn) Modified SA T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i19: "C_H_state Invalid nextStore Modified SAD T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i20: "C_H_state Invalid nextStore Modified SA T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)


have i21: "C_H_state Invalid nextStore Modified SD T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i22: "HSTATE SharedM T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i23: "HSTATE SD T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i24: "HSTATE MD T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i25: "C_msg_not RdShared IMAD T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i26: "C_msg_not RdShared Invalid T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i27: "H_msg_P_same ModifiedM (nextReqIs DirtyEvict) (\<lambda>T i. CSTATE MIA T i \<or> CSTATE IIA T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i28: "C_msg_P_host MIA (nextGOPendingIs GO_WritePull) (\<lambda>T. \<not> HSTATE ModifiedM T) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i29: "C_msg_P_same MIA (nextGOPendingIs GO_WritePull) nextEvict T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i30: "C_msg_P_host MIA (nextGOPendingIs GO_WritePull) (HSTATE ID) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)


have i31: "C_state_not MIA RdShared T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i32: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) nextEvict T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i34: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextReqIs RdShared T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i35: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextDTHDataPending T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i36: "H_C_state_msg_same ModifiedM Modified (\<lambda>T i. \<not> nextReqIs RdShared T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i37: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) nextEvict T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i39: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextReqIs RdShared T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i40: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextDTHDataPending T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)


have i41: "H_C_state_msg_oppo ModifiedM IIA (\<lambda>T i. \<not> nextReqIs RdShared T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i46: "C_msg_P_host Shared (nextSnoopIs SnpInv) (HSTATE MA) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i47: "C_msg_state RdShared ISAD T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i49: "C_not_C_msg Modified ISAD nextGOPending T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i50: "C_msg_P_same Invalid nextStore (\<lambda>T i. \<not> nextHTDDataPending T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)


have i51: "C_msg_P_same Invalid nextStore (\<lambda>T i. \<not> nextSnoopIs SnpInv T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i52: "C_msg_P_same ISAD nextGOPending (\<lambda>T i. \<not> nextReqIs RdShared T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i55: "snps2 T \<noteq> [] \<longrightarrow> reqs1 T = [] \<and> snpresps2 T = [] \<and> dthdatas2 T = [] \<and> reqresps1 T = []" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i56: "snps1 T \<noteq> [] \<longrightarrow> reqs2 T = [] \<and> snpresps1 T = [] \<and> dthdatas1 T = [] \<and> reqresps2 T = []" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i57: "length (reqs1 T) \<le> 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i58: "length (reqs2 T) \<le> 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i59: "C_msg_P_same Shared (nextSnoopIs SnpInv) (\<lambda>T i. \<not> nextHTDDataPending T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i60: "length (snps2 T) \<le> 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)


have i61: "length (snps1 T) \<le> 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i611old: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda> T i. \<not>nextSnoopPending T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i612old: "C_msg_P_oppo Invalid nextStore (\<lambda>T i. \<not> nextSnoopPending T i) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i613old: "(CSTATE Invalid T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = [] \<and> htddatas1 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i614old: "(CSTATE Invalid T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = [] \<and> htddatas2 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i615old: "(CSTATE Shared T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = [] \<and> htddatas1 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i616old: "(CSTATE Shared T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = [] \<and> htddatas2 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i617old: "(CSTATE IIA T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> htddatas1 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i618old: "(CSTATE IIA T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> htddatas2 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i68: "CSTATE Invalid T 0 \<longrightarrow> reqs1 T = []" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i69: "CSTATE Invalid T 1 \<longrightarrow> reqs2 T = []" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i70: "CSTATE Shared T 0 \<longrightarrow> reqs1 T = []" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)


have i71: "CSTATE Shared T 1 \<longrightarrow> reqs2 T = []" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i72: "CSTATE Modified T 0 \<longrightarrow> \<not>CSTATE Modified T 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i73: "CSTATE Modified T 1 \<longrightarrow> \<not>CSTATE Modified T 0" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i74: "CSTATE ISD T 0 \<longrightarrow> \<not>HSTATE ModifiedM T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i75: "CSTATE ISD T 1 \<longrightarrow> \<not>HSTATE ModifiedM T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i76: "C_msg_P_host ISD (nextSnoopIs SnpInv) (HSTATE MA) T" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i77: "length (htddatas1 T) \<le> 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i78: "length (htddatas2 T) \<le> 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i79: "CSTATE ISD T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = []" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i80: "CSTATE ISD T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = []" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)


have i81: "CSTATE ISD T 0 \<longrightarrow> reqs1 T = []" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i82: "CSTATE ISD T 1 \<longrightarrow> reqs2 T = []" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i83: "(CSTATE IMAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> reqs1 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i84: "(CSTATE IMAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> reqs2 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i85: "(length (reqresps1 T) \<le> 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i86: "(length (reqresps2 T) \<le> 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i87: "(CSTATE MIA T 0 \<and> (nextGOPendingIs GO_WritePull T 0)  \<longrightarrow> snps1 T = [] )" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i88: "(CSTATE MIA T 1 \<and> (nextGOPendingIs GO_WritePull T 1)  \<longrightarrow> snps2 T = [] )" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)

have i89: "(CSTATE MIA T 0 \<and> (nextGOPendingIs GO_WritePull T 0) \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> htddatas1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i90: "(CSTATE MIA T 1 \<and> (nextGOPendingIs GO_WritePull T 1) \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> htddatas2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i91: "(CSTATE ISAD T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i92: "(CSTATE ISAD T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i93: "(C_msg_P_same MIA  (nextReqIs DirtyEvict) (nextEvict) T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i94: "(reqs1 T \<noteq> [] \<longrightarrow> reqresps1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i95: "(reqs2 T \<noteq> [] \<longrightarrow> reqresps2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i98: "(reqs1 T \<noteq> [] \<longrightarrow> snpresps2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i99: "(reqs2 T \<noteq> [] \<longrightarrow> snpresps1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i100: "(reqs1 T \<noteq> [] \<longrightarrow> htddatas1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i101: "(reqs2 T \<noteq> [] \<longrightarrow> htddatas2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
  have i751old: " (CSTATE ISD T 0 \<longrightarrow> nextLoad T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)+
have i752old: " (CSTATE ISD T 1 \<longrightarrow> nextLoad T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)+

 
 have i104: "(reqs1 T \<noteq> [] \<longrightarrow> reqresps1 T = [] ) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i105: "(reqs2 T \<noteq> [] \<longrightarrow> reqresps2 T = [] ) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i106: "(HSTATE SAD T \<longrightarrow> (CSTATE ISAD T 0 \<or> CSTATE ISAD T 1)) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i107: "(HSTATE ModifiedM T \<longrightarrow> \<not>CSTATE Shared T 0 \<and> \<not>CSTATE Shared T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i108: "(HSTATE SD T \<and> dthdatas1 T \<noteq> [] \<longrightarrow> htddatas2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i109: "(HSTATE SD T \<and> dthdatas2 T \<noteq> [] \<longrightarrow> htddatas1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i110: "(length (dthdatas1 T ) \<le> 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i111: "(length (dthdatas2 T ) \<le> 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i112: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> (CSTATE ISAD T 1 \<or> CSTATE ISD T 1)) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i113: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> (CSTATE ISAD T 0 \<or> CSTATE ISD T 0)) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i114: "(HSTATE SA T \<and> (nextSnpRespIs RspIFwdM T 0 \<or> nextSnpRespIs RspSFwdM T 0) \<longrightarrow> CSTATE ISAD T 1 \<or> CSTATE ISA T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i115: "(HSTATE SA T \<and> (nextSnpRespIs RspIFwdM T 1 \<or> nextSnpRespIs RspSFwdM T 1) \<longrightarrow> CSTATE ISAD T 0 \<or> CSTATE ISA T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 
 
 have i118: "(snpresps1 T \<noteq> [] \<longrightarrow> reqresps2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i119: "(snpresps2 T \<noteq> [] \<longrightarrow> reqresps1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i120: "(length (snpresps1 T) \<le> 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i121: "(length (snpresps2 T) \<le> 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i126: "(HSTATE SAD T \<and> snpresps1 T \<noteq> [] \<longrightarrow> htddatas2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i127: "(HSTATE SAD T \<and> snpresps2 T \<noteq> [] \<longrightarrow> htddatas1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i128: "(HSTATE MD T \<and> reqs1 T \<noteq> [] \<longrightarrow> dthdatas1 T \<noteq> []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i129: "(HSTATE MD T \<and> reqs2 T \<noteq> [] \<longrightarrow> dthdatas2 T \<noteq> []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i130: "(HSTATE ID T \<and> dthdatas1 T \<noteq> [] \<longrightarrow> CSTATE Invalid T 0 \<or> CSTATE ISAD T 0 \<or> CSTATE IMAD T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i131: "(HSTATE ID T \<and> dthdatas2 T \<noteq> [] \<longrightarrow> CSTATE Invalid T 1 \<or> CSTATE ISAD T 1 \<or> CSTATE IMAD T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i132: "(HSTATE ID T \<and> dthdatas1 T \<noteq> [] \<longrightarrow> \<not>CSTATE MIA T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i133: "(HSTATE ID T \<and> dthdatas2 T \<noteq> [] \<longrightarrow> \<not>CSTATE MIA T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i136: "(dthdatas1 T \<noteq> [] \<and> HSTATE SD T \<longrightarrow> snpresps2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i137: "(dthdatas2 T \<noteq> [] \<and> HSTATE SD T \<longrightarrow> snpresps1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i138: "(CSTATE ISD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> nextLoad T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i139: "(CSTATE ISD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> nextLoad T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i142: "(C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda> T i. \<not>nextSnoopPending T i) T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i143: "(CSTATE ISAD T 0 \<and> nextGOPending T 0 \<longrightarrow> HSTATE SD T \<or> HSTATE SharedM T \<or> HSTATE MAD T \<or> HSTATE SB T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i144: "(CSTATE ISAD T 1 \<and> nextGOPending T 1 \<longrightarrow> HSTATE SD T \<or> HSTATE SharedM T \<or> HSTATE MAD T \<or> HSTATE SB T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i145: "(CSTATE ISAD T 0 \<longrightarrow> nextLoad T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i146: "(CSTATE ISAD T 1 \<longrightarrow> nextLoad T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i147: "(CSTATE ISAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i148: "(CSTATE ISAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i149: "(CSTATE ISAD T 0 \<and> nextGOPending T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] ) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i150: "(CSTATE ISAD T 1 \<and> nextGOPending T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] ) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i153: "((CSTATE Invalid T 0 \<or> CSTATE ISDI T 0) \<and> HSTATE MD T \<longrightarrow> dthdatas1 T \<noteq> []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i154: "((CSTATE Invalid T 1 \<or> CSTATE ISDI T 1) \<and> HSTATE MD T \<longrightarrow> dthdatas2 T \<noteq> []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i159: "(HSTATE ModifiedM T \<longrightarrow> snpresps2 T = [] \<and> snpresps1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i160: "(HSTATE SAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> CSTATE ISAD T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i161: "(HSTATE SAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> CSTATE ISAD T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i164: "(HSTATE SAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> htddatas2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i165: "(HSTATE SAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> htddatas1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i166: "(HSTATE SAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqs2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i167: "(HSTATE SAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqs1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i168: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqs2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i169: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqs1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i170: "(HSTATE SharedM T \<and> nextReqIs RdOwn T 0 \<longrightarrow> dthdatas2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i171: "(HSTATE SharedM T \<and> nextReqIs RdOwn T 1 \<longrightarrow> dthdatas1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i172: "(HSTATE SharedM T \<and> nextReqIs RdShared T 0 \<longrightarrow> dthdatas2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i173: "(HSTATE SharedM T \<and> nextReqIs RdShared T 1 \<longrightarrow> dthdatas1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i178: "(CSTATE IIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> HSTATE IB T \<or> HSTATE SB T \<or> HSTATE MB T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i179: "(CSTATE IIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> HSTATE IB T \<or> HSTATE SB T \<or> HSTATE MB T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i180: "(CSTATE IIA T 0 \<and> nextGOPendingIs GO_WritePullDrop T 0 \<longrightarrow> HSTATE SharedM T \<or> HSTATE InvalidM T \<or> HSTATE ModifiedM T \<or> HSTATE SB T \<or> HSTATE ID T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i181: "(CSTATE IIA T 1 \<and> nextGOPendingIs GO_WritePullDrop T 1 \<longrightarrow> HSTATE SharedM T \<or> HSTATE InvalidM T \<or> HSTATE ModifiedM T \<or> HSTATE SB T \<or> HSTATE ID T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i182: "(CSTATE IMAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MA T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i183: "(CSTATE IMAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MA T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i186: "(HSTATE SharedM T \<longrightarrow> dthdatas1 T = [] \<and> dthdatas2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i187: "(CSTATE MIA T 1 \<longrightarrow> \<not>CSTATE MIA T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i188: "(CSTATE MIA T 0 \<longrightarrow> \<not>CSTATE MIA T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i189: "(HSTATE ModifiedM T \<longrightarrow> dthdatas2 T = [] \<and> dthdatas1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i190: "(nextDTHDataFrom  0 T \<longrightarrow> \<not> nextHTDDataPending T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i191: "(nextDTHDataFrom  1 T \<longrightarrow> \<not> nextHTDDataPending T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i192: "(nextDTHDataFrom 0 T \<longrightarrow> \<not> nextDTHDataFrom 1 T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i193: "(nextDTHDataFrom 1 T \<longrightarrow> \<not> nextDTHDataFrom 0 T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i194: "(HSTATE SA T \<longrightarrow> dthdatas2 T = [] \<and> dthdatas1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i195: "(HSTATE SD T \<longrightarrow> \<not> CSTATE IIA T 0 \<or> \<not> CSTATE IIA T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i196: "(HSTATE SAD T \<longrightarrow> (\<not> CSTATE IIA T 0 \<or> nextSnpRespIs RspIFwdM T 0) \<and> (\<not> CSTATE IIA T 1 \<or> nextSnpRespIs RspIFwdM T 1)) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i197: "(CSTATE IIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> \<not> nextDTHDataFrom 1 T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i198: "(CSTATE IIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> nextDTHDataFrom 0 T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i199: "(CSTATE IIA T 0 \<longrightarrow> \<not> CSTATE IIA T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i200: "(CSTATE IIA T 1 \<longrightarrow> \<not> CSTATE IIA T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i301: "(CSTATE MIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> \<not> nextDTHDataFrom 1 T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i302: "(CSTATE MIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> nextDTHDataFrom 0 T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i305: "(snpresps1 T \<noteq> [] \<longrightarrow> reqresps1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i306: "(snpresps2 T \<noteq> [] \<longrightarrow> reqresps2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i307: "(HSTATE SharedM T \<and> nextReqIs RdShared T 1 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i308: "(HSTATE SharedM T \<and> nextReqIs RdShared T 0 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i309: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i310: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i313: "(HSTATE ModifiedM T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i314: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePull) nextEvict T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i315: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextReqIs RdShared T i) T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i316: "(CSTATE SIA T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> htddatas1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i317: "(CSTATE SIA T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> htddatas2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i318: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda> T i. \<not>nextSnoopPending T i) T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i319: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> HSTATE IB T \<or> HSTATE SB T \<or> HSTATE MB T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i320: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> HSTATE IB T \<or> HSTATE SB T \<or> HSTATE MB T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i321: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextDTHDataPending T i) T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i322: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> \<not> nextDTHDataFrom 1 T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i323: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> nextDTHDataFrom 0 T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i324: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) nextEvict T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i325: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextReqIs RdShared T i) T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i326: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda> T i. \<not>nextSnoopPending T i) T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i327: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePullDrop T 0 \<longrightarrow> HSTATE InvalidM T \<or> HSTATE SharedM T \<or> HSTATE SB T \<or> HSTATE IB T \<or> HSTATE ModifiedM T \<or> HSTATE ID T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i328: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePullDrop T 1 \<longrightarrow> HSTATE InvalidM T \<or> HSTATE SharedM T \<or> HSTATE SB T \<or> HSTATE IB T \<or> HSTATE ModifiedM T \<or> HSTATE ID T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i329: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextDTHDataPending T i) T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i332: "(CSTATE SMAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MA T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i333: "(CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow>  HSTATE SharedM T \<or> HSTATE SA T \<or> HSTATE MA T \<or> HSTATE SB T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i334: "(CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow>  HSTATE SharedM T \<or> HSTATE SA T \<or> HSTATE MA T \<or> HSTATE SB T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i335: "(CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> nextHTDDataPending T 1)) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i336: "(CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> nextHTDDataPending T 0)) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i337: "(C_not_C_msg Modified IMAD nextGOPending T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i338: "(CSTATE IMAD T 0 \<and> nextGOPending T 0 \<longrightarrow> HSTATE MD T \<or> HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i339: "(CSTATE IMAD T 0 \<longrightarrow> nextStore T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i340: "(CSTATE IMAD T 1 \<longrightarrow> nextStore T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i341: "(CSTATE IMAD T 0 \<and> nextGOPending T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] ) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i342: "(CSTATE IMAD T 1 \<and> nextGOPending T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] ) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i343: "(snpresps1 T \<noteq> [] \<longrightarrow> reqresps1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i344: "(snpresps2 T \<noteq> [] \<longrightarrow> reqresps2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i345: "(CSTATE SMAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MA T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i346: "(CSTATE IMAD T 1 \<and> nextGOPending T 1 \<longrightarrow>  HSTATE MD T \<or> HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i347: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<longrightarrow>  HSTATE MD T \<or> HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i348: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<longrightarrow>  HSTATE MD T \<or> HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i349: "(CSTATE SMAD T 0 \<longrightarrow> nextStore T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i350: "(CSTATE SMAD T 1 \<longrightarrow> nextStore T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i351: "(C_msg_P_same IMA (nextGOPending) nextStore T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i352: "(CSTATE IMA T 0 \<or> CSTATE SMA T 0 \<or> CSTATE ISA T 0 \<longrightarrow> \<not> nextHTDDataPending T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i353: "(CSTATE IMA T 1 \<or> CSTATE SMA T 1 \<or> CSTATE ISA T 1 \<longrightarrow> \<not> nextHTDDataPending T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i354: "(C_msg_P_oppo IMA (nextGOPending) (\<lambda> T i. \<not>nextSnoopPending T i) T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i355: "(C_msg_P_oppo SMA (nextGOPending) (\<lambda> T i. \<not>nextSnoopPending T i) T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i356: "(C_msg_P_oppo ISA (nextGOPending) (\<lambda> T i. \<not>nextSnoopPending T i) T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i357: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i358: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 
 
 have i365: "(C_msg_P_same SMA (nextGOPending) nextStore T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i366: "((CSTATE SMA T 0 \<and> nextGOPending T 0 \<or> CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<or> CSTATE SMD T 0 \<and> nextHTDDataPending T 0) \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i367: "((CSTATE SMA T 1 \<and> nextGOPending T 1 \<or> CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<or> CSTATE SMD T 1 \<and> nextHTDDataPending T 1) \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i368: "(CSTATE ISD T 0 \<or> CSTATE ISAD T 0 \<or> CSTATE ISA T 0 \<or> CSTATE ISDI T 0 \<longrightarrow> nextLoad T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i369: "(CSTATE ISD T 1 \<or> CSTATE ISAD T 1 \<or> CSTATE ISA T 1 \<or> CSTATE ISDI T 1 \<longrightarrow> nextLoad T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i370: "(CSTATE IMD T 0 \<or> CSTATE IMAD T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMD T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SMA T 0  \<longrightarrow> nextStore T 0) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i371: "(CSTATE IMD T 1 \<or> CSTATE IMAD T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMD T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SMA T 1  \<longrightarrow> nextStore T 1) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i374: "(CSTATE ISA T 0 \<and> nextGOPending T 0 \<longrightarrow> HSTATE SharedM T \<or> HSTATE MAD T \<or> HSTATE MA T \<or> HSTATE SB T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i375: "(CSTATE ISA T 1 \<and> nextGOPending T 1 \<longrightarrow> HSTATE SharedM T \<or> HSTATE MAD T \<or> HSTATE MA T \<or> HSTATE SB T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i376: "(CSTATE ISDI T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> HSTATE ModifiedM T \<or> HSTATE MAD T  \<or> HSTATE MA T \<or> HSTATE MD T\<or> HSTATE ID T \<or> HSTATE InvalidM T \<or> HSTATE SharedM T \<or> HSTATE SB T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i377: "(CSTATE ISDI T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = [] \<and> snps1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i378: "(CSTATE ISDI T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = [] \<and> snps2 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i379: "(CSTATE ISDI T 0 \<longrightarrow> \<not>nextReqIs RdOwn T 1 \<or> \<not>HSTATE ModifiedM T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i380: "(CSTATE ISDI T 1 \<longrightarrow> \<not>nextReqIs RdOwn T 0 \<or> \<not>HSTATE ModifiedM T) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i381: "(CSTATE Invalid T 0 \<longrightarrow> reqresps1 T = []) "   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
 have i382: "(CSTATE Invalid T 1 \<longrightarrow> reqresps2 T = [])"   by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i383: "(CSTATE ISDI T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> HSTATE ModifiedM T \<or> HSTATE MAD T  \<or> HSTATE MA T \<or> HSTATE MD T\<or> HSTATE ID T \<or> HSTATE InvalidM T \<or> HSTATE SharedM T \<or> HSTATE SB T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i384: "(CSTATE Shared T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i385: "(CSTATE Shared T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i388: "(CSTATE SMAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i389: "(CSTATE SMAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i390: "(CSTATE SMAD T 0 \<and> reqresps1 T = [] \<and> htddatas1 T = [] \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i391: "(CSTATE SMAD T 1 \<and> reqresps2 T = [] \<and> htddatas2 T = [] \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i392: "(nextReqIs RdOwn T 0 \<longrightarrow> CSTATE SMAD T 0 \<or> CSTATE IMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i393: "(nextReqIs RdOwn T 1 \<longrightarrow> CSTATE SMAD T 1 \<or> CSTATE IMAD T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)

have i396: "(CSTATE SMAD T 0 \<and> nextSnoopIs SnpInv T 0 \<and> CXL_SPG_used T 0 \<longrightarrow> nextReqIs RdOwn T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i397: "(CSTATE SMAD T 1 \<and> nextSnoopIs SnpInv T 1 \<and> CXL_SPG_used T 1 \<longrightarrow> nextReqIs RdOwn T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i400: "(CSTATE ISD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i401: "(CSTATE ISD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i406: "(CSTATE IMA T 0 \<or> CSTATE SMA T 0 \<or> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0)  \<longrightarrow> dthdatas1 T = [] \<and> (dthdatas2 T = [] \<or> HSTATE MB T \<or> HSTATE ModifiedM T)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i407: "(CSTATE IMA T 1 \<or> CSTATE SMA T 1 \<or> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1)  \<longrightarrow> dthdatas2 T = [] \<and> (dthdatas1 T = [] \<or> HSTATE MB T \<or> HSTATE ModifiedM T)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i408: "(HSTATE MD T \<longrightarrow> snpresps1 T = [] \<and> snpresps2 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)


have i415: "(HSTATE ModifiedM T  \<and> nextReqIs RdOwn T 0 \<longrightarrow> (CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i416: "(HSTATE ModifiedM T  \<and> nextReqIs RdOwn T 1 \<longrightarrow> (CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i417: "((CSTATE Invalid T 0 \<or> CSTATE ISDI T 0) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i418: "((CSTATE Invalid T 1 \<or> CSTATE ISDI T 1) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i419: "(CSTATE IIA T 0 \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i420: "(CSTATE IIA T 1 \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i421: "(HSTATE MD T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i422: "(HSTATE MD T \<and> nextDTHDataFrom 0 T \<longrightarrow> CSTATE IMAD T 1 \<and> nextGOPending T 1 \<or> CSTATE IMD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i423: "(HSTATE MD T \<and> nextDTHDataFrom 1 T \<longrightarrow> CSTATE IMAD T 0 \<and> nextGOPending T 0 \<or> CSTATE IMD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i424: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> CSTATE IMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i425: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> CSTATE IMAD T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i426: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> snpresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i427: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> snpresps1 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i430: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> reqs2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i431: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE Modified T 1 \<and> reqs1 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i432: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i433: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps1 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i435: "(CSTATE IMD T 0 \<or> CSTATE SMD T 0 \<or> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextGOPending T 0) \<longrightarrow> dthdatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i436: "(CSTATE IMD T 1 \<or> CSTATE SMD T 1 \<or> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextGOPending T 1) \<longrightarrow> dthdatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i437: "(HSTATE SAD T \<and> (nextSnpRespIs RspIFwdM T 0 \<or> nextSnpRespIs RspSFwdM T 0) \<longrightarrow> CSTATE ISAD T 1 ) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i438: "(HSTATE SAD T \<and> (nextSnpRespIs RspIFwdM T 1 \<or> nextSnpRespIs RspSFwdM T 1) \<longrightarrow> CSTATE ISAD T 0 ) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i441: "(nextSnpRespIs RspSFwdM T 0 \<longrightarrow> CSTATE Shared T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SIA T 0 \<or> CSTATE SIAC T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i442: "(nextSnpRespIs RspSFwdM T 1 \<longrightarrow> CSTATE Shared T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SIA T 1 \<or> CSTATE SIAC T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i443: "((HSTATE SAD T \<or> HSTATE MAD T \<or> HSTATE SA T \<or> HSTATE MA T) \<and> snpresps1 T \<noteq> [] \<longrightarrow> htddatas1 T = [] \<or> CSTATE ISDI T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i444: "((HSTATE SAD T \<or> HSTATE MAD T \<or> HSTATE SA T \<or> HSTATE MA T) \<and> snpresps2 T \<noteq> [] \<longrightarrow> htddatas2 T = [] \<or> CSTATE ISDI T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i445: "(HSTATE SAD T \<and> (nextSnpRespIs RspIFwdM T 0 \<or> nextSnpRespIs RspSFwdM T 0) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i446: "(HSTATE SAD T \<and> (nextSnpRespIs RspIFwdM T 1 \<or> nextSnpRespIs RspSFwdM T 1) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i449: "(HSTATE MAD T \<and> nextSnpRespIs RspIFwdM T 0 \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> dthdatas1 T \<noteq> [] \<and> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i450: "(HSTATE MAD T \<and> nextSnpRespIs RspIFwdM T 1 \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> dthdatas2 T \<noteq> [] \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i451: "(HSTATE MA T \<and> snpresps1 T \<noteq> [] \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> [] \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i452: "(HSTATE MA T \<and> snpresps2 T \<noteq> [] \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> [] \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i453: "(nextReqIs DirtyEvict T 0 \<longrightarrow> CSTATE MIA T 0 \<or>  CSTATE SIA T 0 \<or> CSTATE IIA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i454: "(nextReqIs DirtyEvict T 1 \<longrightarrow> CSTATE MIA T 1 \<or>  CSTATE SIA T 1 \<or> CSTATE IIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i455: "(HSTATE MA T \<longrightarrow> dthdatas2 T = [] \<and> dthdatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i456: "((nextSnpRespIs RspIFwdM T 0 \<or> nextSnpRespIs RspIHitSE T 0) \<longrightarrow> CSTATE Invalid T 0 \<or> CSTATE ISDI T 0 \<or> CSTATE ISAD T 0 \<or> CSTATE IMAD T 0 \<or> CSTATE IIA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i457: "((nextSnpRespIs RspIFwdM T 1 \<or> nextSnpRespIs RspIHitSE T 1) \<longrightarrow> CSTATE Invalid T 1 \<or> CSTATE ISDI T 1 \<or> CSTATE ISAD T 1 \<or> CSTATE IMAD T 1 \<or> CSTATE IIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i460: "((CSTATE Invalid T 0  \<or> CSTATE ISDI T 0 \<or> nextReqIs RdOwn T 0) \<and> HSTATE MA T \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i461: "((CSTATE Invalid T 1  \<or> CSTATE ISDI T 1 \<or> nextReqIs RdOwn T 1) \<and> HSTATE MA T \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0))" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i462: "((CSTATE ISAD T 0 \<and> nextGOPending T 0) \<or> CSTATE ISA T 0 \<or> ( nextHTDDataPending T 0) \<or> CSTATE Shared T 0 \<longrightarrow> \<not> CSTATE Modified T 1 \<and> (dthdatas1 T = [] \<or> nextSnpRespIs RspSFwdM T 0 \<or> HSTATE SD T)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i463: "((CSTATE ISAD T 1 \<and> nextGOPending T 1) \<or> CSTATE ISA T 1 \<or> ( nextHTDDataPending T 1) \<or> CSTATE Shared T 1 \<longrightarrow> \<not> CSTATE Modified T 0 \<and> (dthdatas2 T = [] \<or> nextSnpRespIs RspSFwdM T 1 \<or> HSTATE SD T)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i465: "(CSTATE IMD T 0 \<or> CSTATE SMD T 0 \<or> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextGOPending T 0) \<longrightarrow> ((\<not> CSTATE ISD T 1) \<and> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1 \<and> \<not>( (CSTATE ISAD T 1 \<or> CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextGOPending T 1) \<and> \<not>CSTATE ISA T 1 \<and> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> \<not> (  nextHTDDataPending T 1) \<and>  \<not> CSTATE Shared T 1 \<and> \<not> CSTATE Modified T 1) \<or> nextSnoopIs SnpInv T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i466: "(CSTATE IMD T 1 \<or> CSTATE SMD T 1 \<or> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextGOPending T 1) \<longrightarrow> ((\<not> CSTATE ISD T 0) \<and> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0 \<and> \<not>( (CSTATE ISAD T 0 \<or> CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextGOPending T 0) \<and> \<not>CSTATE ISA T 0 \<and> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> \<not> (  nextHTDDataPending T 0) \<and>  \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Modified T 0) \<or> nextSnoopIs SnpInv T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i467: "(CSTATE Shared T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i468: "(CSTATE Shared T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i469: "(CSTATE ISD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i470: "(CSTATE ISD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i471: "(HSTATE MD T \<and> nextDTHDataFrom 0 T \<longrightarrow>  \<not> nextReqIs CleanEvict T 0 \<and> \<not> nextReqIs CleanEvictNoData T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i472: "(HSTATE MD T \<and> nextDTHDataFrom 1 T \<longrightarrow>  \<not> nextReqIs CleanEvict T 1 \<and> \<not> nextReqIs CleanEvictNoData T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i473: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow>  \<not> nextReqIs CleanEvict T 0 \<and> \<not> nextReqIs CleanEvictNoData T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i474: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow>  \<not> nextReqIs CleanEvict T 1 \<and> \<not> nextReqIs CleanEvictNoData T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i475: "(CSTATE Modified T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i476: "(CSTATE Modified T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i477: "(CSTATE Modified T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 ) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i478: "(CSTATE Modified T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 ) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i479: "(CSTATE MIA T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i480: "(CSTATE MIA T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i481: "(CSTATE MIA T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> CSTATE ISAD T 1 ) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i482: "(CSTATE MIA T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> CSTATE ISAD T 0 ) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i483: "(CSTATE Modified T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i484: "(CSTATE Modified T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i485: "(CSTATE Modified T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> CSTATE ISAD T 1 ) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i486: "(CSTATE Modified T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> CSTATE ISAD T 0 ) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i487: "(CSTATE Modified T 0 \<longrightarrow> reqs1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i488: "(CSTATE Modified T 1 \<longrightarrow> reqs2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i489: "(CSTATE Modified T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = [] \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i490: "(CSTATE Modified T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = [] \<and> htddatas2 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i491: "(HSTATE InvalidM T \<and> nextReqIs RdShared T 0 \<longrightarrow> dthdatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i492: "(HSTATE InvalidM T \<and> nextReqIs RdShared T 1 \<longrightarrow> dthdatas1 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i493: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1 \<and> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i494: "(nextReqIs RdOwn T 0 \<longrightarrow> \<not> CSTATE ISAD T 0 \<and> \<not> CSTATE Invalid T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i495: "(nextReqIs RdOwn T 1 \<longrightarrow> \<not> CSTATE ISAD T 1 \<and> \<not> CSTATE Invalid T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i496: "(HSTATE InvalidM T \<and> nextReqIs RdOwn T 0 \<longrightarrow> CSTATE IMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i497: "(HSTATE InvalidM T \<and> nextReqIs RdOwn T 1 \<longrightarrow> CSTATE IMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i498: "(HSTATE InvalidM T \<and> nextReqIs RdOwn T 0 \<longrightarrow> dthdatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i499: "(HSTATE InvalidM T \<and> nextReqIs RdOwn T 1 \<longrightarrow> dthdatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i500: "(CSTATE SIA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i501: "(CSTATE SIA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i502: "(CSTATE SIA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i503: "(CSTATE SIA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i504: "(CSTATE SIA T 0 \<and> nextSnoopIs SnpInv T 0 \<and> CXL_SPG_used T 0 \<longrightarrow> (nextReqIs CleanEvict T 0 \<or> nextReqIs CleanEvictNoData T 0 )) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i505: "(CSTATE SIA T 1 \<and> nextSnoopIs SnpInv T 1 \<and> CXL_SPG_used T 1 \<longrightarrow> (nextReqIs CleanEvict T 1 \<or> nextReqIs CleanEvictNoData T 1 )) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i506: "(CSTATE SIA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i507: "(CSTATE SIA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i508: "(CSTATE SMAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i509: "(CSTATE SMAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i510: "(HSTATE ID T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1 \<and> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i511: "(HSTATE ModifiedM T \<and> nextReqIs DirtyEvict T 0 \<longrightarrow> (\<not> CSTATE Modified T 0 \<or> \<not> CSTATE Modified T 1) \<and> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i512: "(HSTATE ModifiedM T \<and> nextReqIs DirtyEvict T 1 \<longrightarrow> (\<not> CSTATE Modified T 0 \<or> \<not> CSTATE Modified T 1) \<and> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i513: "(HSTATE ID T \<and> nextReqIs RdOwn T 0 \<longrightarrow> CSTATE IMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i514: "(HSTATE ID T \<and> nextReqIs RdOwn T 1 \<longrightarrow> CSTATE IMAD T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i515: "(CSTATE SMAD T 0 \<and> nextGOPending T 0\<longrightarrow> nextHTDDataPending T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i516: "(CSTATE SMAD T 1 \<and> nextGOPending T 1\<longrightarrow> nextHTDDataPending T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i517: "(C_msg_P_oppo SMAD nextGOPending (\<lambda>T i. \<not> nextSnoopPending T i) T)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i518: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> CSTATE SIAC T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i519: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> CSTATE SIAC T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i522: "(nextGOPendingIs GO_WritePull T 0 \<and> HSTATE InvalidM T \<longrightarrow> reqresps2 T = [] \<or> nextReqRespStateIs Invalid (reqresps2 T)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i523: "(nextGOPendingIs GO_WritePull T 1 \<and> HSTATE InvalidM T \<longrightarrow> reqresps1 T = [] \<or> nextReqRespStateIs Invalid (reqresps1 T)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i524: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> nextEvict T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i525: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> nextEvict T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i526: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 0 \<longrightarrow> nextEvict T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i527: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 1 \<longrightarrow> nextEvict T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i528: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> \<not> CSTATE ISDI T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i529: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> \<not> CSTATE ISDI T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i530: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 0 \<longrightarrow> \<not> CSTATE ISDI T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i531: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 1 \<longrightarrow> \<not> CSTATE ISDI T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i532: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> \<not> CSTATE MIA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i533: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i534: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 0 \<longrightarrow> \<not> CSTATE MIA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i535: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 1 \<longrightarrow> \<not> CSTATE MIA T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i536: "(CSTATE Shared T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> [] \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = [])) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i537: "(CSTATE Shared T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> [] \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = []))" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i538: "(nextReqIs DirtyEvict T 0 \<longrightarrow> nextEvict T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i539: "(nextReqIs DirtyEvict T 1 \<longrightarrow> nextEvict T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i540: "(nextReqIs DirtyEvict T 0 \<and> HSTATE InvalidM T \<longrightarrow> \<not> nextDTHDataFrom 1 T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i541: "(nextReqIs DirtyEvict T 1 \<and> HSTATE InvalidM T \<longrightarrow> \<not> nextDTHDataFrom 0 T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i542: "(nextReqIs DirtyEvict T 0 \<and> HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISDI T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i543: "(nextReqIs DirtyEvict T 1 \<and> HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISDI T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i544: "(nextReqIs DirtyEvict T 0 \<and> HSTATE InvalidM T \<longrightarrow> (reqresps2 T = [] \<or> nextReqRespStateIs Invalid (reqresps2 T))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i545: "(nextReqIs DirtyEvict T 1 \<and> HSTATE InvalidM T \<longrightarrow> (reqresps1 T = [] \<or> nextReqRespStateIs Invalid (reqresps1 T)))" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i546: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not>(CSTATE ISA T 1 \<or> nextHTDDataPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i547: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not>(CSTATE ISA T 0 \<or> nextHTDDataPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i548: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T \<and> CSTATE IMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i549: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T \<and> CSTATE IMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i550: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T \<and> CSTATE ISAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i551: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T \<and> CSTATE ISAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i552: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i553: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i554: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i555: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i556: "((nextReqIs CleanEvictNoData T 0 \<or> nextReqIs CleanEvict T 0) \<longrightarrow> (CSTATE SIA T 0 \<or> CSTATE IIA T 0 \<or> CSTATE SIAC T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i557: "((nextReqIs CleanEvictNoData T 1 \<or> nextReqIs CleanEvict T 1) \<longrightarrow> (CSTATE SIA T 1 \<or> CSTATE IIA T 1 \<or> CSTATE SIAC T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i558: "((CSTATE Shared T 0 \<or> CSTATE Shared T 1) \<longrightarrow> \<not> HSTATE MD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i559: "(CSTATE Shared T 0 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i560: "(CSTATE Shared T 1 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i561: "((nextReqIs CleanEvictNoData T 0 \<or> nextReqIs CleanEvict T 0) \<longrightarrow> nextEvict T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i562: "((nextReqIs CleanEvictNoData T 1 \<or> nextReqIs CleanEvict T 1) \<longrightarrow> nextEvict T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i563: "((nextReqIs CleanEvictNoData T 0 \<or> nextReqIs CleanEvict T 0) \<longrightarrow> \<not> CSTATE ISDI T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i564: "((nextReqIs CleanEvictNoData T 1 \<or> nextReqIs CleanEvict T 1) \<longrightarrow> \<not> CSTATE ISDI T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i565: "((nextReqIs CleanEvictNoData T 0 \<or> nextReqIs CleanEvict T 0) \<longrightarrow> \<not> CSTATE MIA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i566: "((nextReqIs CleanEvictNoData T 1 \<or> nextReqIs CleanEvict T 1) \<longrightarrow> \<not> CSTATE MIA T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i567: "(CSTATE IIA T 0 \<and> HSTATE SharedM T \<longrightarrow> reqs2 T = [] \<or> nextReqIs CleanEvict T 1 \<or> nextReqIs CleanEvictNoData T 1 \<or> nextReqIs RdOwn T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i568: "(CSTATE IIA T 1 \<and> HSTATE SharedM T \<longrightarrow> reqs1 T = [] \<or> nextReqIs CleanEvict T 0 \<or> nextReqIs CleanEvictNoData T 0 \<or> nextReqIs RdOwn T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i569: "(CSTATE IIA T 0 \<and> HSTATE SharedM T \<longrightarrow> CSTATE Shared T 1 \<or> CSTATE SIA T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE ISAD T 1 \<and> nextGOPending T 1 \<and> nextHTDDataPending T 1 \<or> CSTATE ISA T 1 \<and> nextGOPending T 1 \<or> CSTATE ISD T 1 \<and> nextHTDDataPending T 1 \<or> CSTATE SIAC T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i570: "(CSTATE IIA T 1 \<and> HSTATE SharedM T \<longrightarrow> CSTATE Shared T 0 \<or> CSTATE SIA T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE ISAD T 0 \<and> nextGOPending T 0 \<and> nextHTDDataPending T 0 \<or> CSTATE ISA T 0 \<and> nextGOPending T 0 \<or> CSTATE ISD T 0 \<and> nextHTDDataPending T 0 \<or> CSTATE SIAC T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i571: "(CSTATE IIA T 1 \<and> HSTATE InvalidM T \<and> nextReqIs RdShared T 0 \<longrightarrow> CSTATE ISAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i572: "(CSTATE IIA T 0 \<and> HSTATE InvalidM T \<and> nextReqIs RdShared T 1 \<longrightarrow> CSTATE ISAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i573: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0 \<and>  \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i574: "(HSTATE InvalidM T \<longrightarrow> \<not> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0)) \<and> \<not> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i575: "(nextGOPendingIs GO_WritePull T 0 \<or> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> HSTATE InvalidM T)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i576: "(CSTATE MIA T 0 \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> \<not> nextHTDDataPending T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i577: "(CSTATE MIA T 1 \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> \<not> nextHTDDataPending T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i578: "(nextGOPendingIs GO_WritePull T 0 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i579: "(nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i580: "((CSTATE IMA T 0 \<or> CSTATE SMA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0) \<longrightarrow> (HSTATE MA T \<or> HSTATE ModifiedM T \<or> HSTATE MB T \<or> HSTATE MAD T \<or> HSTATE SAD T)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i581: "((CSTATE IMA T 1 \<or> CSTATE SMA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1) \<longrightarrow> (HSTATE MA T \<or> HSTATE ModifiedM T \<or> HSTATE MB T \<or> HSTATE MAD T \<or> HSTATE SAD T))" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i582: "(CSTATE MIA T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i583: "(CSTATE MIA T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> htddatas2 T = [])" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i584: "(CSTATE MIA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i585: "(CSTATE MIA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i586: "(CSTATE MIA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i587: "(CSTATE MIA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i588: "((HSTATE InvalidM T \<or> HSTATE SharedM T \<or> HSTATE ModifiedM T) \<longrightarrow> (\<not> nextGOPendingIs GO_WritePull T 0) \<and> (\<not> nextGOPendingIs GO_WritePull T 1))" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i589: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePullDrop T 0 \<and> CSTATE IIA T 1 \<longrightarrow> HSTATE InvalidM T \<or> HSTATE IB T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i590: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePullDrop T 1 \<and> CSTATE IIA T 0 \<longrightarrow> HSTATE InvalidM T \<or> HSTATE IB T)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i591: "(HSTATE InvalidM T \<longrightarrow> dthdatas1 T = [] \<and> dthdatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i592: "(CSTATE Invalid T 0 \<longrightarrow> \<not> nextSnoopIs SnpInv T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i593: "(CSTATE Invalid T 1 \<longrightarrow> \<not> nextSnoopIs SnpInv T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i594: "(CSTATE Modified T 0 \<longrightarrow> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i595: "(CSTATE Modified T 1 \<longrightarrow> \<not> CSTATE MIA T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i596: "(HSTATE MA T \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> [] \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i597: "(HSTATE MA T \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> [] \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i598: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i599: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i600: "(HSTATE MA T \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i601: "(HSTATE MA T \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i602: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE ISD T 0 \<and> \<not> CSTATE ISA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i603: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE ISD T 1 \<and> \<not> CSTATE ISA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i604: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE SMD T 0 \<and> \<not> CSTATE SMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i605: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE SMD T 1 \<and> \<not> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i606: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE IMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i607: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE IMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i608: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i609: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i610: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE SMAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i611: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i612: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i613: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE SMAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i614: "(CSTATE ISD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> []) \<or> ((CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = [])) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i615: "(CSTATE ISD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> []) \<or> ((CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = [])) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i616: "(CSTATE ISA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> []) \<or> ((CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = [])) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i617: "(CSTATE ISA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> []) \<or> ((CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = [])) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i618: "(CSTATE ISAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> []) \<or> ((CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = [])) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i619: "(CSTATE ISAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> []) \<or> ((CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = [])) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i620: "(CSTATE IMAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i621: "(CSTATE IMAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i622: "(CSTATE IMD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i623: "(CSTATE IMD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i624: "(CSTATE IMA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i625: "(CSTATE IMA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i626: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i627: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i628: "(CSTATE SMD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i629: "(CSTATE SMD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i630: "(CSTATE SMA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i631: "(CSTATE SMA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i632: "(CSTATE ISD T 0 \<or> CSTATE ISA T 0 \<longrightarrow> \<not> HSTATE MD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i633: "(CSTATE ISD T 1 \<or> CSTATE ISA T 1 \<longrightarrow> \<not> HSTATE MD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i634: "(CSTATE ISAD T 0 \<and> (nextHTDDataPending T 0 \<or> nextGOPending T 0) \<longrightarrow> \<not> HSTATE MD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i635: "(CSTATE ISAD T 1 \<and> (nextHTDDataPending T 1 \<or> nextGOPending T 1) \<longrightarrow> \<not> HSTATE MD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i636: "(CSTATE ISD T 0 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i637: "(CSTATE ISD T 1 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i638: "(CSTATE ISA T 0 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i639: "(CSTATE ISA T 1 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i640: "(CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i641: "(CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> nextGOPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i642: "(CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> CSTATE ISA T 1 \<and> \<not> nextHTDDataPending T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i643: "(CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> nextHTDDataPending T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i644: "(CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i645: "(CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> CSTATE Shared T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i646: "(CSTATE ISA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i647: "(CSTATE ISA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i648: "(CSTATE ISAD T 0 \<and> nextGOPending T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i649: "(CSTATE ISAD T 1 \<and> nextGOPending T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i650: "(CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i651: "(CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i652: "(HSTATE SharedM T \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i653: "(HSTATE SharedM T \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i654: "(HSTATE SharedM T \<longrightarrow> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i655: "(HSTATE SharedM T \<longrightarrow> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i656: "(HSTATE SharedM T \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i657: "(HSTATE SharedM T \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i658: "(HSTATE SharedM T \<longrightarrow> \<not> (CSTATE SMAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i659: "(HSTATE SharedM T \<longrightarrow> \<not> (CSTATE SMAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i660: "(HSTATE SharedM T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i661: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i662: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISD T 0 \<and> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i663: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISD T 1 \<and> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i664: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> nextGOPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i665: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i666: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> nextGOPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i667: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i668: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE SMAD T 0 \<and> nextGOPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i669: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE SMAD T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i670: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i671: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISA T 1 \<and> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i672: "(HSTATE InvalidM T \<longrightarrow> \<not> nextHTDDataPending T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i673: "(HSTATE InvalidM T \<longrightarrow> \<not> nextHTDDataPending T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i674: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE Shared T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i675: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i676: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE Modified T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i677: "(CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> snpresps2 T = [] \<and> reqresps1 T = [] \<and> snps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i678: "(CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> snpresps1 T = [] \<and> reqresps2 T = [] \<and> snps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i679: "(CSTATE IMAD T 0 \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<longrightarrow> snpresps2 T = [] \<and> snps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i680: "(CSTATE IMAD T 1 \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<longrightarrow> snpresps1 T = [] \<and> snps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i681: "(CSTATE IMD T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> CSTATE ISAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i682: "(CSTATE IMD T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> CSTATE ISAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i683: "(CSTATE IMA T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> CSTATE ISAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i684: "(CSTATE IMA T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> CSTATE ISAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i685: "(CSTATE IMAD T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> CSTATE ISAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i686: "(CSTATE IMAD T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> CSTATE ISAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i687: "(CSTATE IMD T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i688: "(CSTATE IMD T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i689: "(CSTATE IMA T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i690: "(CSTATE IMA T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i691: "(CSTATE IMAD T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i692: "(CSTATE IMD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i693: "(CSTATE IMD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i694: "(CSTATE IMAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i695: "(CSTATE IMAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i696: "(CSTATE IMA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i697: "(CSTATE IMA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i698: "(CSTATE IMAD T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i699: "(HSTATE IB T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1 \<and> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i700: "(HSTATE IB T \<and> nextReqIs RdOwn T 0 \<longrightarrow> CSTATE IMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i701: "(HSTATE IB T \<and> nextReqIs RdOwn T 1 \<longrightarrow> CSTATE IMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i702: "(HSTATE SB T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i703: "(HSTATE SB T \<longrightarrow> length (dthdatas1 T) \<le> 1 \<and> length (dthdatas2 T) \<le> 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i704: "(HSTATE IB T \<longrightarrow> length (dthdatas1 T) \<le> 1 \<and> length (dthdatas2 T) \<le> 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i705: "(HSTATE SB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE IIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i706: "(HSTATE SB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE IIA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i707: "(HSTATE MB T \<longrightarrow> length (dthdatas1 T) \<le> 1 \<and> length (dthdatas2 T) \<le> 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i708: "(HSTATE SB T \<and> nextDTHDataFrom 0 T \<longrightarrow> dthdatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i709: "(HSTATE SB T \<and> nextDTHDataFrom 1 T \<longrightarrow> dthdatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i710: "(HSTATE IB T \<and> nextDTHDataFrom 0 T \<longrightarrow> dthdatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i711: "(HSTATE IB T \<and> nextDTHDataFrom 1 T \<longrightarrow> dthdatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i712: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> dthdatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i713: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> dthdatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i714: "(HSTATE SB T \<longrightarrow> snps2 T = [] \<and> snps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i715: "(HSTATE IB T \<longrightarrow> snps2 T = [] \<and> snps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i716: "(HSTATE MB T \<longrightarrow> snps2 T = [] \<and> snps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i717: "(HSTATE SB T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i718: "(HSTATE SB T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i719: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i720: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i721: "(HSTATE IB T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i722: "(HSTATE IB T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i723: "(HSTATE SB T \<longrightarrow> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i724: "(HSTATE SB T \<longrightarrow> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i725: "(HSTATE IB T \<longrightarrow> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i726: "(HSTATE IB T \<longrightarrow> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i727: "(HSTATE SharedM T \<and> lastSharer T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i728: "(HSTATE SharedM T \<and> lastSharer T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i729: "(HSTATE SharedM T \<and> lastSharer T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i730: "(HSTATE SharedM T \<and> lastSharer T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> nextGOPending T 0))" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i731: "(CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> snpresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i732: "(CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> snpresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i733: "(HSTATE SAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> snpresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i734: "(HSTATE SAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> snpresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i735: "(CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i736: "(CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i737: "(HSTATE ModifiedM T \<longrightarrow> (\<not> CSTATE SIA T 0 \<or> nextGOPendingIs GO_WritePullDrop T 0) \<and> (\<not> CSTATE SIA T 1 \<or> nextGOPendingIs GO_WritePullDrop T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i738: "(HSTATE MA T \<and> snpresps1 T \<noteq> [] \<longrightarrow> \<not> CSTATE SIA T 0 \<and> \<not> CSTATE SIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i739: "(HSTATE MA T \<and> snpresps2 T \<noteq> [] \<longrightarrow> \<not> CSTATE SIA T 0 \<and> \<not> CSTATE SIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i740: "(HSTATE MD T \<longrightarrow> \<not> CSTATE SIA T 0 \<and> \<not> CSTATE SIA T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i741: "(CSTATE MIA T 0 \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i742: "(CSTATE MIA T 1 \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> nextGOPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i743: "(CSTATE MIA T 0 \<longrightarrow> \<not> (CSTATE SMAD T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i744: "(CSTATE MIA T 1 \<longrightarrow> \<not> (CSTATE SMAD T 0 \<and> nextGOPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i745: "(HSTATE ModifiedM T \<and> nextReqIs RdOwn T 0 \<longrightarrow> CSTATE IMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i746: "(HSTATE ModifiedM T \<and> nextReqIs RdOwn T 1 \<longrightarrow> CSTATE IMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i747: "(HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i748: "(HSTATE MD T \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i749: "(HSTATE MA T \<and> snpresps1 T \<noteq> [] \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i750: "(HSTATE MA T \<and> snpresps2 T \<noteq> [] \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i751: "(CSTATE MIA T 0 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE SMA T 1 \<and> \<not> CSTATE SMD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i752: "(CSTATE MIA T 1 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE SMA T 0 \<and> \<not> CSTATE SMD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i753: "(CSTATE MIA T 0 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE IMD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i754: "(CSTATE MIA T 1 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE IMD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i755: "(CSTATE MIA T 0 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i756: "(CSTATE MIA T 1 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i757: "(CSTATE MIA T 0 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE SMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i758: "(CSTATE MIA T 1 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE SMAD T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i759: "(CSTATE IMD T 1 \<longrightarrow> reqresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i760: "(CSTATE IMD T 0 \<longrightarrow> reqresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i761: "(HSTATE IB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i762: "(HSTATE IB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i763: "(HSTATE IB T \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i764: "(HSTATE IB T \<longrightarrow> \<not> CSTATE ISA T 1 \<and> \<not> CSTATE ISD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i765: "(HSTATE IB T \<longrightarrow> \<not> CSTATE SMA T 0 \<and> \<not> CSTATE SMD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i766: "(HSTATE IB T \<longrightarrow> \<not> CSTATE SMA T 1 \<and> \<not> CSTATE SMD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i767: "(HSTATE IB T \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE IMD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i768: "(HSTATE IB T \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE IMD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i769: "(HSTATE IB T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i770: "(HSTATE IB T \<longrightarrow> \<not> nextHTDDataPending T 0 \<and> \<not> nextHTDDataPending T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i771: "(HSTATE ID T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i772: "(HSTATE ID T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i773: "(HSTATE ID T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i774: "(HSTATE ID T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i775: "(HSTATE ID T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextHTDDataPending T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i776: "(HSTATE ID T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextHTDDataPending T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i777: "(HSTATE ModifiedM T \<and> nextReqIs RdShared T 0 \<longrightarrow> \<not> CSTATE ISDI T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i778: "(HSTATE ModifiedM T \<and> nextReqIs RdShared T 1 \<longrightarrow> \<not> CSTATE ISDI T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i779: "(HSTATE SD T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i780: "(HSTATE SAD T \<and> snpresps1 T \<noteq> [] \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i781: "(HSTATE SAD T \<and> snpresps2 T \<noteq> [] \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i782: "(HSTATE MD T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i783: "(snpresps1 T \<noteq> [] \<and> HSTATE MAD T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i784: "(snpresps2 T \<noteq> [] \<and> HSTATE MAD T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i785: "(CSTATE IMD T 0 \<and> HSTATE MD T \<longrightarrow> snpresps1 T = [] \<and> snps1 T = [] \<and> reqresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i786: "(CSTATE IMD T 1 \<and> HSTATE MD T \<longrightarrow> snpresps2 T = [] \<and> snps2 T = [] \<and> reqresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i787: "(nextDTHDataFrom 0 T \<and> HSTATE MD T \<and> nextReqIs RdOwn T 0 \<longrightarrow> CSTATE IMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i788: "(nextDTHDataFrom 1 T \<and> HSTATE MD T \<and> nextReqIs RdOwn T 1 \<longrightarrow> CSTATE IMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i789: "(HSTATE SAD T \<and> nextSnpRespIs RspSFwdM T 0 \<longrightarrow> \<not> CSTATE Modified T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i790: "(HSTATE SAD T \<and> nextSnpRespIs RspSFwdM T 1 \<longrightarrow> \<not> CSTATE Modified T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i791: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE Modified T 1 \<and> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i792: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Shared T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i793: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> dthdatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i794: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> dthdatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i795: "(HSTATE SA T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i796: "(HSTATE SharedM T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i797: "(CSTATE IIA T 0 \<and> HSTATE SA T \<longrightarrow> CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<or> CSTATE ISA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i798: "(CSTATE IIA T 1 \<and> HSTATE SA T \<longrightarrow> CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<or> CSTATE ISA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i799: "(HSTATE MA T \<and> snpresps1 T \<noteq> [] \<longrightarrow> htddatas1 T = [] \<or> CSTATE ISDI T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i800: "(HSTATE MA T \<and> snpresps2 T \<noteq> [] \<longrightarrow> htddatas2 T = [] \<or> CSTATE ISDI T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i801: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> (CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i802: "(HSTATE MB T \<longrightarrow> \<not> CSTATE ISD T 0 \<and> \<not> CSTATE ISD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i803: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> CSTATE Invalid T 0 \<or> CSTATE ISAD T 0 \<or> CSTATE IMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i804: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> CSTATE Invalid T 1 \<or> CSTATE ISAD T 1 \<or> CSTATE IMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i805: "(HSTATE MB T \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i806: "(HSTATE MB T \<longrightarrow> snpresps1 T = [] \<and> snpresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i807: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i808: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i809: "(HSTATE MB T \<longrightarrow> \<not> CSTATE SIA T 0 \<and> \<not> CSTATE SIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i810: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextReqIs RdOwn T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i811: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextReqIs RdOwn T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i812: "(HSTATE MB T \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i813: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<and> HSTATE SB T \<longrightarrow> \<not> CSTATE IIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i814: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<and> HSTATE SB T \<longrightarrow> \<not> CSTATE IIA T 0)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i815: "(HSTATE IB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i816: "(HSTATE IB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i817: "(HSTATE SB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i818: "(HSTATE SB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i819: "(HSTATE SB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i820: "(HSTATE SB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i821: "(HSTATE ID T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i822: "(HSTATE ID T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i823: "(CSTATE Modified T 0 \<longrightarrow> \<not> nextReqIs RdOwn T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i824: "(CSTATE Modified T 1 \<longrightarrow> \<not> nextReqIs RdOwn T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i825: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE ISD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i826: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE ISD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i827: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i828: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> nextGOPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i829: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> (CSTATE IMA T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i830: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> (CSTATE IMA T 0 \<and> nextGOPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i831: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> (CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i832: "(HSTATE MB T \<and> CSTATE IIA T 0 \<longrightarrow> (CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i833: "(HSTATE MB T \<and> CSTATE IIA T 1 \<longrightarrow> (CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i883: "length (dthdatas1 T) \<le> 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i884: "length (dthdatas2 T) \<le> 1" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i834: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> (CSTATE ISA T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i835: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> (CSTATE ISA T 0 \<and> nextGOPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i836: "((CSTATE ISAD T 0 \<and> nextGOPending T 0) \<or> CSTATE ISA T 0 \<or> ( nextHTDDataPending T 0) \<or> CSTATE Shared T 0 \<longrightarrow> \<not> (CSTATE IMA T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i837: "((CSTATE ISAD T 1 \<and> nextGOPending T 1) \<or> CSTATE ISA T 1 \<or> ( nextHTDDataPending T 1) \<or> CSTATE Shared T 1 \<longrightarrow> \<not> (CSTATE IMA T 0 \<and> nextGOPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i838: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> snps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i839: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> snps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i840: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE MIA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i841: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i842: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE SIA T 0 \<and> \<not> CSTATE SIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i843: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE SIA T 1 \<and> \<not> CSTATE SIA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i844: "(CSTATE Modified T 0 \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> (htddatas2 T = [] \<or> CSTATE ISDI T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i845: "(CSTATE Modified T 1 \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> (htddatas1 T = [] \<or> CSTATE ISDI T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i846: "(CSTATE Modified T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i847: "(CSTATE Modified T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i848: "(CSTATE Modified T 0 \<longrightarrow> snpresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i849: "(CSTATE Modified T 1 \<longrightarrow> snpresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i850: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> nextGOPending T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i851: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> nextGOPending T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i852: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE ISA T 1 \<and> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i853: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE Shared T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i854: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i855: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i856: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE IMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i857: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE IMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i858: "(CSTATE Invalid T 0 \<longrightarrow> snps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i859: "(CSTATE Invalid T 1 \<longrightarrow> snps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i860: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> CSTATE ISD T 1 \<or> CSTATE ISAD T 1 \<and> nextGOPending T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i861: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> CSTATE ISD T 0 \<or> CSTATE ISAD T 0 \<and> nextGOPending T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i862: "(HSTATE SAD T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i863: "(HSTATE SAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i864: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<and> nextHTDDataPending T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T \<and> CSTATE ISAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i865: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<and> nextHTDDataPending T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T \<and> CSTATE ISAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i866: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i867: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i868: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i869: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i870: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<and> HSTATE IB T \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i871: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<and> HSTATE IB T \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i872: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<and> HSTATE SB T \<longrightarrow> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i873: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<and> HSTATE SB T \<longrightarrow> \<not> CSTATE MIA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i874: "(HSTATE InvalidM T \<and> nextReqIs DirtyEvict T 0 \<longrightarrow> CSTATE IIA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i875: "(HSTATE InvalidM T \<and> nextReqIs DirtyEvict T 1 \<longrightarrow> CSTATE IIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i876: "(HSTATE InvalidM T \<longrightarrow> (\<not> CSTATE SIA T 0 \<or> nextGOPendingIs GO_WritePullDrop T 0) \<and> (\<not> CSTATE SIA T 1 \<or> nextGOPendingIs GO_WritePullDrop T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i877: "(HSTATE MA T  \<and> nextSnpRespIs RspIFwdM T 0 \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i878: "(HSTATE MA T  \<and> nextSnpRespIs RspIFwdM T 1 \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i879: "(HSTATE IB T \<and> CSTATE IIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i880: "(HSTATE IB T \<and> CSTATE IIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i881: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i882: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i883: "(HSTATE MA T \<and> snpresps1 T \<noteq> [] \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i884: "(HSTATE MA T \<and> snpresps2 T \<noteq> [] \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1)  " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i885: "(CSTATE IMAD T 0 \<and> nextGOPending T 0 \<and> HSTATE MD T \<longrightarrow> snpresps1 T = [] \<and> snps1 T = [] \<and> reqresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i886: "(CSTATE IMAD T 1 \<and> nextGOPending T 1 \<and> HSTATE MD T \<longrightarrow> snpresps2 T = [] \<and> snps2 T = [] \<and> reqresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i887: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> (htddatas2 T = [] \<or> CSTATE ISDI T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i888: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> (htddatas1 T = [] \<or> CSTATE ISDI T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i889: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> (htddatas2 T = [] \<or> CSTATE ISDI T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i890: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> (htddatas1 T = [] \<or> CSTATE ISDI T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i891: "(CSTATE Modified T 0 \<longrightarrow> dthdatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i892: "(CSTATE Modified T 1 \<longrightarrow> dthdatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i893: "(nextSnpRespIs RspIHitSE T 0 \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i894: "(nextSnpRespIs RspIHitSE T 1 \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i895: "(CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i896: "(CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i897: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i898: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i899: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i900: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i901: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i902: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i903: "(CSTATE IMAD T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i904: "(CSTATE IMAD T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i905: "(HSTATE MD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE SMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i906: "(HSTATE MD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE SMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i907: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i908: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i909: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE SMAD T 1 \<and> \<not> CSTATE SMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i910: "(HSTATE IB T \<longrightarrow> \<not> CSTATE SMAD T 1 \<and> \<not> CSTATE SMAD T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i911: "(HSTATE ID T \<longrightarrow> \<not> CSTATE SMAD T 1 \<and> \<not> CSTATE SMAD T 0)  " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i912: "(HSTATE MA T \<and> nextSnpRespIs RspIHitSE T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i913: "(HSTATE MA T \<and> nextSnpRespIs RspIHitSE T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i914: "(CSTATE Modified T 0 \<longrightarrow> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i915: "(CSTATE Modified T 1 \<longrightarrow> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i916: "(HSTATE ModifiedM T \<longrightarrow> snps1 T = [] \<and> snps2 T = [])  " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i917: "(CSTATE SMAD T 0 \<and> nextHTDDataPending T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i918: "(CSTATE SMAD T 1 \<and> nextHTDDataPending T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i919: "(CSTATE SMAD T 1 \<and> HSTATE MA T \<and> nextSnpRespIs RspIFwdM T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i920: "(CSTATE SMAD T 0 \<and> HSTATE MA T \<and> nextSnpRespIs RspIFwdM T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i921: "(CSTATE SIAC T 0 \<and> HSTATE SA T \<longrightarrow> \<not> CSTATE Modified T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i922: "(CSTATE SIAC T 1 \<and> HSTATE SA T \<longrightarrow> \<not> CSTATE Modified T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i923: "(CSTATE SIAC T 0 \<longrightarrow> \<not> nextHTDDataPending T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i924: "(CSTATE SIAC T 1 \<longrightarrow> \<not> nextHTDDataPending T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i925: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) --> snps2 T = [] \<and> snpresps2 T = [] \<and> htddatas1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i926: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) --> snps1 T = [] \<and> snpresps1 T = [] \<and> htddatas2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i927: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i928: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i929: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) \<and> HSTATE MD T \<longrightarrow> dthdatas1 T \<noteq> []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i930: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) \<and> HSTATE MD T \<longrightarrow> dthdatas2 T \<noteq> []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i931: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) \<and> HSTATE MA T \<longrightarrow>(CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i932: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) \<and> HSTATE MA T \<longrightarrow>(CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i933: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) --> snps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i934: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) --> snps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i935: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) --> reqs1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i936: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) --> reqs2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i937: "(HSTATE MA T \<and> nextSnpRespIs RspIFwdM T 0 \<longrightarrow> \<not> nextHTDDataPending T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i938: "(HSTATE MA T \<and> nextSnpRespIs RspIFwdM T 1 \<longrightarrow> \<not> nextHTDDataPending T 1)" by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i939: "(HSTATE SB T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i940: "(nextReqIs CleanEvictNoData T 0 \<longrightarrow> CSTATE SIAC T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i941: "(nextReqIs CleanEvictNoData T 1 \<longrightarrow> CSTATE SIAC T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i942: "(nextSnpRespIs RspIHitSE T 0 \<longrightarrow> \<not> nextDTHDataFrom 0 T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i943: "(nextSnpRespIs RspIHitSE T 1 \<longrightarrow> \<not> nextDTHDataFrom 1 T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i944: "(nextSnpRespIs RspIFwdM T 0 \<longrightarrow> \<not> nextReqIs CleanEvictNoData T 0) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i945: "(nextSnpRespIs RspIFwdM T 1 \<longrightarrow> \<not> nextReqIs CleanEvictNoData T 1)  " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i946: "(CSTATE SMA T 0 \<and> nextSnoopIs SnpData T 0 \<and> nextGOPending T 0 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i947: "(CSTATE SMA T 1 \<and> nextSnoopIs SnpData T 1 \<and> nextGOPending T 1 \<longrightarrow> HSTATE SAD T) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i948: "((CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePullDrop T 0) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or>(CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i949: "((CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePullDrop T 1) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or>(CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0)   " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i950: "((CSTATE SIAC T 0 \<and> nextGOPendingIs GO T 0 \<and> nextGOPendingState Invalid T 0 \<and> \<not> CSTATE IIA T 1 \<and> GTS T 1) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or>(CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i951: "((CSTATE SIAC T 1 \<and> nextGOPendingIs GO T 1 \<and> nextGOPendingState Invalid T 1 \<and> \<not> CSTATE IIA T 0 \<and> GTS T 0) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or>(CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0)   " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i952: "((CSTATE SIAC T 0 \<and> nextGOPendingIs GO T 0 \<and> nextGOPendingState Invalid T 0 \<and> \<not> CSTATE IIA T 1 \<and> GTS T 1) \<and> HSTATE MD T \<longrightarrow> dthdatas1 T \<noteq> []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i953: "((CSTATE SIAC T 1 \<and> nextGOPendingIs GO T 1 \<and> nextGOPendingState Invalid T 1 \<and> \<not> CSTATE IIA T 0 \<and> GTS T 0) \<and> HSTATE MD T \<longrightarrow> dthdatas2 T \<noteq> [])  " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i954: "((CSTATE SIAC T 0 \<and> nextGOPendingIs GO T 0 \<and> nextGOPendingState Invalid T 0 \<and> \<not> CSTATE IIA T 1 \<and> GTS T 1) \<and> HSTATE MA T \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i955: "((CSTATE SIAC T 1 \<and> nextGOPendingIs GO T 1 \<and> nextGOPendingState Invalid T 1 \<and> \<not> CSTATE IIA T 0 \<and> GTS T 0) \<and> HSTATE MA T \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i956: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> snps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i957: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> snps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i958: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps1 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i959: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps2 T = []) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i960: "(HSTATE ID T \<and> nextDTHDataFrom 0 T \<longrightarrow> (\<not> CSTATE SIA T 1 \<or> nextGOPendingIs GO_WritePullDrop T 1) ) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i961: "(HSTATE ID T \<and> nextDTHDataFrom 1 T \<longrightarrow> (\<not> CSTATE SIA T 0 \<or> nextGOPendingIs GO_WritePullDrop T 0) ) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i962: "(CSTATE MIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<and> HSTATE ID T \<longrightarrow> (\<not> CSTATE SIA T 1 \<or> nextGOPendingIs GO_WritePullDrop T 1)) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i963: "(CSTATE MIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<and> HSTATE ID T \<longrightarrow> (\<not> CSTATE SIA T 0 \<or> nextGOPendingIs GO_WritePullDrop T 0))  " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i964: "(HSTATE SAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) " by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)





(*BigHeaderEnds*)





  have i225: " dthdatas1 T \<noteq> []"
 using i2x by auto

 




 have i201: " HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])" 
   
   
   
   using HostIDData_HSTATE 

   by blast
   
 

  have i213: "  ( snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) ) = snps2 T" 
 
 by simp
  have i214: " snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = snpresps2 T " 
 
 using snpresps2_HostIDData by blast
  have i2150: "htddatas1 T = htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])" 
 by simp


  have aux7062: "\<not>CSTATE SIA (  T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
 
 by (smt (verit) CSTATE_different1 CSTATE_general_rule_2_0 MESI_State.distinct(175) i6x)


 







  have i224: "\<not>HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
 




 

 using HOST_State.distinct(5) HSTATE_def i201 by presburger





  have i226: "\<not> GTS T 1"
 
 by (simp add: i225)


   have aux_r33: "HSTATE ID T"
  
  using i1x by auto
   have aux_r33_2: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
  
  using i201 by blast
   have aux_r33_3: "\<not> (CSTATE IIA (  T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and>
  nextGOPendingIs GO_WritePullDrop (  T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
  
  using i225 i35 by force

  have aux346: " \<not> (CSTATE IMAD T 1 \<and> nextGOPending T 1)"
 
 by (metis HOST_State.distinct(13) HOST_State.distinct(145) HOST_State.distinct(225) HOST_State.distinct(229) HSTATE_invariant3 assms i346)
  have aux_dthdatas_empty: "dthdatas1 (  T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
 
 by (smt (verit) dthdatas1_HostIDData i110)




(* ReplaceFrom *)

  show ?thesis
unfolding SWMR_state_machine_def


proof (intro conjI)
  show goal1: "SWMR ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_various_forms1 CSTATE_various_forms6 HostIDData'_devcache_invariant1 HostIDData'_devcache_invariant2 MESI_State.distinct(95) assms i493 i510) done
  show goal2: "C_msg_P_oppo ISD nextHTDDataPending (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510 i603) done
  show goal3: "H_msg_P_same SD nextDTHDataPending (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal4: "H_msg_P_same SAD nextDTHDataPending (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal5: "C_msg_P_oppo ISAD nextGOPending (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510 i611 nextGOPending_HostIDData) done
  show goal6: "H_msg_P_same SharedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal7: "H_msg_P_oppo SharedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal8: "H_msg_P_same ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) i224) done
  show goal9: "H_msg_P_oppo ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextDTHDataPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) i224) done
  show goal10: "H_msg_P_oppo ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextSnpRespIs RspIFwdM T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) i224) done
  show goal11: "H_msg_P_same ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextSnpRespIs RspIFwdM T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) i224) done
  show goal12: "C_H_state IMAD (nextReqIs RdOwn) Modified SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i494 i510 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal13: "C_H_state IMAD (nextReqIs RdOwn) Modified SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i225 i494 i891 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal14: "C_H_state IMAD (nextReqIs RdOwn) Modified SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i494 i510 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal15: "C_H_state Invalid nextStore Modified SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal16: "C_H_state Invalid nextStore Modified SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal17: "C_H_state Invalid nextStore Modified SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal18: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal19: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal20: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal21: "C_msg_not RdShared IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant MESI_State.distinct(147) MESI_State.distinct(343) MESI_State.distinct(355) assms) done
  show goal22: "C_msg_not RdShared Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 C_msg_not_def assms i26 nextReqIs_HostIDData_IMAD_invariant1 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal23: "H_msg_P_same ModifiedM (nextReqIs DirtyEvict) (\<lambda>T i. CSTATE MIA T i \<or> CSTATE IIA T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) i224) done
  show goal24: "C_msg_P_host MIA (nextGOPendingIs GO_WritePull) (\<lambda>T. \<not> HSTATE ModifiedM T) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) i224) done
  show goal25: "C_msg_P_same MIA (nextGOPendingIs GO_WritePull) nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal26: "C_msg_P_host MIA (nextGOPendingIs GO_WritePull) (HSTATE ID) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal27: "C_state_not MIA RdShared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms i132 i225) done
  show goal28: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (metis CSTATE_general_rule_2_0 CSTATE_inequality_invariant C_msg_P_same_def HostIDData_nextEvict_otherside HostIDData_nextGOPendingIs_otherside MESI_State.distinct(163) i32 i6x)done
  show goal29: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) aux_r33_3 i95 nextGOPendingIs_general_rule_2_1 nextReqIs_general_rule_2_0 nextReqIs_not_various_forms2 reqresps_empty_noGOPendingIs2) done
  show goal30: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextDTHDataPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (metis aux_r33_3 i192 i2x nextDTHDataFrom_def nextDTHDataPending_def nextDTHDataPending_other_rule_2_0 numeral_One zero_neq_numeral) done
  show goal31: "H_C_state_msg_same ModifiedM Modified (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) i224) done
  show goal32: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal33: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal34: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextDTHDataPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal35: "H_C_state_msg_oppo ModifiedM IIA (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) i224) done
  show goal36: "C_msg_P_host Shared (nextSnoopIs SnpInv) (HSTATE MA) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510 i592 nextSnoopIs_HostIDData) done
  show goal37: "C_msg_state RdShared ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 C_msg_not_def C_msg_state_def assms i26 i47 nextReqIs_HostIDData_IMAD_invariant1 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal38: "C_not_C_msg Modified ISAD nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510 i611 nextGOPending_HostIDData) done
  show goal39: "C_msg_P_same Invalid nextStore (\<lambda>T i. \<not> nextHTDDataPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) assms i190 i775 nextHTDDataPending_general_rule_2_0) done
  show goal40: "C_msg_P_same Invalid nextStore (\<lambda>T i. \<not> nextSnoopIs SnpInv T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i592 i593 nextSnoopIs_HostIDData) done
  show goal41: "C_msg_P_same ISAD nextGOPending (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i608 i611 nextGOPending_HostIDData) done
  show goal42: "snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i613old) done
  show goal43: "snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i858 snps1_HostIDData) done
  show goal44: "length (reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) assms i57 i68 reqs1_HostIDData) done
  show goal45: "length (reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) i58 reqs2_HostIDData) done
  show goal46: "length (snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) i213 i60) done
  show goal47: "length (snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) assms i381 i85 i858 snps1_HostIDData) done
  show goal48: "C_msg_P_same Shared (nextSnoopIs SnpInv) (\<lambda>T i. \<not> nextHTDDataPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510 i592 nextSnoopIs_HostIDData) done
  show goal49: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal50: "C_msg_P_oppo Invalid nextStore (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) assms i613old i615old i858 nextSnoopPending_def nextSnoopPending_empty_not_rule_2_1 nextSnoopPending_general_rule_2_0) done
  show goal51: "CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i2150 i381 i613old reqresps1_HostIDData2) done
  show goal52: "CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms htddatas2_HostIDData i317 i382 i614old i618old i858 reqresps2_HostIDData snpresps1_HostIDData snps1_HostIDData) done
  show goal53: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i2150 i381 i613old reqresps1_HostIDData2) done
  show goal54: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal55: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i2150 i613old) done
  show goal56: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms htddatas2_HostIDData i317 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal57: "CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i68 reqs1_HostIDData) done
  show goal58: "CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i69 reqs2_HostIDData) done
  show goal59: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i68 reqs1_HostIDData) done
  show goal60: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal61: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal62: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal63: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal64: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal65: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextLoad ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i602 i603) done
  show goal66: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextLoad ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603) done
  show goal67: "C_msg_P_host ISD (nextSnoopIs SnpInv) (HSTATE MA) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i592 i603 nextSnoopIs_HostIDData) done
  show goal68: "length (htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) i2150 i77) done
  show goal69: "length (htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) htddatas2_HostIDData i78) done
  show goal70: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i381 i613old reqresps1_HostIDData2) done
  show goal71: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603) done
  show goal72: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i68 reqs1_HostIDData) done
  show goal73: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603) done
  show goal74: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i68 reqs1_HostIDData) done
  show goal75: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i775 nextHTDDataPending_general_rule_2_0) done
  show goal76: "length (reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) assms i773 reqresps1_HostIDData) done
  show goal77: "length (reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) i86 reqresps2_HostIDData) done
  show goal78: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i858 snps1_HostIDData) done
  show goal79: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i613old) done
  show goal80: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i2150 i613old) done
  show goal81: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms htddatas2_HostIDData i317 i583 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal82: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i91 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal83: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i92 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal84: "C_msg_P_same MIA (nextReqIs DirtyEvict) nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) HostIDData_nextEvict_otherside i538 i539 nextReqIs_HostIDData_IMAD_invariant1 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal85: "reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 i68 reqs1_HostIDData) done
  show goal86: "reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty i95 reqresps2_HostIDData reqs2_HostIDData) done
  show goal87: "reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old) done
  show goal88: "reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty i99 reqs2_HostIDData snpresps1_HostIDData) done
  show goal89: "reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i2150 i613old) done
  show goal90: "reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty htddatas2_HostIDData i101 reqs2_HostIDData) done
  show goal91: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal92: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal93: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(135) HSTATE_invariant4 i201) done
  show goal94: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal95: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant MESI_State.distinct(163) assms) done
  show goal96: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(135) HSTATE_invariant4 i201) done
  show goal97: "reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 i68 reqs1_HostIDData) done
  show goal98: "reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty i95 reqresps2_HostIDData reqs2_HostIDData) done
  show goal99: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(109) HSTATE_invariant4 i201) done
  show goal100: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal101: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal102: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i2150 i613old) done
  show goal103: "length (dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) assms aux_dthdatas_empty i60 i613old) done
  show goal104: "length (dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) dthdatas2_HostIDData i111) done
  show goal105: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty nextDTHDataFrom_def) done
  show goal106: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal107: "HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(113) HSTATE_invariant4 i201) done
  show goal108: "HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(113) HSTATE_invariant4 i201) done
  show goal109: "nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnpRespIs RspIHitSE ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms) done
  show goal110: "nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnpRespIs RspIHitSE ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 HostIDData_nextSnpRespIs_otherside i457) done
  show goal111: "nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i453 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal112: "nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225 i454 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal113: "snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i317 i583 i614old i618old snpresps1_HostIDData) done
  show goal114: "snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old) done
  show goal115: "length (snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) i120 snpresps1_HostIDData) done
  show goal116: "length (snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) i121 i214) done
  show goal117: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(109) HOST_State.distinct(139) HSTATE_invariant3 i201) done
  show goal118: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextSnpRespIs_otherside assms aux_dthdatas_empty i214 i613old i615old nextSnpRespIs_invariant2) done
  show goal119: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(117) HSTATE_invariant4 i201) done
  show goal120: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(117) HSTATE_invariant4 i201) done
  show goal121: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(119) HSTATE_invariant4 i201) done
  show goal122: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old) done
  show goal123: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(109) HSTATE_invariant4 i201) done
  show goal124: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i2150 i613old) done
  show goal125: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> []"
    apply  (insert assms)(**)apply (smt (verit) assms i68 reqs1_HostIDData) done
  show goal126: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(121) HSTATE_invariant4 i201) done
  show goal127: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal128: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms dthdatas2_HostIDData i131) done
  show goal129: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal130: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms dthdatas2_HostIDData i133) done
  show goal131: "dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal132: "dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(111) HSTATE_invariant4 i201) done
  show goal133: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextLoad ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i602 i603) done
  show goal134: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextLoad ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603) done
  show goal135: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms aux_r33_3 i199 i613old nextSnoopPending_empty_not_rule_2_1) done
  show goal136: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i608 i611 nextGOPending_HostIDData) done
  show goal137: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i611 nextGOPending_HostIDData) done
  show goal138: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextLoad ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i145 nextLoad_general_rule_2_0) done
  show goal139: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextLoad ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 HostIDData_nextLoad i146) done
  show goal140: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal141: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (metis empty_no_snoop_variant2 i613old i6x snps2_general_rule_1_0 snps2_general_rule_2_0) done
  show goal142: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i613old) done
  show goal143: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i317 i583 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal144: "(CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal145: "(CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal146: "(CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(121) HSTATE_invariant4 i201) done
  show goal147: "(CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(121) HSTATE_invariant4 i201) done
  show goal148: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal149: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(109) HSTATE_invariant4 i201) done
  show goal150: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal151: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(109) HSTATE_invariant4 i201) done
  show goal152: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i2150 i613old) done
  show goal153: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(109) HSTATE_invariant4 i201) done
  show goal154: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i68 reqs1_HostIDData) done
  show goal155: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty nextDTHDataFrom_def) done
  show goal156: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i68 reqs1_HostIDData) done
  show goal157: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i494 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal158: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal159: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms dthdatas2_HostIDData i192 i225 nextDTHDataFrom_def) done
  show goal160: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal161: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal162: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal163: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(139) HOST_State.distinct(75) HSTATE_invariant3 i201) done
  show goal164: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i68 reqs1_HostIDData) done
  show goal165: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal166: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal167: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i201) done
  show goal168: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i201) done
  show goal169: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i190 nextHTDDataPending_general_rule_2_0) done
  show goal170: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i775 nextHTDDataPending_general_rule_2_0) done
  show goal171: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant MESI_State.distinct(163) assms) done
  show goal172: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(139) HOST_State.distinct(75) HSTATE_invariant3 i201) done
  show goal173: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms aux_dthdatas_empty dthdatas2_HostIDData i192 i225 nextDTHDataFrom_def) done
  show goal174: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal175: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal176: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal177: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(119) HSTATE_invariant4 i201) done
  show goal178: "nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i190 nextHTDDataPending_general_rule_2_0) done
  show goal179: "nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal180: "nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal181: "nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal182: "HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms aux_dthdatas_empty dthdatas2_HostIDData i192 i225 nextDTHDataFrom_def) done
  show goal183: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 i199) done
  show goal184: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (\<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> (\<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(109) HSTATE_invariant4 i201) done
  show goal185: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal186: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal187: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 i199) done
  show goal188: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 i199) done
  show goal189: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal190: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal191: "snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal192: "snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old) done
  show goal193: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i796 i821) done
  show goal194: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal195: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal196: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal197: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal198: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821 i862) done
  show goal199: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal200: "C_msg_P_same SIA (nextGOPendingIs GO_WritePull) nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms aux7062 i771) done
  show goal201: "C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms aux7062 i771) done
  show goal202: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal203: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms htddatas2_HostIDData i317 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal204: "C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms aux7062 i771) done
  show goal205: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal206: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal207: "C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextDTHDataPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms aux7062 i771) done
  show goal208: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal209: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal210: "C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    
    by (metis CSTATE_general_rule_2_0 C_msg_P_same_def DIRTYEVICT_COL_def HostIDData_nextEvict_otherside assms aux7062 i324 i960)show goal211: "C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_general_rule_2_0 aux7062 i1x i2x i95 i960 nextReqIs_general_rule_2_0 nextReqIs_not_various_forms2 reqresps_empty_noGOPendingIs2) done
  show goal212: "C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) assms aux7062 i613old nextSnoopPending_empty_not_rule_2_1) done
  show goal213: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) "
    apply  (insert assms)(**)apply (smt (verit) i201) done
  show goal214: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i201) done
  show goal215: "C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextDTHDataPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (metis CSTATE_general_rule_2_0 aux7062 i186 i189 i1x i225 i2x i328 i591 i708 i710 i960 nextDTHDataPending_def nextDTHDataPending_other_rule_2_0 numeral_One zero_neq_numeral) done
  show goal216: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal217: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i190 nextHTDDataPending_general_rule_2_0) done
  show goal218: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i775 nextHTDDataPending_general_rule_2_0) done
  show goal219: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) assms i775 nextHTDDataPending_general_rule_2_0) done
  show goal220: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) assms i775 nextHTDDataPending_general_rule_2_0) done
  show goal221: "C_not_C_msg Modified IMAD nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms aux346 i510 nextGOPending_HostIDData) done
  show goal222: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i225 i435 i574 nextGOPending_HostIDData) done
  show goal223: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextStore ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i339 nextStore_general_rule_2_0) done
  show goal224: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextStore ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i340 nextStore_general_rule_2_0) done
  show goal225: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i613old) done
  show goal226: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i317 i583 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal227: "snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal228: "snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old) done
  show goal229: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal230: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 aux346 nextGOPending_HostIDData) done
  show goal231: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal232: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal233: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextStore ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal234: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextStore ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal235: "C_msg_P_same IMA nextGOPending nextStore ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i606 i607) done
  show goal236: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i602 i604 i606 i607) done
  show goal237: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603 i605 i607) done
  show goal238: "C_msg_P_oppo IMA nextGOPending (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i606 i607) done
  show goal239: "C_msg_P_oppo SMA nextGOPending (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i604 i605) done
  show goal240: "C_msg_P_oppo ISA nextGOPending (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i602 i603) done
  show goal241: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i606 i609) done
  show goal242: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607 i609) done
  show goal243: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> ((CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (metis CSTATE_general_rule_2_0 i1x i381 i604 i606 i6x nextGOPending_HostIDData reqresps_empty_noGOPending1) done
  show goal244: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> ((CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (metis CSTATE_general_rule_2_0 aux346 i1x i605 i607 i911 nextGOPending_HostIDData) done
  show goal245: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> (dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i190 i225 i406 nextHTDDataPending_general_rule_2_0) done
  show goal246: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> (dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i607 i613 i775 nextHTDDataPending_general_rule_2_0) done
  show goal247: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal248: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (metis CSTATE_general_rule_2_0 aux346 i1x i605 i607 i911 nextGOPending_HostIDData) done
  show goal249: "C_msg_P_same SMA nextGOPending nextStore ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i604 i605) done
  show goal250: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604 i606) done
  show goal251: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i604 i605 i607) done
  show goal252: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextLoad ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i145 i368 i602 nextLoad_general_rule_2_0) done
  show goal253: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextLoad ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 HostIDData_nextLoad assms i146 i369 i602 i603) done
  show goal254: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextStore ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i339 i604 i606 i909 i911 nextStore_general_rule_2_0) done
  show goal255: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextStore ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i340 i605 i606 i607 i909 i911 nextStore_general_rule_2_0) done
  show goal256: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> (dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms aux_dthdatas_empty i493 i510) done
  show goal257: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> (dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i493 i510 i603 i608 i611 i775 nextGOPending_HostIDData nextHTDDataPending_general_rule_2_0) done
  show goal258: "CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i602 i609) done
  show goal259: "CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603 i609) done
  show goal260: "CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i201) done
  show goal261: "CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i201) done
  show goal262: "CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i381 i613old i858 reqresps1_HostIDData2 snps1_HostIDData) done
  show goal263: "CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i213 i317 i378 i613old i614old i618old i858 reqresps2_HostIDData snpresps1_HostIDData snps1_HostIDData) done
  show goal264: "CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> \<not> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal265: "CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> \<not> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal266: "CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal267: "CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 aux_dthdatas_empty i382 reqresps2_HostIDData) done
  show goal268: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal269: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal270: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal271: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal272: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i613old) done
  show goal273: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i317 i583 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal274: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal275: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal276: "nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i494 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal277: "nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i393 i909 i911 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal278: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> CXL_SPG_used ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal279: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> CXL_SPG_used ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal280: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal281: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603) done
  show goal282: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal283: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i602 i603) done
  show goal284: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(121) HSTATE_invariant4 i201) done
  show goal285: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty nextDTHDataFrom_def) done
  show goal286: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal287: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i68 nextReqIs_HostIDData_IMAD_invariant1 nextReqIs_nonempty_reqs1) done
  show goal288: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal289: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i421 i771 i821) done
  show goal290: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(117) HSTATE_invariant4 i201) done
  show goal291: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal292: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old i615old) done
  show goal293: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal294: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i68 nextReqIs_HostIDData_IMAD_invariant1 reqs1_empty_not_nextReqIs_general_invariant) done
  show goal295: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal296: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(117) HSTATE_invariant4 i201) done
  show goal297: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510 i68 reqs1_HostIDData) done
  show goal298: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty nextDTHDataFrom_def) done
  show goal299: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal300: "(HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i2150 i613old) done
  show goal301: "(HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old) done
  show goal302: "nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 HostIDData_nextSnpRespIs_sameside assms i441 i510 i909 i911) done
  show goal303: "nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 HostIDData_nextSnpRespIs_otherside assms i442 i510 i909 i911) done
  show goal304: "(CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(119) HSTATE_invariant4 i201) done
  show goal305: "(CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(119) HSTATE_invariant4 i201) done
  show goal306: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal307: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i493 i510) done
  show goal308: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal309: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal310: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal311: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal312: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal313: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal314: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal315: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(147) assms i621 i695 nextSnoopIs_HostIDData) done
  show goal316: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal317: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 i621 i695 nextSnoopIs_HostIDData) done
  show goal318: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal319: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i606 i607) done
  show goal320: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal321: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal322: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i479 i661 i863 nextSnoopIs_HostIDData) done
  show goal323: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i130 i132 i225) done
  show goal324: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i479 i481 i661 i733 i863 nextSnoopIs_HostIDData) done
  show goal325: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal326: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i225 i891) done
  show goal327: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i493 i510) done
  show goal328: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal329: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal330: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i68 reqs1_HostIDData) done
  show goal331: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal332: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i2150 i381 i613old reqresps1_HostIDData2) done
  show goal333: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal334: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms dthdatas2_HostIDData i192 i225 nextDTHDataFrom_def) done
  show goal335: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal336: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i493 i510) done
  show goal337: "nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i494 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal338: "nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i495 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal339: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i494 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal340: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i514 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal341: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i494 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal342: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal343: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal344: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i317 i583 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal345: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal346: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i225 i455 i503 nextSnoopIs_HostIDData) done
  show goal347: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> CXL_SPG_used ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal348: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> CXL_SPG_used ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i460 i503 i600 i605 i606 i607 i775 nextSnoopIs_HostIDData) done
  show goal349: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal350: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i225 i455 i503 i507 nextSnoopIs_HostIDData) done
  show goal351: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal352: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal353: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i493 i510) done
  show goal354: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (\<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal355: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (\<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal356: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i494 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal357: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i514 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal358: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal359: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal360: "C_msg_P_oppo SMAD nextGOPending (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal361: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i940 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal362: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i941 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal363: "nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqRespStateIs Invalid (reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal364: "nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqRespStateIs Invalid (reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal365: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextEvict_otherside i561 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal366: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextEvict_otherside i562 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal367: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextEvict_otherside i561 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal368: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextEvict_otherside i562 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal369: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i561 i563 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal370: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i562 i564 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal371: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(139) HOST_State.distinct(75) HSTATE_invariant3 i201) done
  show goal372: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(139) HOST_State.distinct(75) HSTATE_invariant3 i201) done
  show goal373: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i561 i565 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal374: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal375: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i561 i565 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal376: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal377: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal378: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i493 i510) done
  show goal379: "nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextEvict_otherside i538 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal380: "nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextEvict_otherside i539 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal381: "nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal382: "nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty nextDTHDataFrom_def) done
  show goal383: "nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_inequality_invariant Invalid_not_eq_MIA MESI_State.distinct(163) MESI_State.distinct(175) assms i453 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal384: "nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_different1 CSTATE_general_rule_2_0 MESI_State.distinct(145) i6x) done
  show goal385: "nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqRespStateIs Invalid (reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))"
    apply  (insert assms)(**)apply (smt (verit) assms i68 nextReqIs_HostIDData_IMAD_invariant1 nextReqIs_nonempty_reqs1) done
  show goal386: "nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqRespStateIs Invalid (reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]))"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal387: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604 i605) done
  show goal388: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605) done
  show goal389: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal390: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i612) done
  show goal391: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604 i611) done
  show goal392: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i611) done
  show goal393: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i381 i613old reqresps1_HostIDData2) done
  show goal394: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605) done
  show goal395: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604 i605) done
  show goal396: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605) done
  show goal397: "nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i556 i940 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal398: "nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i557 i941 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal399: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal400: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i493 i510) done
  show goal401: "CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i493 i510) done
  show goal402: "nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextEvict_otherside i561 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal403: "nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextEvict_otherside i562 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal404: "nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i563 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal405: "nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i564 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal406: "nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i565 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal407: "nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal408: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) C_msg_not_def assms i26 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal409: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant MESI_State.distinct(163) assms) done
  show goal410: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i604 i605 i606 i607) done
  show goal411: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> ((CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)) \<and> \<not> ((CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1))"
    apply  (insert assms)(**)apply (metis CSTATE_general_rule_2_0 HTDDataPending_htddatas_invariant2 aux346 htddatas1_general_rule_1_0 htddatas1_general_rule_2_0 htddatas2_HostIDData i190 i1x i2x i613old i6x i775 i911 nextGOPending_General_rule_2_0 nextGOPending_General_rule_2_1 nextGOPending_HostIDData nextHTDDataPending_general_rule_2_0 nextHTDDataPending_various_forms1 nextHTDDataPending_various_forms2 reqresps_empty_noGOPending1) done
  show goal412: "nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal413: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i607 i775 nextHTDDataPending_general_rule_2_0) done
  show goal414: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal415: "nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal416: "nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal417: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i190 i225 i406 i580 nextHTDDataPending_general_rule_2_0) done
  show goal418: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i602 i605 i607 i775 nextHTDDataPending_general_rule_2_0) done
  show goal419: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i2150 i613old) done
  show goal420: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms htddatas2_HostIDData i317 i583 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal421: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal422: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal423: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal424: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal425: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i313 i771 i821) done
  show goal426: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i201) done
  show goal427: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i201) done
  show goal428: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms aux_dthdatas_empty dthdatas2_HostIDData i192 i225 nextDTHDataFrom_def) done
  show goal429: "CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal430: "CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i593 nextSnoopIs_HostIDData) done
  show goal431: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal432: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal433: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal434: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms aux_dthdatas_empty empty_no_snoop2 i213 i613old) done
  show goal435: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i613old) done
  show goal436: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i317 i583 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal437: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal438: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms aux_dthdatas_empty empty_no_snoop_variant2 i213 i613old) done
  show goal439: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i602) done
  show goal440: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i602 i603) done
  show goal441: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604) done
  show goal442: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i604 i605) done
  show goal443: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i606) done
  show goal444: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i606 i607) done
  show goal445: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i190 i608 nextGOPending_HostIDData nextHTDDataPending_general_rule_2_0) done
  show goal446: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i190 i609 nextGOPending_HostIDData nextHTDDataPending_general_rule_2_0) done
  show goal447: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal448: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i608 i611 i775 nextGOPending_HostIDData nextHTDDataPending_general_rule_2_0) done
  show goal449: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms aux346 i775 nextGOPending_HostIDData nextHTDDataPending_general_rule_2_0) done
  show goal450: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal451: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal452: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i602 i603) done
  show goal453: "CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal454: "CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i602 i603) done
  show goal455: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal456: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (metis empty_no_snoop2 i613old i6x snps2_general_rule_1_0 snps2_general_rule_2_0) done
  show goal457: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal458: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i2150 i613old i621 nextSnoopIs_HostIDData) done
  show goal459: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal460: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal461: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal462: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i606 i607) done
  show goal463: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal464: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal465: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal466: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605) done
  show goal467: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal468: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i606) done
  show goal469: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i602) done
  show goal470: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i602 i603) done
  show goal471: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> (nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<longrightarrow> \<not> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i190 i608 nextGOPending_HostIDData nextHTDDataPending_general_rule_2_0) done
  show goal472: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> (nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<longrightarrow> \<not> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i608 i611 i775 nextGOPending_HostIDData nextHTDDataPending_general_rule_2_0) done
  show goal473: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i602 i611) done
  show goal474: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603 i611) done
  show goal475: "CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i602) done
  show goal476: "CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i602 i603) done
  show goal477: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i608 i611 nextGOPending_HostIDData) done
  show goal478: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607 i608) done
  show goal479: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i606 i607) done
  show goal480: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal481: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal482: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal483: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal484: "CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603) done
  show goal485: "CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal486: "CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603) done
  show goal487: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal488: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (metis empty_no_snoop_variant2 i613old i6x snps2_general_rule_1_0 snps2_general_rule_2_0) done
  show goal489: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal490: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (metis empty_no_snoop_variant2 i613old i6x snps2_general_rule_1_0 snps2_general_rule_2_0) done
  show goal491: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604 i606 i607) done
  show goal492: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i607) done
  show goal493: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604 i606 i607) done
  show goal494: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i607) done
  show goal495: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i190 i609 i656 nextGOPending_HostIDData nextHTDDataPending_general_rule_2_0) done
  show goal496: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms aux346 i775 nextGOPending_HostIDData nextHTDDataPending_general_rule_2_0) done
  show goal497: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal498: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1))"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal499: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms i132 i225) done
  show goal500: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms i132 i225) done
  show goal501: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i602 i604 i606 i607) done
  show goal502: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603 i605 i607) done
  show goal503: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i608 i611 nextGOPending_HostIDData) done
  show goal504: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i611 nextGOPending_HostIDData) done
  show goal505: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i609 i612 nextGOPending_HostIDData) done
  show goal506: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 aux346 nextGOPending_HostIDData) done
  show goal507: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal508: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal509: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i602 i604 i606 i607) done
  show goal510: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603 i605 i607) done
  show goal511: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i190 nextHTDDataPending_general_rule_2_0) done
  show goal512: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i775 nextHTDDataPending_general_rule_2_0) done
  show goal513: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal514: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal515: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal516: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal517: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i381 i613old reqresps1_HostIDData2) done
  show goal518: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal519: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i613old) done
  show goal520: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i317 i583 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal521: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i606 i607) done
  show goal522: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal523: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i606 i607) done
  show goal524: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal525: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 i685 nextSnoopIs_HostIDData) done
  show goal526: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 i686 nextSnoopIs_HostIDData) done
  show goal527: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i606 i607) done
  show goal528: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal529: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i606) done
  show goal530: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i606 i607) done
  show goal531: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) i6x i858 snps1_empty_not_nextSnoopIs_rule_2_0) done
  show goal532: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms empty_no_snoop_variant2 i613old nextSnoopIs_HostIDData) done
  show goal533: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i493 i510) done
  show goal534: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i494 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal535: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i514 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal536: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal537: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> length (dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1 \<and> length (dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) assms aux_dthdatas_empty dthdatas2_HostIDData i111 i60 i613old) done
  show goal538: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> length (dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1 \<and> length (dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) assms aux_dthdatas_empty dthdatas2_HostIDData i111 i60 i613old) done
  show goal539: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty nextDTHDataFrom_def) done
  show goal540: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal541: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> length (dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1 \<and> length (dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) assms aux_dthdatas_empty dthdatas2_HostIDData i111 i60 i613old) done
  show goal542: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty nextDTHDataFrom_def) done
  show goal543: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal544: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty nextDTHDataFrom_def) done
  show goal545: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal546: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(135) HSTATE_invariant4 i201) done
  show goal547: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal548: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i613old i858 snps1_HostIDData) done
  show goal549: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i613old i615old i858 snps1_HostIDData) done
  show goal550: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i613old i615old i858 snps1_HostIDData) done
  show goal551: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal552: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal553: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal554: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal555: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal556: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal557: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604 i606 i607) done
  show goal558: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i607) done
  show goal559: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604 i606 i607) done
  show goal560: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i607) done
  show goal561: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> lastSharer ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal562: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> lastSharer ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal563: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> lastSharer ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i611 nextGOPending_HostIDData) done
  show goal564: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> lastSharer ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i608 i611 nextGOPending_HostIDData) done
  show goal565: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i190 nextHTDDataPending_general_rule_2_0) done
  show goal566: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old) done
  show goal567: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old) done
  show goal568: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal569: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i190 nextHTDDataPending_general_rule_2_0) done
  show goal570: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i775 nextHTDDataPending_general_rule_2_0) done
  show goal571: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (\<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> (\<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal572: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(119) HSTATE_invariant4 i201) done
  show goal573: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old i615old) done
  show goal574: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(121) HOST_State.distinct(139) HSTATE_invariant3 i201) done
  show goal575: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 aux346 nextGOPending_HostIDData) done
  show goal576: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i130 i132 i225) done
  show goal577: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal578: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal579: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal580: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal581: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal582: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i602 i603) done
  show goal583: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i602 i603) done
  show goal584: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old i615old) done
  show goal585: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal586: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal587: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal588: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal589: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1))"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal590: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0))"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal591: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal592: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal593: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal594: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal595: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal596: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal597: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i602) done
  show goal598: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i602 i603) done
  show goal599: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604) done
  show goal600: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i604 i605) done
  show goal601: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i606) done
  show goal602: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i606 i607) done
  show goal603: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms i132 i225) done
  show goal604: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i190 i775 nextHTDDataPending_general_rule_2_0) done
  show goal605: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal606: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal607: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal608: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal609: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i775 nextHTDDataPending_general_rule_2_0) done
  show goal610: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal611: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal612: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal613: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms i132 i225) done
  show goal614: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms i132 i225) done
  show goal615: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old) done
  show goal616: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms i132 i225) done
  show goal617: "snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms i132 i225) done
  show goal618: "snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old) done
  show goal619: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i606 i607) done
  show goal620: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i381 i613old reqresps1_HostIDData2) done
  show goal621: "nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i494 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal622: "nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i514 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal623: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal624: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspSFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal625: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i493 i510) done
  show goal626: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal627: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(135) HSTATE_invariant4 i201) done
  show goal628: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal629: "HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i795 i821) done
  show goal630: "HSTATE SharedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i796 i821) done
  show goal631: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant MESI_State.distinct(163) assms) done
  show goal632: "CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(139) HSTATE_invariant3 i201) done
  show goal633: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i2150 i613old i615old) done
  show goal634: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old i615old) done
  show goal635: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i602 i603) done
  show goal636: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms) done
  show goal637: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal638: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal639: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(135) HSTATE_invariant4 i201) done
  show goal640: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal641: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal642: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(135) HOST_State.distinct(139) HSTATE_invariant3 i201) done
  show goal643: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_inequality_invariant MESI_State.distinct(343) MESI_State.distinct(355) assms i495 i514 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal644: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i494 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal645: "HSTATE MB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i602 i603) done
  show goal646: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal647: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal648: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty nextDTHDataFrom_def) done
  show goal649: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal650: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal651: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal652: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms i132 i225) done
  show goal653: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal654: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal655: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal656: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i494 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal657: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs RdOwn ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal658: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603 i607) done
  show goal659: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal660: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i611 nextGOPending_HostIDData) done
  show goal661: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607 i611) done
  show goal662: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal663: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal664: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i603 i607) done
  show goal665: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal666: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607 i608) done
  show goal667: "CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i606 i608) done
  show goal668: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i613old i615old) done
  show goal669: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i858 snps1_HostIDData) done
  show goal670: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms) done
  show goal671: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i132 i225) done
  show goal672: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(117) HSTATE_invariant4 i201) done
  show goal673: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal674: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> (htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i225 i891) done
  show goal675: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> (htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal676: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal677: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal678: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i225 i891) done
  show goal679: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old i615old) done
  show goal680: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i611 nextGOPending_HostIDData) done
  show goal681: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i611) done
  show goal682: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510 i603 i605) done
  show goal683: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605) done
  show goal684: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604 i605) done
  show goal685: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i2150 i613old) done
  show goal686: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal687: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i607) done
  show goal688: "CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i858 snps1_HostIDData) done
  show goal689: "CSTATE Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i613old) done
  show goal690: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty nextDTHDataFrom_def) done
  show goal691: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal692: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821 i862) done
  show goal693: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms i132 i225) done
  show goal694: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal695: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> CSTATE ISAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal696: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal697: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal698: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i613old) done
  show goal699: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i317 i583 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal700: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal701: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal702: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal703: "CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal704: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms aux7062 i453 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal705: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_general_rule_2_0 HOST_State.distinct(167) HOST_State.distinct(245) HSTATE_invariant3 i132 i186 i189 i1x i225 i2x i328 i454 i591 i815 i960 nextReqIs_general_rule_2_0) done
  show goal706: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (\<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> (\<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 HostIDData_nextGOPendingIs_otherside assms aux7062 i876 i960) done
  show goal707: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(119) HSTATE_invariant4 i201) done
  show goal708: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(119) HSTATE_invariant4 i201) done
  show goal709: "length (dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) assms aux_dthdatas_empty i60 i613old) done
  show goal710: "length (dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<le> 1"
    apply  (insert assms)(**)apply (smt (verit) dthdatas2_HostIDData i111) done
  show goal711: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal712: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771) done
  show goal713: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal714: "HSTATE MAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal715: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i317 i583 i614old i618old snpresps1_HostIDData) done
  show goal716: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i214 i613old i615old) done
  show goal717: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i609 i612 nextGOPending_HostIDData) done
  show goal718: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i381 i613old reqresps1_HostIDData2) done
  show goal719: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> (htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i606 i607) done
  show goal720: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> (htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607) done
  show goal721: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> (htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i604 i607) done
  show goal722: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> (htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0)"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i607) done
  show goal723: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) aux_dthdatas_empty) done
  show goal724: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal725: "nextSnpRespIs RspIHitSE ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextSnpRespIs_sameside assms i942) done
  show goal726: "nextSnpRespIs RspIHitSE ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i607) done
  show goal727: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal728: "CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607 i613) done
  show goal729: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal730: "CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i613) done
  show goal731: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal732: "CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i607 i613) done
  show goal733: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal734: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i613) done
  show goal735: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal736: "CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 aux346 nextGOPending_HostIDData) done
  show goal737: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal738: "HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal739: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal740: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal741: "HSTATE InvalidM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal742: "HSTATE IB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal743: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal744: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIHitSE ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextSnpRespIs_sameside assms i942) done
  show goal745: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIHitSE ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(119) HSTATE_invariant4 i201) done
  show goal746: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i225 i891) done
  show goal747: "CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i2150 i613old i615old) done
  show goal748: "HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal749: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i592 nextSnoopIs_HostIDData) done
  show goal750: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal751: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i909 i911) done
  show goal752: "CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i909 i911) done
  show goal753: "CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i510) done
  show goal754: "CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 assms i510) done
  show goal755: "CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i190 nextHTDDataPending_general_rule_2_0) done
  show goal756: "CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i775 nextHTDDataPending_general_rule_2_0) done
  show goal757: "CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i214 i2150 i613old) done
  show goal758: "CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms htddatas2_HostIDData i317 i614old i618old i858 snpresps1_HostIDData snps1_HostIDData) done
  show goal759: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal760: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal761: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> []"
    apply  (insert assms)(**)apply (smt (verit) assms i613old nextGOPending_HostIDData reqresps_empty_noGOPending1) done
  show goal762: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(121) HOST_State.distinct(139) HSTATE_invariant3 i201) done
  show goal763: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i381 nextGOPending_HostIDData reqresps_empty_noGOPending1) done
  show goal764: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(119) HOST_State.distinct(139) HSTATE_invariant3 i201) done
  show goal765: "CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i858 snps1_HostIDData) done
  show goal766: "CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i613old) done
  show goal767: "CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i68 reqs1_HostIDData) done
  show goal768: "CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i936 nextGOPendingStateGeneral_rule_2_1 nextGOPending_HostIDData reqs2_HostIDData) done
  show goal769: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) assms i190 nextHTDDataPending_general_rule_2_0) done
  show goal770: "HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i775 nextHTDDataPending_general_rule_2_0) done
  show goal771: "HSTATE SB ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 CSTATE_HostIDData_otherside_invariant3 CSTATE_inequality_invariant Invalid_not_eq_MIA assms i132 i225) done
  show goal772: "nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i940 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal773: "nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 i941 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal774: "nextSnpRespIs RspIHitSE ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextSnpRespIs_sameside assms i942) done
  show goal775: "nextSnpRespIs RspIHitSE ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal776: "nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextSnpRespIs_sameside i944 nextReqIs_HostIDData_IMAD_invariant1) done
  show goal777: "nextSnpRespIs RspIFwdM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs CleanEvictNoData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextSnpRespIs_otherside i945 nextReqIs_HostIDData_IMAD_invariant2) done
  show goal778: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant3 i225 i406 i580) done
  show goal779: "CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 assms i605 i612) done
  show goal780: "(CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal781: "(CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal782: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> GTS ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal783: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> GTS ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE ModifiedM ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) i224) done
  show goal784: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> GTS ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2 reqresps_empty_noGOPendingIs1) done
  show goal785: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> GTS ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<noteq> []"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(111) HOST_State.distinct(121) HSTATE_invariant3 i201) done
  show goal786: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> GTS ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2 reqresps_empty_noGOPendingIs1) done
  show goal787: "(CSTATE SIAC ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> GTS ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) HOST_State.distinct(109) HOST_State.distinct(119) HSTATE_invariant3 i201) done
  show goal788: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i213 i613old) done
  show goal789: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i858 snps1_HostIDData) done
  show goal790: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i381 reqresps1_HostIDData2) done
  show goal791: "HSTATE SD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) = []"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
  show goal792: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) CSTATE_HostIDData_otherside_invariant2 HostIDData_nextGOPendingIs_otherside assms i876 i960) done
  show goal793: "HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal794: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<or> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) HostIDData_nextGOPendingIs_otherside assms i771 i821) done
  show goal795: "CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ID ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPendingIs GO_WritePullDrop ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0"
    apply  (insert assms)(**)apply (smt (verit) aux7062) done
  show goal796: "HSTATE SAD ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ]) 1"
    apply  (insert assms)(**)apply (smt (verit) assms i192 nextDTHDataFrom_otherside_rule_2_0) done
qed

(*BigLemmaEnd*)

qed  

lemma helper: shows "f T \<Longrightarrow>
    (\<And>T v. f T \<and>
            HSTATE ID T \<and>
            nextDTHDataFrom 0 T \<and> CSTATE Invalid T 0 \<and> (CSTATE IIA T 1 \<or> CSTATE Invalid T 1 \<or> CSTATE SIA T 1) \<Longrightarrow>
            f (  T [    =hv v] [ 5 sHost= InvalidM] [ Dev1 -=d2hdHead ])) \<Longrightarrow>
    Lall
     (if HSTATE ID T \<and>
         nextDTHDataFrom 0 T \<and>
         CSTATE Invalid T 0 \<and>
         (CSTATE IIA T ((0 + 1) mod 2) \<or> CSTATE Invalid T ((0 + 1) mod 2) \<or> CSTATE SIA T ((0 + 1) mod 2))
      then [clearBuffer
             (let senderDev = nat_to_id 0
              in if 0 = 0
                 then let dataMsg = getDTHDataOrMakeup (dthdatas1 T); v = getSpecificValD2H dataMsg
                      in   T [    =hv v] [ 5 sHost= InvalidM] [ senderDev -=d2hdHead ]
                 else let dataMsg = getDTHDataOrMakeup (dthdatas2 T); v = getSpecificValD2H dataMsg
                      in   T [    =hv v] [ 5 sHost= InvalidM] [ senderDev -=d2hdHead ])]
      else [])
     f"
  apply simp done 


lemma HostIDData'_coherent: shows "
SWMR_state_machine T \<Longrightarrow> Lall (HostIDData' T 0) SWMR_state_machine"
  unfolding HostIDData'_def copyInDataHost_def
  apply(insert HostIDData'_coherent_aux_simpler)
  
  by (metis HostIDData'_coherent_aux_simpler helper nat_to_id.simps(1))

end






