theory FixIBData  
  imports 
    Super_Fix.Super_Fix
    "../examples_deps/BasicInvariants" 
begin

ML \<open>
val read_thy_path = "/full/path/to/this/repo/Super_Fix/Examples/thys_with_errors/FixIBData.thy";
val write_thy_name = "FixIBData.thy";
val write_dir = "/full/path/to/this/repo/Super_Fix/Examples/thy_manual_fixed/";
Fixer.fix_end_to_end \<^theory> read_thy_path write_thy_name write_dir
\<close>

end