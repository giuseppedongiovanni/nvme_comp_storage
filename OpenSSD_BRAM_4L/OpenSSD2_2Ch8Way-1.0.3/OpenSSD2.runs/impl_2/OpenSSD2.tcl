proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z045ffg900-2
  set_property board_part xilinx.com:zc706:part0:1.2 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.cache/wt [current_project]
  set_property parent.project_path /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.xpr [current_project]
  set_property ip_repo_paths {
  /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.cache/ip
  /home/giuseppezynq/OpenSSD_BRAM_working_write/IPRepo
} [current_project]
  set_property ip_output_repo /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.cache/ip [current_project]
  add_files -quiet /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.runs/synth_2/OpenSSD2.dcp
  add_files /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/OpenSSD2.bmm
  set_property SCOPED_TO_REF OpenSSD2 [get_files -all /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/OpenSSD2.bmm]
  read_xdc -ref OpenSSD2_processing_system7_0_0 -cells inst /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_processing_system7_0_0/OpenSSD2_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_processing_system7_0_0/OpenSSD2_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref OpenSSD2_proc_sys_reset_2_0 /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_proc_sys_reset_2_0/OpenSSD2_proc_sys_reset_2_0_board.xdc
  set_property processing_order EARLY [get_files /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_proc_sys_reset_2_0/OpenSSD2_proc_sys_reset_2_0_board.xdc]
  read_xdc -ref OpenSSD2_proc_sys_reset_2_0 /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_proc_sys_reset_2_0/OpenSSD2_proc_sys_reset_2_0.xdc
  set_property processing_order EARLY [get_files /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_proc_sys_reset_2_0/OpenSSD2_proc_sys_reset_2_0.xdc]
  read_xdc -prop_thru_buffers -ref OpenSSD2_proc_sys_reset_3_0 /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_proc_sys_reset_3_0/OpenSSD2_proc_sys_reset_3_0_board.xdc
  set_property processing_order EARLY [get_files /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_proc_sys_reset_3_0/OpenSSD2_proc_sys_reset_3_0_board.xdc]
  read_xdc -ref OpenSSD2_proc_sys_reset_3_0 /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_proc_sys_reset_3_0/OpenSSD2_proc_sys_reset_3_0.xdc
  set_property processing_order EARLY [get_files /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_proc_sys_reset_3_0/OpenSSD2_proc_sys_reset_3_0.xdc]
  read_xdc -ref pcie_7x_0_core_top -cells inst /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_NVMeHostController4L_0_0/src/pcie_7x_0_core_top/source/pcie_7x_0_core_top-PCIE_X0Y0.xdc
  set_property processing_order EARLY [get_files /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/ip/OpenSSD2_NVMeHostController4L_0_0/src/pcie_7x_0_core_top/source/pcie_7x_0_core_top-PCIE_X0Y0.xdc]
  read_xdc -mode out_of_context -ref OpenSSD2 /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/sources_1/bd/OpenSSD2/OpenSSD2_ooc.xdc
  read_xdc /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/constrs_1/implementation/constr_nvme.xdc
  read_xdc /home/giuseppezynq/OpenSSD_BRAM_working_write/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.srcs/constrs_1/implementation/pinmap_others.xdc
  link_design -top OpenSSD2 -part xc7z045ffg900-2
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force OpenSSD2_opt.dcp
  report_drc -file OpenSSD2_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file OpenSSD2.hwdef}
  place_design 
  write_checkpoint -force OpenSSD2_placed.dcp
  report_io -file OpenSSD2_io_placed.rpt
  report_utilization -file OpenSSD2_utilization_placed.rpt -pb OpenSSD2_utilization_placed.pb
  report_control_sets -verbose -file OpenSSD2_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force OpenSSD2_routed.dcp
  report_drc -file OpenSSD2_drc_routed.rpt -pb OpenSSD2_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file OpenSSD2_timing_summary_routed.rpt -rpx OpenSSD2_timing_summary_routed.rpx
  report_power -file OpenSSD2_power_routed.rpt -pb OpenSSD2_power_summary_routed.pb
  report_route_status -file OpenSSD2_route_status.rpt -pb OpenSSD2_route_status.pb
  report_clock_utilization -file OpenSSD2_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force OpenSSD2.mmi }
  catch { write_bmm -force OpenSSD2_bd.bmm }
  write_bitstream -force OpenSSD2.bit 
  catch { write_sysdef -hwdef OpenSSD2.hwdef -bitfile OpenSSD2.bit -meminfo OpenSSD2.mmi -file OpenSSD2.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

