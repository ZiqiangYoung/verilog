
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Young_01_Adder_1bit -dir "Z:/WorkSpace/Verilog/Young_01_Adder_1bit/planAhead_run_2" -part xc7a100tcsg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Adder_1bit_M.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Adder_1bit_M.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Adder_1bit_M $srcset
add_files [list {Adder_1bit_M.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a100tcsg324-3
