
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Young_01_Adder_1bit -dir "Z:/WorkSpace/Verilog/Young_01_Adder_1bit/planAhead_run_5" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "Z:/WorkSpace/Verilog/Young_01_Adder_1bit/Adder_1bit_M.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {Z:/WorkSpace/Verilog/Young_01_Adder_1bit} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Adder_1bit_M.ucf" [current_fileset -constrset]
add_files [list {Adder_1bit_M.ucf}] -fileset [get_property constrset [current_run]]
link_design
