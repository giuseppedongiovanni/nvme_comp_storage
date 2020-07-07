
################################################################
# This is a generated script based on design: OpenSSD2
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source OpenSSD2_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z045ffg900-2
#    set_property BOARD_PART xilinx.com:zc706:part0:1.2 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name OpenSSD2

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set pcie_perst_n [ create_bd_port -dir I pcie_perst_n ]
  set pcie_ref_clk_n [ create_bd_port -dir I pcie_ref_clk_n ]
  set pcie_ref_clk_p [ create_bd_port -dir I pcie_ref_clk_p ]
  set pcie_rx_n [ create_bd_port -dir I -from 3 -to 0 -type data pcie_rx_n ]
  set pcie_rx_p [ create_bd_port -dir I -from 3 -to 0 -type data pcie_rx_p ]
  set pcie_tx_n [ create_bd_port -dir O -from 3 -to 0 -type data pcie_tx_n ]
  set pcie_tx_p [ create_bd_port -dir O -from 3 -to 0 -type data pcie_tx_p ]

  # Create instance: Accelerator_0, and set properties
  set Accelerator_0 [ create_bd_cell -type ip -vlnv user.org:user:Accelerator:3.0 Accelerator_0 ]

  # Create instance: GPIC1, and set properties
  set GPIC1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 GPIC1 ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $GPIC1

  # Create instance: HPIC3, and set properties
  set HPIC3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 HPIC3 ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $HPIC3

  # Create instance: NVMeHostController4L_0, and set properties
  set NVMeHostController4L_0 [ create_bd_cell -type ip -vlnv ENCLab:ip:NVMeHostController4L:1.0.1 NVMeHostController4L_0 ]

  # Create instance: PS, and set properties
  set PS [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 PS ]
  set_property -dict [ list \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {1000} \
CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PRIORITY_READPORT_0 {High} \
CONFIG.PCW_DDR_PRIORITY_READPORT_2 {Low} \
CONFIG.PCW_DDR_PRIORITY_READPORT_3 {Low} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_0 {High} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_2 {Low} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_3 {Low} \
CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {100 Mbps} \
CONFIG.PCW_ENET0_RESET_ENABLE {1} \
CONFIG.PCW_ENET0_RESET_IO {MIO 47} \
CONFIG.PCW_EN_CLK0_PORT {0} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_EN_CLK3_PORT {1} \
CONFIG.PCW_EN_RST0_PORT {0} \
CONFIG.PCW_EN_RST1_PORT {1} \
CONFIG.PCW_EN_RST2_PORT {1} \
CONFIG.PCW_EN_RST3_PORT {1} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {250} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {250} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
CONFIG.PCW_I2C0_I2C0_IO {MIO 50 .. 51} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_I2C0_RESET_ENABLE {1} \
CONFIG.PCW_I2C0_RESET_IO {MIO 46} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_MIO_10_PULLUP {disabled} \
CONFIG.PCW_MIO_11_PULLUP {disabled} \
CONFIG.PCW_MIO_12_PULLUP {disabled} \
CONFIG.PCW_MIO_13_PULLUP {disabled} \
CONFIG.PCW_MIO_16_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_16_PULLUP {disabled} \
CONFIG.PCW_MIO_17_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_17_PULLUP {disabled} \
CONFIG.PCW_MIO_18_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_18_PULLUP {disabled} \
CONFIG.PCW_MIO_19_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_19_PULLUP {disabled} \
CONFIG.PCW_MIO_20_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_20_PULLUP {disabled} \
CONFIG.PCW_MIO_21_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_21_PULLUP {disabled} \
CONFIG.PCW_MIO_22_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_22_PULLUP {disabled} \
CONFIG.PCW_MIO_23_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_23_PULLUP {disabled} \
CONFIG.PCW_MIO_24_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_24_PULLUP {disabled} \
CONFIG.PCW_MIO_25_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_25_PULLUP {disabled} \
CONFIG.PCW_MIO_26_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_26_PULLUP {disabled} \
CONFIG.PCW_MIO_27_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_27_PULLUP {disabled} \
CONFIG.PCW_MIO_28_PULLUP {disabled} \
CONFIG.PCW_MIO_29_PULLUP {disabled} \
CONFIG.PCW_MIO_30_PULLUP {disabled} \
CONFIG.PCW_MIO_31_PULLUP {disabled} \
CONFIG.PCW_MIO_32_PULLUP {disabled} \
CONFIG.PCW_MIO_33_PULLUP {disabled} \
CONFIG.PCW_MIO_34_PULLUP {disabled} \
CONFIG.PCW_MIO_35_PULLUP {disabled} \
CONFIG.PCW_MIO_36_PULLUP {disabled} \
CONFIG.PCW_MIO_37_PULLUP {disabled} \
CONFIG.PCW_MIO_38_PULLUP {disabled} \
CONFIG.PCW_MIO_39_PULLUP {disabled} \
CONFIG.PCW_MIO_40_PULLUP {disabled} \
CONFIG.PCW_MIO_41_PULLUP {disabled} \
CONFIG.PCW_MIO_42_PULLUP {disabled} \
CONFIG.PCW_MIO_43_PULLUP {disabled} \
CONFIG.PCW_MIO_44_PULLUP {disabled} \
CONFIG.PCW_MIO_45_PULLUP {disabled} \
CONFIG.PCW_MIO_9_PULLUP {disabled} \
CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_IO1_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_IO {MIO 14} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
CONFIG.PCW_SD0_GRP_WP_IO {MIO 15} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.521} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.636} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.540} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.621} \
CONFIG.PCW_UIPARAM_DDR_CWL {6} \
CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.226} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.278} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.184} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.309} \
CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {Custom} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
CONFIG.PCW_UIPARAM_DDR_T_FAW {50} \
CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {37.5} \
CONFIG.PCW_UIPARAM_DDR_T_RC {50.62} \
CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {1} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_USB0_RESET_ENABLE {1} \
CONFIG.PCW_USB0_RESET_IO {MIO 7} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_M_AXI_GP0 {1} \
CONFIG.PCW_USE_M_AXI_GP1 {1} \
CONFIG.PCW_USE_S_AXI_GP0 {0} \
CONFIG.PCW_USE_S_AXI_GP1 {0} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
CONFIG.PCW_USE_S_AXI_HP1 {0} \
CONFIG.PCW_USE_S_AXI_HP2 {0} \
CONFIG.PCW_USE_S_AXI_HP3 {1} \
 ] $PS

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 axi_bram_ctrl_0_bram ]

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
CONFIG.c_include_mm2s {1} \
CONFIG.c_include_mm2s_dre {0} \
CONFIG.c_include_s2mm_dre {0} \
CONFIG.c_include_sg {0} \
CONFIG.c_m_axi_mm2s_data_width {128} \
CONFIG.c_m_axis_mm2s_tdata_width {128} \
CONFIG.c_micro_dma {0} \
CONFIG.c_mm2s_burst_size {32} \
CONFIG.c_s2mm_burst_size {32} \
CONFIG.c_sg_include_stscntrl_strm {0} \
CONFIG.c_sg_length_width {16} \
 ] $axi_dma_0

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {3} \
 ] $axi_mem_intercon

  # Create instance: axi_mem_intercon_1, and set properties
  set axi_mem_intercon_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon_1 ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
 ] $axi_mem_intercon_1

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]

  # Create instance: proc_sys_reset_2, and set properties
  set proc_sys_reset_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_2 ]

  # Create instance: proc_sys_reset_3, and set properties
  set proc_sys_reset_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_3 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Accelerator_0_M00_AXIS [get_bd_intf_pins Accelerator_0/M00_AXIS] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net GPIC1_M00_AXI [get_bd_intf_pins GPIC1/M00_AXI] [get_bd_intf_pins NVMeHostController4L_0/s0_axi]
  connect_bd_intf_net -intf_net HPIC3_M00_AXI [get_bd_intf_pins HPIC3/M00_AXI] [get_bd_intf_pins PS/S_AXI_HP3]
  connect_bd_intf_net -intf_net NVMeHostController4L_0_m0_axi [get_bd_intf_pins HPIC3/S00_AXI] [get_bd_intf_pins NVMeHostController4L_0/m0_axi]
  connect_bd_intf_net -intf_net PS_M_AXI_GP0 [get_bd_intf_pins PS/M_AXI_GP0] [get_bd_intf_pins axi_mem_intercon/S00_AXI]
  connect_bd_intf_net -intf_net S00_AXI_2 [get_bd_intf_pins GPIC1/S00_AXI] [get_bd_intf_pins PS/M_AXI_GP1]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXIS_MM2S [get_bd_intf_pins Accelerator_0/S00_AXIS] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_mem_intercon_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon_1/S01_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_1_M00_AXI [get_bd_intf_pins PS/S_AXI_HP0] [get_bd_intf_pins axi_mem_intercon_1/M00_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_mem_intercon/M00_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M01_AXI [get_bd_intf_pins Accelerator_0/S00_AXI] [get_bd_intf_pins axi_mem_intercon/M01_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M02_AXI [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins axi_mem_intercon/M02_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins PS/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins PS/FIXED_IO]

  # Create port connections
  connect_bd_net -net ARESETN_2 [get_bd_pins axi_mem_intercon_1/ARESETN] [get_bd_pins proc_sys_reset_3/interconnect_aresetn]
  connect_bd_net -net ARESETN_3 [get_bd_pins GPIC1/ARESETN] [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins proc_sys_reset_2/interconnect_aresetn]
  connect_bd_net -net M00_ARESETN_2 [get_bd_pins Accelerator_0/m00_axis_aresetn] [get_bd_pins Accelerator_0/s00_axis_aresetn] [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_mem_intercon/M02_ARESETN] [get_bd_pins axi_mem_intercon_1/M00_ARESETN] [get_bd_pins axi_mem_intercon_1/S00_ARESETN] [get_bd_pins axi_mem_intercon_1/S01_ARESETN] [get_bd_pins proc_sys_reset_3/peripheral_aresetn]
  connect_bd_net -net NVMeHostController4L_0_dev_irq_assert [get_bd_pins NVMeHostController4L_0/dev_irq_assert] [get_bd_pins PS/IRQ_F2P]
  connect_bd_net -net NVMeHostController4L_0_pcie_tx_n [get_bd_ports pcie_tx_n] [get_bd_pins NVMeHostController4L_0/pcie_tx_n]
  connect_bd_net -net NVMeHostController4L_0_pcie_tx_p [get_bd_ports pcie_tx_p] [get_bd_pins NVMeHostController4L_0/pcie_tx_p]
  connect_bd_net -net PS_FCLK_CLK1 [get_bd_pins HPIC3/ACLK] [get_bd_pins HPIC3/M00_ACLK] [get_bd_pins HPIC3/S00_ACLK] [get_bd_pins NVMeHostController4L_0/m0_axi_aclk] [get_bd_pins PS/FCLK_CLK1] [get_bd_pins PS/S_AXI_HP3_ACLK] [get_bd_pins proc_sys_reset_1/slowest_sync_clk]
  connect_bd_net -net PS_FCLK_CLK2 [get_bd_pins Accelerator_0/s00_axi_aclk] [get_bd_pins GPIC1/ACLK] [get_bd_pins GPIC1/M00_ACLK] [get_bd_pins GPIC1/S00_ACLK] [get_bd_pins NVMeHostController4L_0/s0_axi_aclk] [get_bd_pins PS/FCLK_CLK2] [get_bd_pins PS/M_AXI_GP0_ACLK] [get_bd_pins PS/M_AXI_GP1_ACLK] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/M01_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins proc_sys_reset_2/slowest_sync_clk]
  connect_bd_net -net PS_FCLK_CLK3 [get_bd_pins Accelerator_0/m00_axis_aclk] [get_bd_pins Accelerator_0/s00_axis_aclk] [get_bd_pins PS/FCLK_CLK3] [get_bd_pins PS/S_AXI_HP0_ACLK] [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_mem_intercon/M02_ACLK] [get_bd_pins axi_mem_intercon_1/ACLK] [get_bd_pins axi_mem_intercon_1/M00_ACLK] [get_bd_pins axi_mem_intercon_1/S00_ACLK] [get_bd_pins axi_mem_intercon_1/S01_ACLK] [get_bd_pins proc_sys_reset_3/slowest_sync_clk]
  connect_bd_net -net PS_FCLK_RESET1_N [get_bd_pins PS/FCLK_RESET1_N] [get_bd_pins proc_sys_reset_1/ext_reset_in]
  connect_bd_net -net PS_FCLK_RESET2_N [get_bd_pins PS/FCLK_RESET2_N] [get_bd_pins proc_sys_reset_2/ext_reset_in]
  connect_bd_net -net PS_FCLK_RESET3_N [get_bd_pins PS/FCLK_RESET3_N] [get_bd_pins proc_sys_reset_3/ext_reset_in]
  connect_bd_net -net pcie_perst_n_1 [get_bd_ports pcie_perst_n] [get_bd_pins NVMeHostController4L_0/pcie_perst_n]
  connect_bd_net -net pcie_ref_clk_n_1 [get_bd_ports pcie_ref_clk_n] [get_bd_pins NVMeHostController4L_0/pcie_ref_clk_n]
  connect_bd_net -net pcie_ref_clk_p_1 [get_bd_ports pcie_ref_clk_p] [get_bd_pins NVMeHostController4L_0/pcie_ref_clk_p]
  connect_bd_net -net pcie_rx_n_1 [get_bd_ports pcie_rx_n] [get_bd_pins NVMeHostController4L_0/pcie_rx_n]
  connect_bd_net -net pcie_rx_p_1 [get_bd_ports pcie_rx_p] [get_bd_pins NVMeHostController4L_0/pcie_rx_p]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins HPIC3/ARESETN] [get_bd_pins proc_sys_reset_1/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins HPIC3/M00_ARESETN] [get_bd_pins HPIC3/S00_ARESETN] [get_bd_pins NVMeHostController4L_0/m0_axi_aresetn] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_2_peripheral_aresetn [get_bd_pins Accelerator_0/s00_axi_aresetn] [get_bd_pins GPIC1/M00_ARESETN] [get_bd_pins GPIC1/S00_ARESETN] [get_bd_pins NVMeHostController4L_0/s0_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/M01_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins proc_sys_reset_2/peripheral_aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces NVMeHostController4L_0/m0_axi] [get_bd_addr_segs PS/S_AXI_HP3/HP3_DDR_LOWOCM] SEG_PS_HP3_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces PS/Data] [get_bd_addr_segs Accelerator_0/S00_AXI/S00_AXI_reg] SEG_Accelerator_0_S00_AXI_reg
  create_bd_addr_seg -range 0x10000 -offset 0x83C00000 [get_bd_addr_spaces PS/Data] [get_bd_addr_segs NVMeHostController4L_0/s0_axi/reg0] SEG_NVMeHostController4L_0_reg0
  create_bd_addr_seg -range 0x2000 -offset 0x40000000 [get_bd_addr_spaces PS/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x40400000 [get_bd_addr_spaces PS/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs PS/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_PS_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs PS/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_PS_HP0_DDR_LOWOCM

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   DisplayTieOff: "1",
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port pcie_perst_n -pg 1 -y 1110 -defaultsOSRD -right
preplace port pcie_ref_clk_p -pg 1 -y 1070 -defaultsOSRD -right
preplace port DDR -pg 1 -y 520 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 540 -defaultsOSRD
preplace port pcie_ref_clk_n -pg 1 -y 1090 -defaultsOSRD -right
preplace portBus pcie_tx_p -pg 1 -y 960 -defaultsOSRD
preplace portBus pcie_rx_n -pg 1 -y 1150 -defaultsOSRD -right
preplace portBus pcie_rx_p -pg 1 -y 1130 -defaultsOSRD -right
preplace portBus pcie_tx_n -pg 1 -y 980 -defaultsOSRD
preplace inst PS -pg 1 -lvl 6 -y 610 -defaultsOSRD
preplace inst GPIC1 -pg 1 -lvl 5 -y 670 -defaultsOSRD
preplace inst axi_dma_0 -pg 1 -lvl 4 -y 120 -defaultsOSRD
preplace inst axi_mem_intercon_1 -pg 1 -lvl 5 -y 390 -defaultsOSRD
preplace inst axi_bram_ctrl_0_bram -pg 1 -lvl 4 -y 560 -defaultsOSRD
preplace inst proc_sys_reset_1 -pg 1 -lvl 4 -y 970 -defaultsOSRD
preplace inst proc_sys_reset_2 -pg 1 -lvl 1 -y 330 -defaultsOSRD
preplace inst HPIC3 -pg 1 -lvl 5 -y 1010 -defaultsOSRD
preplace inst NVMeHostController4L_0 -pg 1 -lvl 6 -y 950 -defaultsOSRD
preplace inst proc_sys_reset_3 -pg 1 -lvl 1 -y 500 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 2 -y 410 -defaultsOSRD
preplace inst axi_bram_ctrl_0 -pg 1 -lvl 3 -y 560 -defaultsOSRD
preplace inst Accelerator_0 -pg 1 -lvl 3 -y 370 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 6 1 NJ
preplace netloc axi_mem_intercon_M01_AXI 1 2 1 740
preplace netloc NVMeHostController4L_0_dev_irq_assert 1 5 2 1830 800 2300
preplace netloc NVMeHostController4L_0_pcie_tx_p 1 6 1 NJ
preplace netloc pcie_ref_clk_n_1 1 5 2 1820 1100 NJ
preplace netloc Accelerator_0_M00_AXIS 1 3 1 1040
preplace netloc axi_mem_intercon_1_M00_AXI 1 5 1 1760
preplace netloc axi_bram_ctrl_0_BRAM_PORTA 1 3 1 NJ
preplace netloc pcie_rx_n_1 1 5 2 1850 1130 NJ
preplace netloc proc_sys_reset_1_peripheral_aresetn 1 4 2 1410 890 NJ
preplace netloc PS_FCLK_CLK1 1 3 4 1070 1060 1420 1130 1800 790 2320
preplace netloc axi_mem_intercon_M00_AXI 1 2 1 750
preplace netloc PS_FCLK_CLK2 1 0 7 30 240 410 590 770 490 NJ 490 1410 790 1780 780 2300
preplace netloc ARESETN_2 1 1 4 390 250 NJ 250 NJ 360 NJ
preplace netloc PS_FCLK_RESET2_N 1 0 7 20 230 NJ 230 NJ 230 NJ 230 NJ 230 NJ 230 2330
preplace netloc axi_mem_intercon_M02_AXI 1 2 2 720 70 NJ
preplace netloc ARESETN_3 1 1 4 400 650 NJ 650 NJ 650 NJ
preplace netloc PS_FCLK_CLK3 1 0 7 20 590 380 570 730 210 1070 320 1420 550 1770 440 2310
preplace netloc NVMeHostController4L_0_m0_axi 1 4 3 1430 1140 NJ 1140 2290
preplace netloc axi_dma_0_M_AXI_MM2S 1 4 1 1440
preplace netloc proc_sys_reset_2_peripheral_aresetn 1 1 5 370 600 780 690 NJ 690 1430 880 NJ
preplace netloc pcie_ref_clk_p_1 1 5 2 1810 1090 NJ
preplace netloc processing_system7_0_FIXED_IO 1 6 1 NJ
preplace netloc GPIC1_M00_AXI 1 5 1 1770
preplace netloc PS_FCLK_RESET3_N 1 0 7 30 800 NJ 800 NJ 800 NJ 800 NJ 800 NJ 770 2290
preplace netloc axi_dma_0_M_AXI_S2MM 1 4 1 1430
preplace netloc S00_AXI_2 1 4 3 1430 540 NJ 450 2290
preplace netloc pcie_perst_n_1 1 5 2 1830 1110 NJ
preplace netloc proc_sys_reset_1_interconnect_aresetn 1 4 1 N
preplace netloc PS_FCLK_RESET1_N 1 3 4 1050 810 NJ 810 NJ 810 2310
preplace netloc axi_dma_0_M_AXIS_MM2S 1 2 3 780 10 NJ 10 1420
preplace netloc M00_ARESETN_2 1 1 4 420 580 760 220 1060 400 1440
preplace netloc pcie_rx_p_1 1 5 2 1840 1120 NJ
preplace netloc HPIC3_M00_AXI 1 5 1 1760
preplace netloc PS_M_AXI_GP0 1 1 6 420 240 NJ 240 NJ 240 NJ 240 NJ 240 2300
preplace netloc NVMeHostController4L_0_pcie_tx_n 1 6 1 NJ
levelinfo -pg 1 0 200 570 910 1240 1590 2070 2350 -top 0 -bot 1170
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


