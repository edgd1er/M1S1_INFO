
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name L3TP5 -dir "/home/m1/dubiez/Documents/AEO_TP/TP_Bonus/L3TP5/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top toplevel $srcset
set_param project.paUcfFile  "Nexys3_Master.ucf"
set hdlfile [add_files [list {fsm.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {controleur.vhf}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clkdiv.vhf}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {toplevel.vhf}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
add_files "Nexys3_Master.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
