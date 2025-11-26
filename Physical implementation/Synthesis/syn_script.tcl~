
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

set fh [open system.lst r+]
set rtl [read $fh]
set designs ""
regsub -all "\n" $rtl " " designs

read_file -format $file_format $designs

analyze -format verilog /home/IC/test1/rtl/FIFO/FIFO_WR.v
analyze -format verilog /home/IC/test1/rtl/FIFO/FIFO_MEM_CNTRL.v
analyze -format verilog /home/IC/test1/rtl/FIFO/DF_SYNC.v
analyze -format verilog /home/IC/test1/rtl/FIFO/FIFO_RD.v
analyze -format verilog /home/IC/test1/rtl/FIFO/ASYNC_FIFO.v

elaborate ASYNC_FIFO

analyze -format verilog /home/IC/test1/rtl/UART/TX/SERIALIZER.v
analyze -format verilog /home/IC/test1/rtl/UART/TX/MUX4x1.v
analyze -format verilog /home/IC/test1/rtl/UART/TX/FSM_TX.v
analyze -format verilog /home/IC/test1/rtl/UART/TX/parity_calc.v
analyze -format verilog /home/IC/test1/rtl/UART/TX/TOP_TX.v
elaborate TOP_TX

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile 

##################### Close Formality Setup file ###########################

set_svf -off
report_reference

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -max_paths 100 -delay_type min > reports/hold.rpt
report_timing -max_paths 100 -delay_type max > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt

################# starting graphical user interface #######################

#gui_start

exit
