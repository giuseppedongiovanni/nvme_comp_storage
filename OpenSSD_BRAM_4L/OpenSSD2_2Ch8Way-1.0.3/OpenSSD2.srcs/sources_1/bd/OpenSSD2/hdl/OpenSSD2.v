//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4.2 (lin64) Build 1494164 Fri Feb 26 04:18:54 MST 2016
//Date        : Tue May 26 14:10:02 2020
//Host        : giuseppezynq-OptiPlex-9010 running 64-bit Ubuntu 14.04.6 LTS
//Command     : generate_target OpenSSD2.bd
//Design      : OpenSSD2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "OpenSSD2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=OpenSSD2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=15,numReposBlks=9,numNonXlnxBlks=1,numHierBlks=6,maxHierDepth=0,da_axi4_cnt=1,da_board_cnt=3,da_bram_cntlr_cnt=1,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "OpenSSD2.hwdef" *) 
module OpenSSD2
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    pcie_perst_n,
    pcie_ref_clk_n,
    pcie_ref_clk_p,
    pcie_rx_n,
    pcie_rx_p,
    pcie_tx_n,
    pcie_tx_p);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input pcie_perst_n;
  input pcie_ref_clk_n;
  input pcie_ref_clk_p;
  input [3:0]pcie_rx_n;
  input [3:0]pcie_rx_p;
  output [3:0]pcie_tx_n;
  output [3:0]pcie_tx_p;

  wire [0:0]ARESETN_2;
  wire [0:0]ARESETN_3;
  wire [31:0]GPIC1_M00_AXI_ARADDR;
  wire [2:0]GPIC1_M00_AXI_ARPROT;
  wire GPIC1_M00_AXI_ARREADY;
  wire GPIC1_M00_AXI_ARVALID;
  wire [31:0]GPIC1_M00_AXI_AWADDR;
  wire [2:0]GPIC1_M00_AXI_AWPROT;
  wire GPIC1_M00_AXI_AWREADY;
  wire GPIC1_M00_AXI_AWVALID;
  wire GPIC1_M00_AXI_BREADY;
  wire [1:0]GPIC1_M00_AXI_BRESP;
  wire GPIC1_M00_AXI_BVALID;
  wire [31:0]GPIC1_M00_AXI_RDATA;
  wire GPIC1_M00_AXI_RREADY;
  wire [1:0]GPIC1_M00_AXI_RRESP;
  wire GPIC1_M00_AXI_RVALID;
  wire [31:0]GPIC1_M00_AXI_WDATA;
  wire GPIC1_M00_AXI_WREADY;
  wire [3:0]GPIC1_M00_AXI_WSTRB;
  wire GPIC1_M00_AXI_WVALID;
  wire [31:0]HPIC3_M00_AXI_ARADDR;
  wire [1:0]HPIC3_M00_AXI_ARBURST;
  wire [3:0]HPIC3_M00_AXI_ARCACHE;
  wire [0:0]HPIC3_M00_AXI_ARID;
  wire [3:0]HPIC3_M00_AXI_ARLEN;
  wire [1:0]HPIC3_M00_AXI_ARLOCK;
  wire [2:0]HPIC3_M00_AXI_ARPROT;
  wire [3:0]HPIC3_M00_AXI_ARQOS;
  wire HPIC3_M00_AXI_ARREADY;
  wire [2:0]HPIC3_M00_AXI_ARSIZE;
  wire HPIC3_M00_AXI_ARVALID;
  wire [31:0]HPIC3_M00_AXI_AWADDR;
  wire [1:0]HPIC3_M00_AXI_AWBURST;
  wire [3:0]HPIC3_M00_AXI_AWCACHE;
  wire [0:0]HPIC3_M00_AXI_AWID;
  wire [3:0]HPIC3_M00_AXI_AWLEN;
  wire [1:0]HPIC3_M00_AXI_AWLOCK;
  wire [2:0]HPIC3_M00_AXI_AWPROT;
  wire [3:0]HPIC3_M00_AXI_AWQOS;
  wire HPIC3_M00_AXI_AWREADY;
  wire [2:0]HPIC3_M00_AXI_AWSIZE;
  wire HPIC3_M00_AXI_AWVALID;
  wire [5:0]HPIC3_M00_AXI_BID;
  wire HPIC3_M00_AXI_BREADY;
  wire [1:0]HPIC3_M00_AXI_BRESP;
  wire HPIC3_M00_AXI_BVALID;
  wire [63:0]HPIC3_M00_AXI_RDATA;
  wire [5:0]HPIC3_M00_AXI_RID;
  wire HPIC3_M00_AXI_RLAST;
  wire HPIC3_M00_AXI_RREADY;
  wire [1:0]HPIC3_M00_AXI_RRESP;
  wire HPIC3_M00_AXI_RVALID;
  wire [63:0]HPIC3_M00_AXI_WDATA;
  wire [0:0]HPIC3_M00_AXI_WID;
  wire HPIC3_M00_AXI_WLAST;
  wire HPIC3_M00_AXI_WREADY;
  wire [7:0]HPIC3_M00_AXI_WSTRB;
  wire HPIC3_M00_AXI_WVALID;
  wire [0:0]M00_ARESETN_2;
  wire NVMeHostController4L_0_dev_irq_assert;
  wire [31:0]NVMeHostController4L_0_m0_axi_ARADDR;
  wire [1:0]NVMeHostController4L_0_m0_axi_ARBURST;
  wire [3:0]NVMeHostController4L_0_m0_axi_ARCACHE;
  wire [0:0]NVMeHostController4L_0_m0_axi_ARID;
  wire [7:0]NVMeHostController4L_0_m0_axi_ARLEN;
  wire NVMeHostController4L_0_m0_axi_ARLOCK;
  wire [2:0]NVMeHostController4L_0_m0_axi_ARPROT;
  wire [3:0]NVMeHostController4L_0_m0_axi_ARQOS;
  wire NVMeHostController4L_0_m0_axi_ARREADY;
  wire [3:0]NVMeHostController4L_0_m0_axi_ARREGION;
  wire [2:0]NVMeHostController4L_0_m0_axi_ARSIZE;
  wire [0:0]NVMeHostController4L_0_m0_axi_ARUSER;
  wire NVMeHostController4L_0_m0_axi_ARVALID;
  wire [31:0]NVMeHostController4L_0_m0_axi_AWADDR;
  wire [1:0]NVMeHostController4L_0_m0_axi_AWBURST;
  wire [3:0]NVMeHostController4L_0_m0_axi_AWCACHE;
  wire [0:0]NVMeHostController4L_0_m0_axi_AWID;
  wire [7:0]NVMeHostController4L_0_m0_axi_AWLEN;
  wire NVMeHostController4L_0_m0_axi_AWLOCK;
  wire [2:0]NVMeHostController4L_0_m0_axi_AWPROT;
  wire [3:0]NVMeHostController4L_0_m0_axi_AWQOS;
  wire NVMeHostController4L_0_m0_axi_AWREADY;
  wire [3:0]NVMeHostController4L_0_m0_axi_AWREGION;
  wire [2:0]NVMeHostController4L_0_m0_axi_AWSIZE;
  wire [0:0]NVMeHostController4L_0_m0_axi_AWUSER;
  wire NVMeHostController4L_0_m0_axi_AWVALID;
  wire [0:0]NVMeHostController4L_0_m0_axi_BID;
  wire NVMeHostController4L_0_m0_axi_BREADY;
  wire [1:0]NVMeHostController4L_0_m0_axi_BRESP;
  wire NVMeHostController4L_0_m0_axi_BVALID;
  wire [63:0]NVMeHostController4L_0_m0_axi_RDATA;
  wire [0:0]NVMeHostController4L_0_m0_axi_RID;
  wire NVMeHostController4L_0_m0_axi_RLAST;
  wire NVMeHostController4L_0_m0_axi_RREADY;
  wire [1:0]NVMeHostController4L_0_m0_axi_RRESP;
  wire [0:0]NVMeHostController4L_0_m0_axi_RUSER;
  wire NVMeHostController4L_0_m0_axi_RVALID;
  wire [63:0]NVMeHostController4L_0_m0_axi_WDATA;
  wire NVMeHostController4L_0_m0_axi_WLAST;
  wire NVMeHostController4L_0_m0_axi_WREADY;
  wire [7:0]NVMeHostController4L_0_m0_axi_WSTRB;
  wire [0:0]NVMeHostController4L_0_m0_axi_WUSER;
  wire NVMeHostController4L_0_m0_axi_WVALID;
  wire [3:0]NVMeHostController4L_0_pcie_tx_n;
  wire [3:0]NVMeHostController4L_0_pcie_tx_p;
  wire PS_FCLK_CLK2;
  wire PS_FCLK_CLK3;
  wire PS_FCLK_RESET2_N;
  wire PS_FCLK_RESET3_N;
  wire [31:0]PS_M_AXI_GP0_ARADDR;
  wire [1:0]PS_M_AXI_GP0_ARBURST;
  wire [3:0]PS_M_AXI_GP0_ARCACHE;
  wire [11:0]PS_M_AXI_GP0_ARID;
  wire [3:0]PS_M_AXI_GP0_ARLEN;
  wire [1:0]PS_M_AXI_GP0_ARLOCK;
  wire [2:0]PS_M_AXI_GP0_ARPROT;
  wire [3:0]PS_M_AXI_GP0_ARQOS;
  wire PS_M_AXI_GP0_ARREADY;
  wire [2:0]PS_M_AXI_GP0_ARSIZE;
  wire PS_M_AXI_GP0_ARVALID;
  wire [31:0]PS_M_AXI_GP0_AWADDR;
  wire [1:0]PS_M_AXI_GP0_AWBURST;
  wire [3:0]PS_M_AXI_GP0_AWCACHE;
  wire [11:0]PS_M_AXI_GP0_AWID;
  wire [3:0]PS_M_AXI_GP0_AWLEN;
  wire [1:0]PS_M_AXI_GP0_AWLOCK;
  wire [2:0]PS_M_AXI_GP0_AWPROT;
  wire [3:0]PS_M_AXI_GP0_AWQOS;
  wire PS_M_AXI_GP0_AWREADY;
  wire [2:0]PS_M_AXI_GP0_AWSIZE;
  wire PS_M_AXI_GP0_AWVALID;
  wire [11:0]PS_M_AXI_GP0_BID;
  wire PS_M_AXI_GP0_BREADY;
  wire [1:0]PS_M_AXI_GP0_BRESP;
  wire PS_M_AXI_GP0_BVALID;
  wire [31:0]PS_M_AXI_GP0_RDATA;
  wire [11:0]PS_M_AXI_GP0_RID;
  wire PS_M_AXI_GP0_RLAST;
  wire PS_M_AXI_GP0_RREADY;
  wire [1:0]PS_M_AXI_GP0_RRESP;
  wire PS_M_AXI_GP0_RVALID;
  wire [31:0]PS_M_AXI_GP0_WDATA;
  wire [11:0]PS_M_AXI_GP0_WID;
  wire PS_M_AXI_GP0_WLAST;
  wire PS_M_AXI_GP0_WREADY;
  wire [3:0]PS_M_AXI_GP0_WSTRB;
  wire PS_M_AXI_GP0_WVALID;
  wire [31:0]S00_AXI_2_ARADDR;
  wire [1:0]S00_AXI_2_ARBURST;
  wire [3:0]S00_AXI_2_ARCACHE;
  wire [11:0]S00_AXI_2_ARID;
  wire [3:0]S00_AXI_2_ARLEN;
  wire [1:0]S00_AXI_2_ARLOCK;
  wire [2:0]S00_AXI_2_ARPROT;
  wire [3:0]S00_AXI_2_ARQOS;
  wire S00_AXI_2_ARREADY;
  wire [2:0]S00_AXI_2_ARSIZE;
  wire S00_AXI_2_ARVALID;
  wire [31:0]S00_AXI_2_AWADDR;
  wire [1:0]S00_AXI_2_AWBURST;
  wire [3:0]S00_AXI_2_AWCACHE;
  wire [11:0]S00_AXI_2_AWID;
  wire [3:0]S00_AXI_2_AWLEN;
  wire [1:0]S00_AXI_2_AWLOCK;
  wire [2:0]S00_AXI_2_AWPROT;
  wire [3:0]S00_AXI_2_AWQOS;
  wire S00_AXI_2_AWREADY;
  wire [2:0]S00_AXI_2_AWSIZE;
  wire S00_AXI_2_AWVALID;
  wire [11:0]S00_AXI_2_BID;
  wire S00_AXI_2_BREADY;
  wire [1:0]S00_AXI_2_BRESP;
  wire S00_AXI_2_BVALID;
  wire [31:0]S00_AXI_2_RDATA;
  wire [11:0]S00_AXI_2_RID;
  wire S00_AXI_2_RLAST;
  wire S00_AXI_2_RREADY;
  wire [1:0]S00_AXI_2_RRESP;
  wire S00_AXI_2_RVALID;
  wire [31:0]S00_AXI_2_WDATA;
  wire [11:0]S00_AXI_2_WID;
  wire S00_AXI_2_WLAST;
  wire S00_AXI_2_WREADY;
  wire [3:0]S00_AXI_2_WSTRB;
  wire S00_AXI_2_WVALID;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_ARCACHE;
  wire [11:0]axi_mem_intercon_M00_AXI_ARID;
  wire [7:0]axi_mem_intercon_M00_AXI_ARLEN;
  wire [0:0]axi_mem_intercon_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_ARSIZE;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [11:0]axi_mem_intercon_M00_AXI_AWID;
  wire [7:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [0:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire [11:0]axi_mem_intercon_M00_AXI_BID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_RDATA;
  wire [11:0]axi_mem_intercon_M00_AXI_RID;
  wire axi_mem_intercon_M00_AXI_RLAST;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_WDATA;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [3:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire pcie_perst_n_1;
  wire pcie_ref_clk_n_1;
  wire pcie_ref_clk_p_1;
  wire [3:0]pcie_rx_n_1;
  wire [3:0]pcie_rx_p_1;
  wire [0:0]proc_sys_reset_2_peripheral_aresetn;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;

  assign pcie_perst_n_1 = pcie_perst_n;
  assign pcie_ref_clk_n_1 = pcie_ref_clk_n;
  assign pcie_ref_clk_p_1 = pcie_ref_clk_p;
  assign pcie_rx_n_1 = pcie_rx_n[3:0];
  assign pcie_rx_p_1 = pcie_rx_p[3:0];
  assign pcie_tx_n[3:0] = NVMeHostController4L_0_pcie_tx_n;
  assign pcie_tx_p[3:0] = NVMeHostController4L_0_pcie_tx_p;
  OpenSSD2_axi_interconnect_0_2 GPIC1
       (.ACLK(PS_FCLK_CLK2),
        .ARESETN(ARESETN_3),
        .M00_ACLK(PS_FCLK_CLK2),
        .M00_ARESETN(proc_sys_reset_2_peripheral_aresetn),
        .M00_AXI_araddr(GPIC1_M00_AXI_ARADDR),
        .M00_AXI_arprot(GPIC1_M00_AXI_ARPROT),
        .M00_AXI_arready(GPIC1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(GPIC1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(GPIC1_M00_AXI_AWADDR),
        .M00_AXI_awprot(GPIC1_M00_AXI_AWPROT),
        .M00_AXI_awready(GPIC1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(GPIC1_M00_AXI_AWVALID),
        .M00_AXI_bready(GPIC1_M00_AXI_BREADY),
        .M00_AXI_bresp(GPIC1_M00_AXI_BRESP),
        .M00_AXI_bvalid(GPIC1_M00_AXI_BVALID),
        .M00_AXI_rdata(GPIC1_M00_AXI_RDATA),
        .M00_AXI_rready(GPIC1_M00_AXI_RREADY),
        .M00_AXI_rresp(GPIC1_M00_AXI_RRESP),
        .M00_AXI_rvalid(GPIC1_M00_AXI_RVALID),
        .M00_AXI_wdata(GPIC1_M00_AXI_WDATA),
        .M00_AXI_wready(GPIC1_M00_AXI_WREADY),
        .M00_AXI_wstrb(GPIC1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(GPIC1_M00_AXI_WVALID),
        .S00_ACLK(PS_FCLK_CLK2),
        .S00_ARESETN(proc_sys_reset_2_peripheral_aresetn),
        .S00_AXI_araddr(S00_AXI_2_ARADDR),
        .S00_AXI_arburst(S00_AXI_2_ARBURST),
        .S00_AXI_arcache(S00_AXI_2_ARCACHE),
        .S00_AXI_arid(S00_AXI_2_ARID),
        .S00_AXI_arlen(S00_AXI_2_ARLEN),
        .S00_AXI_arlock(S00_AXI_2_ARLOCK),
        .S00_AXI_arprot(S00_AXI_2_ARPROT),
        .S00_AXI_arqos(S00_AXI_2_ARQOS),
        .S00_AXI_arready(S00_AXI_2_ARREADY),
        .S00_AXI_arsize(S00_AXI_2_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_2_ARVALID),
        .S00_AXI_awaddr(S00_AXI_2_AWADDR),
        .S00_AXI_awburst(S00_AXI_2_AWBURST),
        .S00_AXI_awcache(S00_AXI_2_AWCACHE),
        .S00_AXI_awid(S00_AXI_2_AWID),
        .S00_AXI_awlen(S00_AXI_2_AWLEN),
        .S00_AXI_awlock(S00_AXI_2_AWLOCK),
        .S00_AXI_awprot(S00_AXI_2_AWPROT),
        .S00_AXI_awqos(S00_AXI_2_AWQOS),
        .S00_AXI_awready(S00_AXI_2_AWREADY),
        .S00_AXI_awsize(S00_AXI_2_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_2_AWVALID),
        .S00_AXI_bid(S00_AXI_2_BID),
        .S00_AXI_bready(S00_AXI_2_BREADY),
        .S00_AXI_bresp(S00_AXI_2_BRESP),
        .S00_AXI_bvalid(S00_AXI_2_BVALID),
        .S00_AXI_rdata(S00_AXI_2_RDATA),
        .S00_AXI_rid(S00_AXI_2_RID),
        .S00_AXI_rlast(S00_AXI_2_RLAST),
        .S00_AXI_rready(S00_AXI_2_RREADY),
        .S00_AXI_rresp(S00_AXI_2_RRESP),
        .S00_AXI_rvalid(S00_AXI_2_RVALID),
        .S00_AXI_wdata(S00_AXI_2_WDATA),
        .S00_AXI_wid(S00_AXI_2_WID),
        .S00_AXI_wlast(S00_AXI_2_WLAST),
        .S00_AXI_wready(S00_AXI_2_WREADY),
        .S00_AXI_wstrb(S00_AXI_2_WSTRB),
        .S00_AXI_wvalid(S00_AXI_2_WVALID));
  OpenSSD2_axi_interconnect_0_1 HPIC3
       (.ACLK(PS_FCLK_CLK3),
        .ARESETN(ARESETN_2),
        .M00_ACLK(PS_FCLK_CLK3),
        .M00_ARESETN(M00_ARESETN_2),
        .M00_AXI_araddr(HPIC3_M00_AXI_ARADDR),
        .M00_AXI_arburst(HPIC3_M00_AXI_ARBURST),
        .M00_AXI_arcache(HPIC3_M00_AXI_ARCACHE),
        .M00_AXI_arid(HPIC3_M00_AXI_ARID),
        .M00_AXI_arlen(HPIC3_M00_AXI_ARLEN),
        .M00_AXI_arlock(HPIC3_M00_AXI_ARLOCK),
        .M00_AXI_arprot(HPIC3_M00_AXI_ARPROT),
        .M00_AXI_arqos(HPIC3_M00_AXI_ARQOS),
        .M00_AXI_arready(HPIC3_M00_AXI_ARREADY),
        .M00_AXI_arsize(HPIC3_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(HPIC3_M00_AXI_ARVALID),
        .M00_AXI_awaddr(HPIC3_M00_AXI_AWADDR),
        .M00_AXI_awburst(HPIC3_M00_AXI_AWBURST),
        .M00_AXI_awcache(HPIC3_M00_AXI_AWCACHE),
        .M00_AXI_awid(HPIC3_M00_AXI_AWID),
        .M00_AXI_awlen(HPIC3_M00_AXI_AWLEN),
        .M00_AXI_awlock(HPIC3_M00_AXI_AWLOCK),
        .M00_AXI_awprot(HPIC3_M00_AXI_AWPROT),
        .M00_AXI_awqos(HPIC3_M00_AXI_AWQOS),
        .M00_AXI_awready(HPIC3_M00_AXI_AWREADY),
        .M00_AXI_awsize(HPIC3_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(HPIC3_M00_AXI_AWVALID),
        .M00_AXI_bid(HPIC3_M00_AXI_BID),
        .M00_AXI_bready(HPIC3_M00_AXI_BREADY),
        .M00_AXI_bresp(HPIC3_M00_AXI_BRESP),
        .M00_AXI_bvalid(HPIC3_M00_AXI_BVALID),
        .M00_AXI_rdata(HPIC3_M00_AXI_RDATA),
        .M00_AXI_rid(HPIC3_M00_AXI_RID),
        .M00_AXI_rlast(HPIC3_M00_AXI_RLAST),
        .M00_AXI_rready(HPIC3_M00_AXI_RREADY),
        .M00_AXI_rresp(HPIC3_M00_AXI_RRESP),
        .M00_AXI_rvalid(HPIC3_M00_AXI_RVALID),
        .M00_AXI_wdata(HPIC3_M00_AXI_WDATA),
        .M00_AXI_wid(HPIC3_M00_AXI_WID),
        .M00_AXI_wlast(HPIC3_M00_AXI_WLAST),
        .M00_AXI_wready(HPIC3_M00_AXI_WREADY),
        .M00_AXI_wstrb(HPIC3_M00_AXI_WSTRB),
        .M00_AXI_wvalid(HPIC3_M00_AXI_WVALID),
        .S00_ACLK(PS_FCLK_CLK3),
        .S00_ARESETN(M00_ARESETN_2),
        .S00_AXI_araddr(NVMeHostController4L_0_m0_axi_ARADDR),
        .S00_AXI_arburst(NVMeHostController4L_0_m0_axi_ARBURST),
        .S00_AXI_arcache(NVMeHostController4L_0_m0_axi_ARCACHE),
        .S00_AXI_arid(NVMeHostController4L_0_m0_axi_ARID),
        .S00_AXI_arlen(NVMeHostController4L_0_m0_axi_ARLEN),
        .S00_AXI_arlock(NVMeHostController4L_0_m0_axi_ARLOCK),
        .S00_AXI_arprot(NVMeHostController4L_0_m0_axi_ARPROT),
        .S00_AXI_arqos(NVMeHostController4L_0_m0_axi_ARQOS),
        .S00_AXI_arready(NVMeHostController4L_0_m0_axi_ARREADY),
        .S00_AXI_arregion(NVMeHostController4L_0_m0_axi_ARREGION),
        .S00_AXI_arsize(NVMeHostController4L_0_m0_axi_ARSIZE),
        .S00_AXI_aruser(NVMeHostController4L_0_m0_axi_ARUSER),
        .S00_AXI_arvalid(NVMeHostController4L_0_m0_axi_ARVALID),
        .S00_AXI_awaddr(NVMeHostController4L_0_m0_axi_AWADDR),
        .S00_AXI_awburst(NVMeHostController4L_0_m0_axi_AWBURST),
        .S00_AXI_awcache(NVMeHostController4L_0_m0_axi_AWCACHE),
        .S00_AXI_awid(NVMeHostController4L_0_m0_axi_AWID),
        .S00_AXI_awlen(NVMeHostController4L_0_m0_axi_AWLEN),
        .S00_AXI_awlock(NVMeHostController4L_0_m0_axi_AWLOCK),
        .S00_AXI_awprot(NVMeHostController4L_0_m0_axi_AWPROT),
        .S00_AXI_awqos(NVMeHostController4L_0_m0_axi_AWQOS),
        .S00_AXI_awready(NVMeHostController4L_0_m0_axi_AWREADY),
        .S00_AXI_awregion(NVMeHostController4L_0_m0_axi_AWREGION),
        .S00_AXI_awsize(NVMeHostController4L_0_m0_axi_AWSIZE),
        .S00_AXI_awuser(NVMeHostController4L_0_m0_axi_AWUSER),
        .S00_AXI_awvalid(NVMeHostController4L_0_m0_axi_AWVALID),
        .S00_AXI_bid(NVMeHostController4L_0_m0_axi_BID),
        .S00_AXI_bready(NVMeHostController4L_0_m0_axi_BREADY),
        .S00_AXI_bresp(NVMeHostController4L_0_m0_axi_BRESP),
        .S00_AXI_bvalid(NVMeHostController4L_0_m0_axi_BVALID),
        .S00_AXI_rdata(NVMeHostController4L_0_m0_axi_RDATA),
        .S00_AXI_rid(NVMeHostController4L_0_m0_axi_RID),
        .S00_AXI_rlast(NVMeHostController4L_0_m0_axi_RLAST),
        .S00_AXI_rready(NVMeHostController4L_0_m0_axi_RREADY),
        .S00_AXI_rresp(NVMeHostController4L_0_m0_axi_RRESP),
        .S00_AXI_ruser(NVMeHostController4L_0_m0_axi_RUSER),
        .S00_AXI_rvalid(NVMeHostController4L_0_m0_axi_RVALID),
        .S00_AXI_wdata(NVMeHostController4L_0_m0_axi_WDATA),
        .S00_AXI_wlast(NVMeHostController4L_0_m0_axi_WLAST),
        .S00_AXI_wready(NVMeHostController4L_0_m0_axi_WREADY),
        .S00_AXI_wstrb(NVMeHostController4L_0_m0_axi_WSTRB),
        .S00_AXI_wuser(NVMeHostController4L_0_m0_axi_WUSER),
        .S00_AXI_wvalid(NVMeHostController4L_0_m0_axi_WVALID));
  OpenSSD2_NVMeHostController4L_0_0 NVMeHostController4L_0
       (.dev_irq_assert(NVMeHostController4L_0_dev_irq_assert),
        .m0_axi_aclk(PS_FCLK_CLK3),
        .m0_axi_araddr(NVMeHostController4L_0_m0_axi_ARADDR),
        .m0_axi_arburst(NVMeHostController4L_0_m0_axi_ARBURST),
        .m0_axi_arcache(NVMeHostController4L_0_m0_axi_ARCACHE),
        .m0_axi_aresetn(M00_ARESETN_2),
        .m0_axi_arid(NVMeHostController4L_0_m0_axi_ARID),
        .m0_axi_arlen(NVMeHostController4L_0_m0_axi_ARLEN),
        .m0_axi_arlock(NVMeHostController4L_0_m0_axi_ARLOCK),
        .m0_axi_arprot(NVMeHostController4L_0_m0_axi_ARPROT),
        .m0_axi_arqos(NVMeHostController4L_0_m0_axi_ARQOS),
        .m0_axi_arready(NVMeHostController4L_0_m0_axi_ARREADY),
        .m0_axi_arregion(NVMeHostController4L_0_m0_axi_ARREGION),
        .m0_axi_arsize(NVMeHostController4L_0_m0_axi_ARSIZE),
        .m0_axi_aruser(NVMeHostController4L_0_m0_axi_ARUSER),
        .m0_axi_arvalid(NVMeHostController4L_0_m0_axi_ARVALID),
        .m0_axi_awaddr(NVMeHostController4L_0_m0_axi_AWADDR),
        .m0_axi_awburst(NVMeHostController4L_0_m0_axi_AWBURST),
        .m0_axi_awcache(NVMeHostController4L_0_m0_axi_AWCACHE),
        .m0_axi_awid(NVMeHostController4L_0_m0_axi_AWID),
        .m0_axi_awlen(NVMeHostController4L_0_m0_axi_AWLEN),
        .m0_axi_awlock(NVMeHostController4L_0_m0_axi_AWLOCK),
        .m0_axi_awprot(NVMeHostController4L_0_m0_axi_AWPROT),
        .m0_axi_awqos(NVMeHostController4L_0_m0_axi_AWQOS),
        .m0_axi_awready(NVMeHostController4L_0_m0_axi_AWREADY),
        .m0_axi_awregion(NVMeHostController4L_0_m0_axi_AWREGION),
        .m0_axi_awsize(NVMeHostController4L_0_m0_axi_AWSIZE),
        .m0_axi_awuser(NVMeHostController4L_0_m0_axi_AWUSER),
        .m0_axi_awvalid(NVMeHostController4L_0_m0_axi_AWVALID),
        .m0_axi_bid(NVMeHostController4L_0_m0_axi_BID),
        .m0_axi_bready(NVMeHostController4L_0_m0_axi_BREADY),
        .m0_axi_bresp(NVMeHostController4L_0_m0_axi_BRESP),
        .m0_axi_buser(1'b0),
        .m0_axi_bvalid(NVMeHostController4L_0_m0_axi_BVALID),
        .m0_axi_rdata(NVMeHostController4L_0_m0_axi_RDATA),
        .m0_axi_rid(NVMeHostController4L_0_m0_axi_RID),
        .m0_axi_rlast(NVMeHostController4L_0_m0_axi_RLAST),
        .m0_axi_rready(NVMeHostController4L_0_m0_axi_RREADY),
        .m0_axi_rresp(NVMeHostController4L_0_m0_axi_RRESP),
        .m0_axi_ruser(NVMeHostController4L_0_m0_axi_RUSER),
        .m0_axi_rvalid(NVMeHostController4L_0_m0_axi_RVALID),
        .m0_axi_wdata(NVMeHostController4L_0_m0_axi_WDATA),
        .m0_axi_wlast(NVMeHostController4L_0_m0_axi_WLAST),
        .m0_axi_wready(NVMeHostController4L_0_m0_axi_WREADY),
        .m0_axi_wstrb(NVMeHostController4L_0_m0_axi_WSTRB),
        .m0_axi_wuser(NVMeHostController4L_0_m0_axi_WUSER),
        .m0_axi_wvalid(NVMeHostController4L_0_m0_axi_WVALID),
        .pcie_perst_n(pcie_perst_n_1),
        .pcie_ref_clk_n(pcie_ref_clk_n_1),
        .pcie_ref_clk_p(pcie_ref_clk_p_1),
        .pcie_rx_n(pcie_rx_n_1),
        .pcie_rx_p(pcie_rx_p_1),
        .pcie_tx_n(NVMeHostController4L_0_pcie_tx_n),
        .pcie_tx_p(NVMeHostController4L_0_pcie_tx_p),
        .s0_axi_aclk(PS_FCLK_CLK2),
        .s0_axi_araddr(GPIC1_M00_AXI_ARADDR),
        .s0_axi_aresetn(proc_sys_reset_2_peripheral_aresetn),
        .s0_axi_arprot(GPIC1_M00_AXI_ARPROT),
        .s0_axi_arready(GPIC1_M00_AXI_ARREADY),
        .s0_axi_arvalid(GPIC1_M00_AXI_ARVALID),
        .s0_axi_awaddr(GPIC1_M00_AXI_AWADDR),
        .s0_axi_awprot(GPIC1_M00_AXI_AWPROT),
        .s0_axi_awready(GPIC1_M00_AXI_AWREADY),
        .s0_axi_awvalid(GPIC1_M00_AXI_AWVALID),
        .s0_axi_bready(GPIC1_M00_AXI_BREADY),
        .s0_axi_bresp(GPIC1_M00_AXI_BRESP),
        .s0_axi_bvalid(GPIC1_M00_AXI_BVALID),
        .s0_axi_rdata(GPIC1_M00_AXI_RDATA),
        .s0_axi_rready(GPIC1_M00_AXI_RREADY),
        .s0_axi_rresp(GPIC1_M00_AXI_RRESP),
        .s0_axi_rvalid(GPIC1_M00_AXI_RVALID),
        .s0_axi_wdata(GPIC1_M00_AXI_WDATA),
        .s0_axi_wready(GPIC1_M00_AXI_WREADY),
        .s0_axi_wstrb(GPIC1_M00_AXI_WSTRB),
        .s0_axi_wvalid(GPIC1_M00_AXI_WVALID));
  (* BMM_INFO_PROCESSOR = "arm > OpenSSD2 axi_bram_ctrl_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  OpenSSD2_processing_system7_0_0 PS
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK2(PS_FCLK_CLK2),
        .FCLK_CLK3(PS_FCLK_CLK3),
        .FCLK_RESET2_N(PS_FCLK_RESET2_N),
        .FCLK_RESET3_N(PS_FCLK_RESET3_N),
        .IRQ_F2P(NVMeHostController4L_0_dev_irq_assert),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(PS_FCLK_CLK2),
        .M_AXI_GP0_ARADDR(PS_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(PS_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(PS_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(PS_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(PS_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(PS_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(PS_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(PS_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(PS_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(PS_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(PS_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(PS_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(PS_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(PS_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(PS_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(PS_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(PS_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(PS_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(PS_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(PS_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(PS_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(PS_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(PS_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(PS_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(PS_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(PS_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(PS_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(PS_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(PS_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(PS_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(PS_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(PS_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(PS_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(PS_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(PS_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(PS_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(PS_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(PS_M_AXI_GP0_WVALID),
        .M_AXI_GP1_ACLK(PS_FCLK_CLK2),
        .M_AXI_GP1_ARADDR(S00_AXI_2_ARADDR),
        .M_AXI_GP1_ARBURST(S00_AXI_2_ARBURST),
        .M_AXI_GP1_ARCACHE(S00_AXI_2_ARCACHE),
        .M_AXI_GP1_ARID(S00_AXI_2_ARID),
        .M_AXI_GP1_ARLEN(S00_AXI_2_ARLEN),
        .M_AXI_GP1_ARLOCK(S00_AXI_2_ARLOCK),
        .M_AXI_GP1_ARPROT(S00_AXI_2_ARPROT),
        .M_AXI_GP1_ARQOS(S00_AXI_2_ARQOS),
        .M_AXI_GP1_ARREADY(S00_AXI_2_ARREADY),
        .M_AXI_GP1_ARSIZE(S00_AXI_2_ARSIZE),
        .M_AXI_GP1_ARVALID(S00_AXI_2_ARVALID),
        .M_AXI_GP1_AWADDR(S00_AXI_2_AWADDR),
        .M_AXI_GP1_AWBURST(S00_AXI_2_AWBURST),
        .M_AXI_GP1_AWCACHE(S00_AXI_2_AWCACHE),
        .M_AXI_GP1_AWID(S00_AXI_2_AWID),
        .M_AXI_GP1_AWLEN(S00_AXI_2_AWLEN),
        .M_AXI_GP1_AWLOCK(S00_AXI_2_AWLOCK),
        .M_AXI_GP1_AWPROT(S00_AXI_2_AWPROT),
        .M_AXI_GP1_AWQOS(S00_AXI_2_AWQOS),
        .M_AXI_GP1_AWREADY(S00_AXI_2_AWREADY),
        .M_AXI_GP1_AWSIZE(S00_AXI_2_AWSIZE),
        .M_AXI_GP1_AWVALID(S00_AXI_2_AWVALID),
        .M_AXI_GP1_BID(S00_AXI_2_BID),
        .M_AXI_GP1_BREADY(S00_AXI_2_BREADY),
        .M_AXI_GP1_BRESP(S00_AXI_2_BRESP),
        .M_AXI_GP1_BVALID(S00_AXI_2_BVALID),
        .M_AXI_GP1_RDATA(S00_AXI_2_RDATA),
        .M_AXI_GP1_RID(S00_AXI_2_RID),
        .M_AXI_GP1_RLAST(S00_AXI_2_RLAST),
        .M_AXI_GP1_RREADY(S00_AXI_2_RREADY),
        .M_AXI_GP1_RRESP(S00_AXI_2_RRESP),
        .M_AXI_GP1_RVALID(S00_AXI_2_RVALID),
        .M_AXI_GP1_WDATA(S00_AXI_2_WDATA),
        .M_AXI_GP1_WID(S00_AXI_2_WID),
        .M_AXI_GP1_WLAST(S00_AXI_2_WLAST),
        .M_AXI_GP1_WREADY(S00_AXI_2_WREADY),
        .M_AXI_GP1_WSTRB(S00_AXI_2_WSTRB),
        .M_AXI_GP1_WVALID(S00_AXI_2_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP3_ACLK(PS_FCLK_CLK3),
        .S_AXI_HP3_ARADDR(HPIC3_M00_AXI_ARADDR),
        .S_AXI_HP3_ARBURST(HPIC3_M00_AXI_ARBURST),
        .S_AXI_HP3_ARCACHE(HPIC3_M00_AXI_ARCACHE),
        .S_AXI_HP3_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,HPIC3_M00_AXI_ARID}),
        .S_AXI_HP3_ARLEN(HPIC3_M00_AXI_ARLEN),
        .S_AXI_HP3_ARLOCK(HPIC3_M00_AXI_ARLOCK),
        .S_AXI_HP3_ARPROT(HPIC3_M00_AXI_ARPROT),
        .S_AXI_HP3_ARQOS(HPIC3_M00_AXI_ARQOS),
        .S_AXI_HP3_ARREADY(HPIC3_M00_AXI_ARREADY),
        .S_AXI_HP3_ARSIZE(HPIC3_M00_AXI_ARSIZE),
        .S_AXI_HP3_ARVALID(HPIC3_M00_AXI_ARVALID),
        .S_AXI_HP3_AWADDR(HPIC3_M00_AXI_AWADDR),
        .S_AXI_HP3_AWBURST(HPIC3_M00_AXI_AWBURST),
        .S_AXI_HP3_AWCACHE(HPIC3_M00_AXI_AWCACHE),
        .S_AXI_HP3_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,HPIC3_M00_AXI_AWID}),
        .S_AXI_HP3_AWLEN(HPIC3_M00_AXI_AWLEN),
        .S_AXI_HP3_AWLOCK(HPIC3_M00_AXI_AWLOCK),
        .S_AXI_HP3_AWPROT(HPIC3_M00_AXI_AWPROT),
        .S_AXI_HP3_AWQOS(HPIC3_M00_AXI_AWQOS),
        .S_AXI_HP3_AWREADY(HPIC3_M00_AXI_AWREADY),
        .S_AXI_HP3_AWSIZE(HPIC3_M00_AXI_AWSIZE),
        .S_AXI_HP3_AWVALID(HPIC3_M00_AXI_AWVALID),
        .S_AXI_HP3_BID(HPIC3_M00_AXI_BID),
        .S_AXI_HP3_BREADY(HPIC3_M00_AXI_BREADY),
        .S_AXI_HP3_BRESP(HPIC3_M00_AXI_BRESP),
        .S_AXI_HP3_BVALID(HPIC3_M00_AXI_BVALID),
        .S_AXI_HP3_RDATA(HPIC3_M00_AXI_RDATA),
        .S_AXI_HP3_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP3_RID(HPIC3_M00_AXI_RID),
        .S_AXI_HP3_RLAST(HPIC3_M00_AXI_RLAST),
        .S_AXI_HP3_RREADY(HPIC3_M00_AXI_RREADY),
        .S_AXI_HP3_RRESP(HPIC3_M00_AXI_RRESP),
        .S_AXI_HP3_RVALID(HPIC3_M00_AXI_RVALID),
        .S_AXI_HP3_WDATA(HPIC3_M00_AXI_WDATA),
        .S_AXI_HP3_WID({1'b0,1'b0,1'b0,1'b0,1'b0,HPIC3_M00_AXI_WID}),
        .S_AXI_HP3_WLAST(HPIC3_M00_AXI_WLAST),
        .S_AXI_HP3_WREADY(HPIC3_M00_AXI_WREADY),
        .S_AXI_HP3_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP3_WSTRB(HPIC3_M00_AXI_WSTRB),
        .S_AXI_HP3_WVALID(HPIC3_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x40000000 32 > OpenSSD2 axi_bram_ctrl_0_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  OpenSSD2_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(PS_FCLK_CLK2),
        .s_axi_araddr(axi_mem_intercon_M00_AXI_ARADDR[12:0]),
        .s_axi_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .s_axi_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_2_peripheral_aresetn),
        .s_axi_arid(axi_mem_intercon_M00_AXI_ARID),
        .s_axi_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .s_axi_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .s_axi_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .s_axi_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_mem_intercon_M00_AXI_AWADDR[12:0]),
        .s_axi_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .s_axi_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .s_axi_awid(axi_mem_intercon_M00_AXI_AWID),
        .s_axi_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .s_axi_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .s_axi_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .s_axi_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .s_axi_bid(axi_mem_intercon_M00_AXI_BID),
        .s_axi_bready(axi_mem_intercon_M00_AXI_BREADY),
        .s_axi_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .s_axi_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .s_axi_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .s_axi_rid(axi_mem_intercon_M00_AXI_RID),
        .s_axi_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .s_axi_rready(axi_mem_intercon_M00_AXI_RREADY),
        .s_axi_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .s_axi_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .s_axi_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .s_axi_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .s_axi_wready(axi_mem_intercon_M00_AXI_WREADY),
        .s_axi_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_mem_intercon_M00_AXI_WVALID));
  OpenSSD2_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  OpenSSD2_axi_mem_intercon_0 axi_mem_intercon
       (.ACLK(PS_FCLK_CLK2),
        .ARESETN(ARESETN_3),
        .M00_ACLK(PS_FCLK_CLK2),
        .M00_ARESETN(proc_sys_reset_2_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_intercon_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_intercon_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_intercon_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S00_ACLK(PS_FCLK_CLK2),
        .S00_ARESETN(proc_sys_reset_2_peripheral_aresetn),
        .S00_AXI_araddr(PS_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(PS_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(PS_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(PS_M_AXI_GP0_ARID),
        .S00_AXI_arlen(PS_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(PS_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(PS_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(PS_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(PS_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(PS_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(PS_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(PS_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(PS_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(PS_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(PS_M_AXI_GP0_AWID),
        .S00_AXI_awlen(PS_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(PS_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(PS_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(PS_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(PS_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(PS_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(PS_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(PS_M_AXI_GP0_BID),
        .S00_AXI_bready(PS_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(PS_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(PS_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(PS_M_AXI_GP0_RDATA),
        .S00_AXI_rid(PS_M_AXI_GP0_RID),
        .S00_AXI_rlast(PS_M_AXI_GP0_RLAST),
        .S00_AXI_rready(PS_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(PS_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(PS_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(PS_M_AXI_GP0_WDATA),
        .S00_AXI_wid(PS_M_AXI_GP0_WID),
        .S00_AXI_wlast(PS_M_AXI_GP0_WLAST),
        .S00_AXI_wready(PS_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(PS_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(PS_M_AXI_GP0_WVALID));
  OpenSSD2_proc_sys_reset_2_0 proc_sys_reset_2
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(PS_FCLK_RESET2_N),
        .interconnect_aresetn(ARESETN_3),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_2_peripheral_aresetn),
        .slowest_sync_clk(PS_FCLK_CLK2));
  OpenSSD2_proc_sys_reset_3_0 proc_sys_reset_3
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(PS_FCLK_RESET3_N),
        .interconnect_aresetn(ARESETN_2),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(M00_ARESETN_2),
        .slowest_sync_clk(PS_FCLK_CLK3));
endmodule

module OpenSSD2_axi_interconnect_0_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_ruser;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wuser;
  input S00_AXI_wvalid;

  wire HPIC3_ACLK_net;
  wire [0:0]HPIC3_ARESETN_net;
  wire [31:0]HPIC3_to_s00_couplers_ARADDR;
  wire [1:0]HPIC3_to_s00_couplers_ARBURST;
  wire [3:0]HPIC3_to_s00_couplers_ARCACHE;
  wire [0:0]HPIC3_to_s00_couplers_ARID;
  wire [7:0]HPIC3_to_s00_couplers_ARLEN;
  wire HPIC3_to_s00_couplers_ARLOCK;
  wire [2:0]HPIC3_to_s00_couplers_ARPROT;
  wire [3:0]HPIC3_to_s00_couplers_ARQOS;
  wire HPIC3_to_s00_couplers_ARREADY;
  wire [3:0]HPIC3_to_s00_couplers_ARREGION;
  wire [2:0]HPIC3_to_s00_couplers_ARSIZE;
  wire [0:0]HPIC3_to_s00_couplers_ARUSER;
  wire HPIC3_to_s00_couplers_ARVALID;
  wire [31:0]HPIC3_to_s00_couplers_AWADDR;
  wire [1:0]HPIC3_to_s00_couplers_AWBURST;
  wire [3:0]HPIC3_to_s00_couplers_AWCACHE;
  wire [0:0]HPIC3_to_s00_couplers_AWID;
  wire [7:0]HPIC3_to_s00_couplers_AWLEN;
  wire HPIC3_to_s00_couplers_AWLOCK;
  wire [2:0]HPIC3_to_s00_couplers_AWPROT;
  wire [3:0]HPIC3_to_s00_couplers_AWQOS;
  wire HPIC3_to_s00_couplers_AWREADY;
  wire [3:0]HPIC3_to_s00_couplers_AWREGION;
  wire [2:0]HPIC3_to_s00_couplers_AWSIZE;
  wire [0:0]HPIC3_to_s00_couplers_AWUSER;
  wire HPIC3_to_s00_couplers_AWVALID;
  wire [0:0]HPIC3_to_s00_couplers_BID;
  wire HPIC3_to_s00_couplers_BREADY;
  wire [1:0]HPIC3_to_s00_couplers_BRESP;
  wire HPIC3_to_s00_couplers_BVALID;
  wire [63:0]HPIC3_to_s00_couplers_RDATA;
  wire [0:0]HPIC3_to_s00_couplers_RID;
  wire HPIC3_to_s00_couplers_RLAST;
  wire HPIC3_to_s00_couplers_RREADY;
  wire [1:0]HPIC3_to_s00_couplers_RRESP;
  wire [0:0]HPIC3_to_s00_couplers_RUSER;
  wire HPIC3_to_s00_couplers_RVALID;
  wire [63:0]HPIC3_to_s00_couplers_WDATA;
  wire HPIC3_to_s00_couplers_WLAST;
  wire HPIC3_to_s00_couplers_WREADY;
  wire [7:0]HPIC3_to_s00_couplers_WSTRB;
  wire [0:0]HPIC3_to_s00_couplers_WUSER;
  wire HPIC3_to_s00_couplers_WVALID;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire [31:0]s00_couplers_to_HPIC3_ARADDR;
  wire [1:0]s00_couplers_to_HPIC3_ARBURST;
  wire [3:0]s00_couplers_to_HPIC3_ARCACHE;
  wire [0:0]s00_couplers_to_HPIC3_ARID;
  wire [3:0]s00_couplers_to_HPIC3_ARLEN;
  wire [1:0]s00_couplers_to_HPIC3_ARLOCK;
  wire [2:0]s00_couplers_to_HPIC3_ARPROT;
  wire [3:0]s00_couplers_to_HPIC3_ARQOS;
  wire s00_couplers_to_HPIC3_ARREADY;
  wire [2:0]s00_couplers_to_HPIC3_ARSIZE;
  wire s00_couplers_to_HPIC3_ARVALID;
  wire [31:0]s00_couplers_to_HPIC3_AWADDR;
  wire [1:0]s00_couplers_to_HPIC3_AWBURST;
  wire [3:0]s00_couplers_to_HPIC3_AWCACHE;
  wire [0:0]s00_couplers_to_HPIC3_AWID;
  wire [3:0]s00_couplers_to_HPIC3_AWLEN;
  wire [1:0]s00_couplers_to_HPIC3_AWLOCK;
  wire [2:0]s00_couplers_to_HPIC3_AWPROT;
  wire [3:0]s00_couplers_to_HPIC3_AWQOS;
  wire s00_couplers_to_HPIC3_AWREADY;
  wire [2:0]s00_couplers_to_HPIC3_AWSIZE;
  wire s00_couplers_to_HPIC3_AWVALID;
  wire [5:0]s00_couplers_to_HPIC3_BID;
  wire s00_couplers_to_HPIC3_BREADY;
  wire [1:0]s00_couplers_to_HPIC3_BRESP;
  wire s00_couplers_to_HPIC3_BVALID;
  wire [63:0]s00_couplers_to_HPIC3_RDATA;
  wire [5:0]s00_couplers_to_HPIC3_RID;
  wire s00_couplers_to_HPIC3_RLAST;
  wire s00_couplers_to_HPIC3_RREADY;
  wire [1:0]s00_couplers_to_HPIC3_RRESP;
  wire s00_couplers_to_HPIC3_RVALID;
  wire [63:0]s00_couplers_to_HPIC3_WDATA;
  wire [0:0]s00_couplers_to_HPIC3_WID;
  wire s00_couplers_to_HPIC3_WLAST;
  wire s00_couplers_to_HPIC3_WREADY;
  wire [7:0]s00_couplers_to_HPIC3_WSTRB;
  wire s00_couplers_to_HPIC3_WVALID;

  assign HPIC3_ACLK_net = M00_ACLK;
  assign HPIC3_ARESETN_net = M00_ARESETN[0];
  assign HPIC3_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign HPIC3_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign HPIC3_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign HPIC3_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign HPIC3_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign HPIC3_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign HPIC3_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign HPIC3_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign HPIC3_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign HPIC3_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign HPIC3_to_s00_couplers_ARUSER = S00_AXI_aruser[0];
  assign HPIC3_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign HPIC3_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign HPIC3_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign HPIC3_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign HPIC3_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign HPIC3_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign HPIC3_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign HPIC3_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign HPIC3_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign HPIC3_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign HPIC3_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign HPIC3_to_s00_couplers_AWUSER = S00_AXI_awuser[0];
  assign HPIC3_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign HPIC3_to_s00_couplers_BREADY = S00_AXI_bready;
  assign HPIC3_to_s00_couplers_RREADY = S00_AXI_rready;
  assign HPIC3_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign HPIC3_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign HPIC3_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign HPIC3_to_s00_couplers_WUSER = S00_AXI_wuser[0];
  assign HPIC3_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign M00_AXI_araddr[31:0] = s00_couplers_to_HPIC3_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_HPIC3_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_HPIC3_ARCACHE;
  assign M00_AXI_arid[0] = s00_couplers_to_HPIC3_ARID;
  assign M00_AXI_arlen[3:0] = s00_couplers_to_HPIC3_ARLEN;
  assign M00_AXI_arlock[1:0] = s00_couplers_to_HPIC3_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_HPIC3_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_HPIC3_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_HPIC3_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_HPIC3_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_HPIC3_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_HPIC3_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_HPIC3_AWCACHE;
  assign M00_AXI_awid[0] = s00_couplers_to_HPIC3_AWID;
  assign M00_AXI_awlen[3:0] = s00_couplers_to_HPIC3_AWLEN;
  assign M00_AXI_awlock[1:0] = s00_couplers_to_HPIC3_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_HPIC3_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_HPIC3_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_HPIC3_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_HPIC3_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_HPIC3_BREADY;
  assign M00_AXI_rready = s00_couplers_to_HPIC3_RREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_HPIC3_WDATA;
  assign M00_AXI_wid[0] = s00_couplers_to_HPIC3_WID;
  assign M00_AXI_wlast = s00_couplers_to_HPIC3_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_HPIC3_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_HPIC3_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = HPIC3_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = HPIC3_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = HPIC3_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = HPIC3_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = HPIC3_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = HPIC3_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = HPIC3_to_s00_couplers_RID;
  assign S00_AXI_rlast = HPIC3_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = HPIC3_to_s00_couplers_RRESP;
  assign S00_AXI_ruser[0] = HPIC3_to_s00_couplers_RUSER;
  assign S00_AXI_rvalid = HPIC3_to_s00_couplers_RVALID;
  assign S00_AXI_wready = HPIC3_to_s00_couplers_WREADY;
  assign s00_couplers_to_HPIC3_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_HPIC3_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_HPIC3_BID = M00_AXI_bid[5:0];
  assign s00_couplers_to_HPIC3_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_HPIC3_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_HPIC3_RDATA = M00_AXI_rdata[63:0];
  assign s00_couplers_to_HPIC3_RID = M00_AXI_rid[5:0];
  assign s00_couplers_to_HPIC3_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_HPIC3_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_HPIC3_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_HPIC3_WREADY = M00_AXI_wready;
  s00_couplers_imp_1JGQSCA s00_couplers
       (.M_ACLK(HPIC3_ACLK_net),
        .M_ARESETN(HPIC3_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_HPIC3_ARADDR),
        .M_AXI_arburst(s00_couplers_to_HPIC3_ARBURST),
        .M_AXI_arcache(s00_couplers_to_HPIC3_ARCACHE),
        .M_AXI_arid(s00_couplers_to_HPIC3_ARID),
        .M_AXI_arlen(s00_couplers_to_HPIC3_ARLEN),
        .M_AXI_arlock(s00_couplers_to_HPIC3_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_HPIC3_ARPROT),
        .M_AXI_arqos(s00_couplers_to_HPIC3_ARQOS),
        .M_AXI_arready(s00_couplers_to_HPIC3_ARREADY),
        .M_AXI_arsize(s00_couplers_to_HPIC3_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_HPIC3_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_HPIC3_AWADDR),
        .M_AXI_awburst(s00_couplers_to_HPIC3_AWBURST),
        .M_AXI_awcache(s00_couplers_to_HPIC3_AWCACHE),
        .M_AXI_awid(s00_couplers_to_HPIC3_AWID),
        .M_AXI_awlen(s00_couplers_to_HPIC3_AWLEN),
        .M_AXI_awlock(s00_couplers_to_HPIC3_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_HPIC3_AWPROT),
        .M_AXI_awqos(s00_couplers_to_HPIC3_AWQOS),
        .M_AXI_awready(s00_couplers_to_HPIC3_AWREADY),
        .M_AXI_awsize(s00_couplers_to_HPIC3_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_HPIC3_AWVALID),
        .M_AXI_bid(s00_couplers_to_HPIC3_BID),
        .M_AXI_bready(s00_couplers_to_HPIC3_BREADY),
        .M_AXI_bresp(s00_couplers_to_HPIC3_BRESP),
        .M_AXI_bvalid(s00_couplers_to_HPIC3_BVALID),
        .M_AXI_rdata(s00_couplers_to_HPIC3_RDATA),
        .M_AXI_rid(s00_couplers_to_HPIC3_RID),
        .M_AXI_rlast(s00_couplers_to_HPIC3_RLAST),
        .M_AXI_rready(s00_couplers_to_HPIC3_RREADY),
        .M_AXI_rresp(s00_couplers_to_HPIC3_RRESP),
        .M_AXI_rvalid(s00_couplers_to_HPIC3_RVALID),
        .M_AXI_wdata(s00_couplers_to_HPIC3_WDATA),
        .M_AXI_wid(s00_couplers_to_HPIC3_WID),
        .M_AXI_wlast(s00_couplers_to_HPIC3_WLAST),
        .M_AXI_wready(s00_couplers_to_HPIC3_WREADY),
        .M_AXI_wstrb(s00_couplers_to_HPIC3_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_HPIC3_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(HPIC3_to_s00_couplers_ARADDR),
        .S_AXI_arburst(HPIC3_to_s00_couplers_ARBURST),
        .S_AXI_arcache(HPIC3_to_s00_couplers_ARCACHE),
        .S_AXI_arid(HPIC3_to_s00_couplers_ARID),
        .S_AXI_arlen(HPIC3_to_s00_couplers_ARLEN),
        .S_AXI_arlock(HPIC3_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(HPIC3_to_s00_couplers_ARPROT),
        .S_AXI_arqos(HPIC3_to_s00_couplers_ARQOS),
        .S_AXI_arready(HPIC3_to_s00_couplers_ARREADY),
        .S_AXI_arregion(HPIC3_to_s00_couplers_ARREGION),
        .S_AXI_arsize(HPIC3_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(HPIC3_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(HPIC3_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(HPIC3_to_s00_couplers_AWADDR),
        .S_AXI_awburst(HPIC3_to_s00_couplers_AWBURST),
        .S_AXI_awcache(HPIC3_to_s00_couplers_AWCACHE),
        .S_AXI_awid(HPIC3_to_s00_couplers_AWID),
        .S_AXI_awlen(HPIC3_to_s00_couplers_AWLEN),
        .S_AXI_awlock(HPIC3_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(HPIC3_to_s00_couplers_AWPROT),
        .S_AXI_awqos(HPIC3_to_s00_couplers_AWQOS),
        .S_AXI_awready(HPIC3_to_s00_couplers_AWREADY),
        .S_AXI_awregion(HPIC3_to_s00_couplers_AWREGION),
        .S_AXI_awsize(HPIC3_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(HPIC3_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(HPIC3_to_s00_couplers_AWVALID),
        .S_AXI_bid(HPIC3_to_s00_couplers_BID),
        .S_AXI_bready(HPIC3_to_s00_couplers_BREADY),
        .S_AXI_bresp(HPIC3_to_s00_couplers_BRESP),
        .S_AXI_bvalid(HPIC3_to_s00_couplers_BVALID),
        .S_AXI_rdata(HPIC3_to_s00_couplers_RDATA),
        .S_AXI_rid(HPIC3_to_s00_couplers_RID),
        .S_AXI_rlast(HPIC3_to_s00_couplers_RLAST),
        .S_AXI_rready(HPIC3_to_s00_couplers_RREADY),
        .S_AXI_rresp(HPIC3_to_s00_couplers_RRESP),
        .S_AXI_ruser(HPIC3_to_s00_couplers_RUSER),
        .S_AXI_rvalid(HPIC3_to_s00_couplers_RVALID),
        .S_AXI_wdata(HPIC3_to_s00_couplers_WDATA),
        .S_AXI_wlast(HPIC3_to_s00_couplers_WLAST),
        .S_AXI_wready(HPIC3_to_s00_couplers_WREADY),
        .S_AXI_wstrb(HPIC3_to_s00_couplers_WSTRB),
        .S_AXI_wuser(HPIC3_to_s00_couplers_WUSER),
        .S_AXI_wvalid(HPIC3_to_s00_couplers_WVALID));
endmodule

module OpenSSD2_axi_interconnect_0_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire GPIC1_ACLK_net;
  wire [0:0]GPIC1_ARESETN_net;
  wire [31:0]GPIC1_to_s00_couplers_ARADDR;
  wire [1:0]GPIC1_to_s00_couplers_ARBURST;
  wire [3:0]GPIC1_to_s00_couplers_ARCACHE;
  wire [11:0]GPIC1_to_s00_couplers_ARID;
  wire [3:0]GPIC1_to_s00_couplers_ARLEN;
  wire [1:0]GPIC1_to_s00_couplers_ARLOCK;
  wire [2:0]GPIC1_to_s00_couplers_ARPROT;
  wire [3:0]GPIC1_to_s00_couplers_ARQOS;
  wire GPIC1_to_s00_couplers_ARREADY;
  wire [2:0]GPIC1_to_s00_couplers_ARSIZE;
  wire GPIC1_to_s00_couplers_ARVALID;
  wire [31:0]GPIC1_to_s00_couplers_AWADDR;
  wire [1:0]GPIC1_to_s00_couplers_AWBURST;
  wire [3:0]GPIC1_to_s00_couplers_AWCACHE;
  wire [11:0]GPIC1_to_s00_couplers_AWID;
  wire [3:0]GPIC1_to_s00_couplers_AWLEN;
  wire [1:0]GPIC1_to_s00_couplers_AWLOCK;
  wire [2:0]GPIC1_to_s00_couplers_AWPROT;
  wire [3:0]GPIC1_to_s00_couplers_AWQOS;
  wire GPIC1_to_s00_couplers_AWREADY;
  wire [2:0]GPIC1_to_s00_couplers_AWSIZE;
  wire GPIC1_to_s00_couplers_AWVALID;
  wire [11:0]GPIC1_to_s00_couplers_BID;
  wire GPIC1_to_s00_couplers_BREADY;
  wire [1:0]GPIC1_to_s00_couplers_BRESP;
  wire GPIC1_to_s00_couplers_BVALID;
  wire [31:0]GPIC1_to_s00_couplers_RDATA;
  wire [11:0]GPIC1_to_s00_couplers_RID;
  wire GPIC1_to_s00_couplers_RLAST;
  wire GPIC1_to_s00_couplers_RREADY;
  wire [1:0]GPIC1_to_s00_couplers_RRESP;
  wire GPIC1_to_s00_couplers_RVALID;
  wire [31:0]GPIC1_to_s00_couplers_WDATA;
  wire [11:0]GPIC1_to_s00_couplers_WID;
  wire GPIC1_to_s00_couplers_WLAST;
  wire GPIC1_to_s00_couplers_WREADY;
  wire [3:0]GPIC1_to_s00_couplers_WSTRB;
  wire GPIC1_to_s00_couplers_WVALID;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire [31:0]s00_couplers_to_GPIC1_ARADDR;
  wire [2:0]s00_couplers_to_GPIC1_ARPROT;
  wire s00_couplers_to_GPIC1_ARREADY;
  wire s00_couplers_to_GPIC1_ARVALID;
  wire [31:0]s00_couplers_to_GPIC1_AWADDR;
  wire [2:0]s00_couplers_to_GPIC1_AWPROT;
  wire s00_couplers_to_GPIC1_AWREADY;
  wire s00_couplers_to_GPIC1_AWVALID;
  wire s00_couplers_to_GPIC1_BREADY;
  wire [1:0]s00_couplers_to_GPIC1_BRESP;
  wire s00_couplers_to_GPIC1_BVALID;
  wire [31:0]s00_couplers_to_GPIC1_RDATA;
  wire s00_couplers_to_GPIC1_RREADY;
  wire [1:0]s00_couplers_to_GPIC1_RRESP;
  wire s00_couplers_to_GPIC1_RVALID;
  wire [31:0]s00_couplers_to_GPIC1_WDATA;
  wire s00_couplers_to_GPIC1_WREADY;
  wire [3:0]s00_couplers_to_GPIC1_WSTRB;
  wire s00_couplers_to_GPIC1_WVALID;

  assign GPIC1_ACLK_net = M00_ACLK;
  assign GPIC1_ARESETN_net = M00_ARESETN[0];
  assign GPIC1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign GPIC1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign GPIC1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign GPIC1_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign GPIC1_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign GPIC1_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign GPIC1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign GPIC1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign GPIC1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign GPIC1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign GPIC1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign GPIC1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign GPIC1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign GPIC1_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign GPIC1_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign GPIC1_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign GPIC1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign GPIC1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign GPIC1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign GPIC1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign GPIC1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign GPIC1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign GPIC1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign GPIC1_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign GPIC1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign GPIC1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign GPIC1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign M00_AXI_araddr[31:0] = s00_couplers_to_GPIC1_ARADDR;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_GPIC1_ARPROT;
  assign M00_AXI_arvalid = s00_couplers_to_GPIC1_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_GPIC1_AWADDR;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_GPIC1_AWPROT;
  assign M00_AXI_awvalid = s00_couplers_to_GPIC1_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_GPIC1_BREADY;
  assign M00_AXI_rready = s00_couplers_to_GPIC1_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_GPIC1_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_GPIC1_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_GPIC1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = GPIC1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = GPIC1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = GPIC1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = GPIC1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = GPIC1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = GPIC1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = GPIC1_to_s00_couplers_RID;
  assign S00_AXI_rlast = GPIC1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = GPIC1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = GPIC1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = GPIC1_to_s00_couplers_WREADY;
  assign s00_couplers_to_GPIC1_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_GPIC1_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_GPIC1_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_GPIC1_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_GPIC1_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_GPIC1_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_GPIC1_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_GPIC1_WREADY = M00_AXI_wready;
  s00_couplers_imp_RUHP0G s00_couplers
       (.M_ACLK(GPIC1_ACLK_net),
        .M_ARESETN(GPIC1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_GPIC1_ARADDR),
        .M_AXI_arprot(s00_couplers_to_GPIC1_ARPROT),
        .M_AXI_arready(s00_couplers_to_GPIC1_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_GPIC1_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_GPIC1_AWADDR),
        .M_AXI_awprot(s00_couplers_to_GPIC1_AWPROT),
        .M_AXI_awready(s00_couplers_to_GPIC1_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_GPIC1_AWVALID),
        .M_AXI_bready(s00_couplers_to_GPIC1_BREADY),
        .M_AXI_bresp(s00_couplers_to_GPIC1_BRESP),
        .M_AXI_bvalid(s00_couplers_to_GPIC1_BVALID),
        .M_AXI_rdata(s00_couplers_to_GPIC1_RDATA),
        .M_AXI_rready(s00_couplers_to_GPIC1_RREADY),
        .M_AXI_rresp(s00_couplers_to_GPIC1_RRESP),
        .M_AXI_rvalid(s00_couplers_to_GPIC1_RVALID),
        .M_AXI_wdata(s00_couplers_to_GPIC1_WDATA),
        .M_AXI_wready(s00_couplers_to_GPIC1_WREADY),
        .M_AXI_wstrb(s00_couplers_to_GPIC1_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_GPIC1_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(GPIC1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(GPIC1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(GPIC1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(GPIC1_to_s00_couplers_ARID),
        .S_AXI_arlen(GPIC1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(GPIC1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(GPIC1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(GPIC1_to_s00_couplers_ARQOS),
        .S_AXI_arready(GPIC1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(GPIC1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(GPIC1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(GPIC1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(GPIC1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(GPIC1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(GPIC1_to_s00_couplers_AWID),
        .S_AXI_awlen(GPIC1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(GPIC1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(GPIC1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(GPIC1_to_s00_couplers_AWQOS),
        .S_AXI_awready(GPIC1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(GPIC1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(GPIC1_to_s00_couplers_AWVALID),
        .S_AXI_bid(GPIC1_to_s00_couplers_BID),
        .S_AXI_bready(GPIC1_to_s00_couplers_BREADY),
        .S_AXI_bresp(GPIC1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(GPIC1_to_s00_couplers_BVALID),
        .S_AXI_rdata(GPIC1_to_s00_couplers_RDATA),
        .S_AXI_rid(GPIC1_to_s00_couplers_RID),
        .S_AXI_rlast(GPIC1_to_s00_couplers_RLAST),
        .S_AXI_rready(GPIC1_to_s00_couplers_RREADY),
        .S_AXI_rresp(GPIC1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(GPIC1_to_s00_couplers_RVALID),
        .S_AXI_wdata(GPIC1_to_s00_couplers_WDATA),
        .S_AXI_wid(GPIC1_to_s00_couplers_WID),
        .S_AXI_wlast(GPIC1_to_s00_couplers_WLAST),
        .S_AXI_wready(GPIC1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(GPIC1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(GPIC1_to_s00_couplers_WVALID));
endmodule

module OpenSSD2_axi_mem_intercon_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [11:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [11:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [11:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [11:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire axi_mem_intercon_ACLK_net;
  wire [0:0]axi_mem_intercon_ARESETN_net;
  wire [31:0]axi_mem_intercon_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARCACHE;
  wire [11:0]axi_mem_intercon_to_s00_couplers_ARID;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARLEN;
  wire [1:0]axi_mem_intercon_to_s00_couplers_ARLOCK;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARPROT;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARQOS;
  wire axi_mem_intercon_to_s00_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARSIZE;
  wire axi_mem_intercon_to_s00_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWCACHE;
  wire [11:0]axi_mem_intercon_to_s00_couplers_AWID;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWLEN;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWLOCK;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWPROT;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWQOS;
  wire axi_mem_intercon_to_s00_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_to_s00_couplers_AWVALID;
  wire [11:0]axi_mem_intercon_to_s00_couplers_BID;
  wire axi_mem_intercon_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_BRESP;
  wire axi_mem_intercon_to_s00_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_RDATA;
  wire [11:0]axi_mem_intercon_to_s00_couplers_RID;
  wire axi_mem_intercon_to_s00_couplers_RLAST;
  wire axi_mem_intercon_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_RRESP;
  wire axi_mem_intercon_to_s00_couplers_RVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_WDATA;
  wire [11:0]axi_mem_intercon_to_s00_couplers_WID;
  wire axi_mem_intercon_to_s00_couplers_WLAST;
  wire axi_mem_intercon_to_s00_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_ARADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_ARBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_ARCACHE;
  wire [11:0]s00_couplers_to_axi_mem_intercon_ARID;
  wire [7:0]s00_couplers_to_axi_mem_intercon_ARLEN;
  wire [0:0]s00_couplers_to_axi_mem_intercon_ARLOCK;
  wire [2:0]s00_couplers_to_axi_mem_intercon_ARPROT;
  wire s00_couplers_to_axi_mem_intercon_ARREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_ARSIZE;
  wire s00_couplers_to_axi_mem_intercon_ARVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_AWADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_AWBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_AWCACHE;
  wire [11:0]s00_couplers_to_axi_mem_intercon_AWID;
  wire [7:0]s00_couplers_to_axi_mem_intercon_AWLEN;
  wire [0:0]s00_couplers_to_axi_mem_intercon_AWLOCK;
  wire [2:0]s00_couplers_to_axi_mem_intercon_AWPROT;
  wire s00_couplers_to_axi_mem_intercon_AWREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_AWSIZE;
  wire s00_couplers_to_axi_mem_intercon_AWVALID;
  wire [11:0]s00_couplers_to_axi_mem_intercon_BID;
  wire s00_couplers_to_axi_mem_intercon_BREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_BRESP;
  wire s00_couplers_to_axi_mem_intercon_BVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_RDATA;
  wire [11:0]s00_couplers_to_axi_mem_intercon_RID;
  wire s00_couplers_to_axi_mem_intercon_RLAST;
  wire s00_couplers_to_axi_mem_intercon_RREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_RRESP;
  wire s00_couplers_to_axi_mem_intercon_RVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_WDATA;
  wire s00_couplers_to_axi_mem_intercon_WLAST;
  wire s00_couplers_to_axi_mem_intercon_WREADY;
  wire [3:0]s00_couplers_to_axi_mem_intercon_WSTRB;
  wire s00_couplers_to_axi_mem_intercon_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_mem_intercon_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_mem_intercon_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_mem_intercon_ARCACHE;
  assign M00_AXI_arid[11:0] = s00_couplers_to_axi_mem_intercon_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_mem_intercon_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_axi_mem_intercon_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_mem_intercon_ARPROT;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_mem_intercon_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_mem_intercon_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_mem_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_mem_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_mem_intercon_AWCACHE;
  assign M00_AXI_awid[11:0] = s00_couplers_to_axi_mem_intercon_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_mem_intercon_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_axi_mem_intercon_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_mem_intercon_AWPROT;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_mem_intercon_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_mem_intercon_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_mem_intercon_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_mem_intercon_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_mem_intercon_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_mem_intercon_WLAST;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_mem_intercon_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_mem_intercon_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = axi_mem_intercon_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_mem_intercon_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_mem_intercon_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_mem_intercon_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_mem_intercon_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_intercon_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_intercon_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_intercon_to_s00_couplers_WREADY;
  assign axi_mem_intercon_ACLK_net = M00_ACLK;
  assign axi_mem_intercon_ARESETN_net = M00_ARESETN[0];
  assign axi_mem_intercon_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_mem_intercon_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_mem_intercon_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_mem_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_mem_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_mem_intercon_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_mem_intercon_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_mem_intercon_BID = M00_AXI_bid[11:0];
  assign s00_couplers_to_axi_mem_intercon_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_mem_intercon_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_mem_intercon_RID = M00_AXI_rid[11:0];
  assign s00_couplers_to_axi_mem_intercon_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_mem_intercon_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_mem_intercon_WREADY = M00_AXI_wready;
  s00_couplers_imp_13SQHZV s00_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_mem_intercon_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_mem_intercon_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_mem_intercon_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_mem_intercon_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_mem_intercon_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_mem_intercon_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_mem_intercon_ARPROT),
        .M_AXI_arready(s00_couplers_to_axi_mem_intercon_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_mem_intercon_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_mem_intercon_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_mem_intercon_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_mem_intercon_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_mem_intercon_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_mem_intercon_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_mem_intercon_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_mem_intercon_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_mem_intercon_AWPROT),
        .M_AXI_awready(s00_couplers_to_axi_mem_intercon_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_mem_intercon_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_mem_intercon_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_mem_intercon_BID),
        .M_AXI_bready(s00_couplers_to_axi_mem_intercon_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_mem_intercon_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_mem_intercon_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_mem_intercon_RDATA),
        .M_AXI_rid(s00_couplers_to_axi_mem_intercon_RID),
        .M_AXI_rlast(s00_couplers_to_axi_mem_intercon_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_mem_intercon_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_mem_intercon_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_mem_intercon_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_mem_intercon_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_mem_intercon_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_mem_intercon_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_mem_intercon_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_mem_intercon_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_mem_intercon_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_mem_intercon_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_mem_intercon_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_mem_intercon_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_mem_intercon_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_mem_intercon_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_mem_intercon_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_mem_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_mem_intercon_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_mem_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_mem_intercon_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_mem_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_mem_intercon_to_s00_couplers_BID),
        .S_AXI_bready(axi_mem_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_mem_intercon_to_s00_couplers_RID),
        .S_AXI_rlast(axi_mem_intercon_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_mem_intercon_to_s00_couplers_WID),
        .S_AXI_wlast(axi_mem_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_13SQHZV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [11:0]auto_pc_to_s00_couplers_ARID;
  wire [7:0]auto_pc_to_s00_couplers_ARLEN;
  wire [0:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [11:0]auto_pc_to_s00_couplers_AWID;
  wire [7:0]auto_pc_to_s00_couplers_AWLEN;
  wire [0:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire [11:0]auto_pc_to_s00_couplers_BID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire [11:0]auto_pc_to_s00_couplers_RID;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = auto_pc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = auto_pc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BID = M_AXI_bid[11:0];
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RID = M_AXI_rid[11:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  OpenSSD2_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_s00_couplers_BID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_s00_couplers_RID),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_1JGQSCA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_ruser;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input [0:0]S_AXI_wuser;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [0:0]auto_pc_to_s00_couplers_ARID;
  wire [3:0]auto_pc_to_s00_couplers_ARLEN;
  wire [1:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [0:0]auto_pc_to_s00_couplers_AWID;
  wire [3:0]auto_pc_to_s00_couplers_AWLEN;
  wire [1:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire [5:0]auto_pc_to_s00_couplers_BID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [63:0]auto_pc_to_s00_couplers_RDATA;
  wire [5:0]auto_pc_to_s00_couplers_RID;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [63:0]auto_pc_to_s00_couplers_WDATA;
  wire [0:0]auto_pc_to_s00_couplers_WID;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [7:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [0:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [3:0]s00_couplers_to_auto_pc_ARREGION;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire [0:0]s00_couplers_to_auto_pc_ARUSER;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire [0:0]s00_couplers_to_auto_pc_AWUSER;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [0:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [63:0]s00_couplers_to_auto_pc_RDATA;
  wire [0:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire [0:0]s00_couplers_to_auto_pc_RUSER;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [63:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [7:0]s00_couplers_to_auto_pc_WSTRB;
  wire [0:0]s00_couplers_to_auto_pc_WUSER;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[0] = auto_pc_to_s00_couplers_ARID;
  assign M_AXI_arlen[3:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_pc_to_s00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wid[0] = auto_pc_to_s00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_ruser[0] = s00_couplers_to_auto_pc_RUSER;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_s00_couplers_RID = M_AXI_rid[5:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARUSER = S_AXI_aruser[0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWUSER = S_AXI_awuser[0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_pc_WUSER = S_AXI_wuser[0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  OpenSSD2_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_s00_couplers_BID[0]),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_s00_couplers_RID[0]),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_s00_couplers_WID),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_aruser(s00_couplers_to_auto_pc_ARUSER),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awuser(s00_couplers_to_auto_pc_AWUSER),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_ruser(s00_couplers_to_auto_pc_RUSER),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wuser(s00_couplers_to_auto_pc_WUSER),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_RUHP0G
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  OpenSSD2_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
