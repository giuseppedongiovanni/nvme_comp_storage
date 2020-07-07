#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim Accelerator_tb_behav -key {Behavioral:sim_1:Functional:Accelerator_tb} -tclbatch Accelerator_tb.tcl -view /home/giuseppezynq/Accelerator_v3_testbench_verilog/Accelerator_testbench_verilog/Accelerator_tb_behav.wcfg -log simulate.log
