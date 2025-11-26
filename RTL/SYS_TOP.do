vlib work
vlog  -f sourcefile.txt
vsim -voptargs=+acc work.SYS_TOP_TB
do wave.do
run -all