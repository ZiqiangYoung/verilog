
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Young_02_LookaheadAdder_4bit -dir "Z:/WorkSpace/Verilog/Young_02_LookaheadAdder_4bit/planAhead_run_2" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "Z:/WorkSpace/Verilog/Young_02_LookaheadAdder_4bit/LookaheadAdder_4bit_M.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {Z:/WorkSpace/Verilog/Young_02_LookaheadAdder_4bit} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "LookaheadAdder_4bit_M.ucf" [current_fileset -constrset]
add_files [list {LookaheadAdder_4bit_M.ucf}] -fileset [get_property constrset [current_run]]
link_design
