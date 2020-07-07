-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:processing_system7:5.5
-- IP Revision: 3

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT OpenSSD2_processing_system7_0_0
  PORT (
    ENET0_PTP_DELAY_REQ_RX : OUT STD_LOGIC;
    ENET0_PTP_DELAY_REQ_TX : OUT STD_LOGIC;
    ENET0_PTP_PDELAY_REQ_RX : OUT STD_LOGIC;
    ENET0_PTP_PDELAY_REQ_TX : OUT STD_LOGIC;
    ENET0_PTP_PDELAY_RESP_RX : OUT STD_LOGIC;
    ENET0_PTP_PDELAY_RESP_TX : OUT STD_LOGIC;
    ENET0_PTP_SYNC_FRAME_RX : OUT STD_LOGIC;
    ENET0_PTP_SYNC_FRAME_TX : OUT STD_LOGIC;
    ENET0_SOF_RX : OUT STD_LOGIC;
    ENET0_SOF_TX : OUT STD_LOGIC;
    USB0_PORT_INDCTL : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    USB0_VBUS_PWRSELECT : OUT STD_LOGIC;
    USB0_VBUS_PWRFAULT : IN STD_LOGIC;
    M_AXI_GP0_ARVALID : OUT STD_LOGIC;
    M_AXI_GP0_AWVALID : OUT STD_LOGIC;
    M_AXI_GP0_BREADY : OUT STD_LOGIC;
    M_AXI_GP0_RREADY : OUT STD_LOGIC;
    M_AXI_GP0_WLAST : OUT STD_LOGIC;
    M_AXI_GP0_WVALID : OUT STD_LOGIC;
    M_AXI_GP0_ARID : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    M_AXI_GP0_AWID : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    M_AXI_GP0_WID : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    M_AXI_GP0_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP0_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP0_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_GP0_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP0_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP0_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_GP0_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_GP0_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_GP0_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_AXI_GP0_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_AXI_GP0_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_AXI_GP0_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP0_ARLEN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP0_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP0_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP0_AWLEN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP0_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP0_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP0_ACLK : IN STD_LOGIC;
    M_AXI_GP0_ARREADY : IN STD_LOGIC;
    M_AXI_GP0_AWREADY : IN STD_LOGIC;
    M_AXI_GP0_BVALID : IN STD_LOGIC;
    M_AXI_GP0_RLAST : IN STD_LOGIC;
    M_AXI_GP0_RVALID : IN STD_LOGIC;
    M_AXI_GP0_WREADY : IN STD_LOGIC;
    M_AXI_GP0_BID : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    M_AXI_GP0_RID : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    M_AXI_GP0_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP0_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP0_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_AXI_GP1_ARVALID : OUT STD_LOGIC;
    M_AXI_GP1_AWVALID : OUT STD_LOGIC;
    M_AXI_GP1_BREADY : OUT STD_LOGIC;
    M_AXI_GP1_RREADY : OUT STD_LOGIC;
    M_AXI_GP1_WLAST : OUT STD_LOGIC;
    M_AXI_GP1_WVALID : OUT STD_LOGIC;
    M_AXI_GP1_ARID : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    M_AXI_GP1_AWID : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    M_AXI_GP1_WID : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    M_AXI_GP1_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP1_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP1_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_GP1_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP1_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP1_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_GP1_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_GP1_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_GP1_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_AXI_GP1_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_AXI_GP1_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_AXI_GP1_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP1_ARLEN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP1_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP1_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP1_AWLEN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP1_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP1_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_GP1_ACLK : IN STD_LOGIC;
    M_AXI_GP1_ARREADY : IN STD_LOGIC;
    M_AXI_GP1_AWREADY : IN STD_LOGIC;
    M_AXI_GP1_BVALID : IN STD_LOGIC;
    M_AXI_GP1_RLAST : IN STD_LOGIC;
    M_AXI_GP1_RVALID : IN STD_LOGIC;
    M_AXI_GP1_WREADY : IN STD_LOGIC;
    M_AXI_GP1_BID : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    M_AXI_GP1_RID : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    M_AXI_GP1_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP1_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_GP1_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_HP3_ARREADY : OUT STD_LOGIC;
    S_AXI_HP3_AWREADY : OUT STD_LOGIC;
    S_AXI_HP3_BVALID : OUT STD_LOGIC;
    S_AXI_HP3_RLAST : OUT STD_LOGIC;
    S_AXI_HP3_RVALID : OUT STD_LOGIC;
    S_AXI_HP3_WREADY : OUT STD_LOGIC;
    S_AXI_HP3_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_HP3_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_HP3_BID : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    S_AXI_HP3_RID : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    S_AXI_HP3_RDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    S_AXI_HP3_RCOUNT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXI_HP3_WCOUNT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXI_HP3_RACOUNT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_HP3_WACOUNT : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    S_AXI_HP3_ACLK : IN STD_LOGIC;
    S_AXI_HP3_ARVALID : IN STD_LOGIC;
    S_AXI_HP3_AWVALID : IN STD_LOGIC;
    S_AXI_HP3_BREADY : IN STD_LOGIC;
    S_AXI_HP3_RDISSUECAP1_EN : IN STD_LOGIC;
    S_AXI_HP3_RREADY : IN STD_LOGIC;
    S_AXI_HP3_WLAST : IN STD_LOGIC;
    S_AXI_HP3_WRISSUECAP1_EN : IN STD_LOGIC;
    S_AXI_HP3_WVALID : IN STD_LOGIC;
    S_AXI_HP3_ARBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_HP3_ARLOCK : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_HP3_ARSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_HP3_AWBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_HP3_AWLOCK : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_HP3_AWSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_HP3_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_HP3_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_HP3_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_HP3_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_HP3_ARCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_HP3_ARLEN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_HP3_ARQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_HP3_AWCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_HP3_AWLEN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_HP3_AWQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_HP3_ARID : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    S_AXI_HP3_AWID : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    S_AXI_HP3_WID : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    S_AXI_HP3_WDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    S_AXI_HP3_WSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    IRQ_F2P : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    FCLK_CLK2 : OUT STD_LOGIC;
    FCLK_CLK3 : OUT STD_LOGIC;
    FCLK_RESET2_N : OUT STD_LOGIC;
    FCLK_RESET3_N : OUT STD_LOGIC;
    MIO : INOUT STD_LOGIC_VECTOR(53 DOWNTO 0);
    DDR_CAS_n : INOUT STD_LOGIC;
    DDR_CKE : INOUT STD_LOGIC;
    DDR_Clk_n : INOUT STD_LOGIC;
    DDR_Clk : INOUT STD_LOGIC;
    DDR_CS_n : INOUT STD_LOGIC;
    DDR_DRSTB : INOUT STD_LOGIC;
    DDR_ODT : INOUT STD_LOGIC;
    DDR_RAS_n : INOUT STD_LOGIC;
    DDR_WEB : INOUT STD_LOGIC;
    DDR_BankAddr : INOUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    DDR_Addr : INOUT STD_LOGIC_VECTOR(14 DOWNTO 0);
    DDR_VRN : INOUT STD_LOGIC;
    DDR_VRP : INOUT STD_LOGIC;
    DDR_DM : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    DDR_DQ : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    DDR_DQS_n : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    DDR_DQS : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    PS_SRSTB : INOUT STD_LOGIC;
    PS_CLK : INOUT STD_LOGIC;
    PS_PORB : INOUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : OpenSSD2_processing_system7_0_0
  PORT MAP (
    ENET0_PTP_DELAY_REQ_RX => ENET0_PTP_DELAY_REQ_RX,
    ENET0_PTP_DELAY_REQ_TX => ENET0_PTP_DELAY_REQ_TX,
    ENET0_PTP_PDELAY_REQ_RX => ENET0_PTP_PDELAY_REQ_RX,
    ENET0_PTP_PDELAY_REQ_TX => ENET0_PTP_PDELAY_REQ_TX,
    ENET0_PTP_PDELAY_RESP_RX => ENET0_PTP_PDELAY_RESP_RX,
    ENET0_PTP_PDELAY_RESP_TX => ENET0_PTP_PDELAY_RESP_TX,
    ENET0_PTP_SYNC_FRAME_RX => ENET0_PTP_SYNC_FRAME_RX,
    ENET0_PTP_SYNC_FRAME_TX => ENET0_PTP_SYNC_FRAME_TX,
    ENET0_SOF_RX => ENET0_SOF_RX,
    ENET0_SOF_TX => ENET0_SOF_TX,
    USB0_PORT_INDCTL => USB0_PORT_INDCTL,
    USB0_VBUS_PWRSELECT => USB0_VBUS_PWRSELECT,
    USB0_VBUS_PWRFAULT => USB0_VBUS_PWRFAULT,
    M_AXI_GP0_ARVALID => M_AXI_GP0_ARVALID,
    M_AXI_GP0_AWVALID => M_AXI_GP0_AWVALID,
    M_AXI_GP0_BREADY => M_AXI_GP0_BREADY,
    M_AXI_GP0_RREADY => M_AXI_GP0_RREADY,
    M_AXI_GP0_WLAST => M_AXI_GP0_WLAST,
    M_AXI_GP0_WVALID => M_AXI_GP0_WVALID,
    M_AXI_GP0_ARID => M_AXI_GP0_ARID,
    M_AXI_GP0_AWID => M_AXI_GP0_AWID,
    M_AXI_GP0_WID => M_AXI_GP0_WID,
    M_AXI_GP0_ARBURST => M_AXI_GP0_ARBURST,
    M_AXI_GP0_ARLOCK => M_AXI_GP0_ARLOCK,
    M_AXI_GP0_ARSIZE => M_AXI_GP0_ARSIZE,
    M_AXI_GP0_AWBURST => M_AXI_GP0_AWBURST,
    M_AXI_GP0_AWLOCK => M_AXI_GP0_AWLOCK,
    M_AXI_GP0_AWSIZE => M_AXI_GP0_AWSIZE,
    M_AXI_GP0_ARPROT => M_AXI_GP0_ARPROT,
    M_AXI_GP0_AWPROT => M_AXI_GP0_AWPROT,
    M_AXI_GP0_ARADDR => M_AXI_GP0_ARADDR,
    M_AXI_GP0_AWADDR => M_AXI_GP0_AWADDR,
    M_AXI_GP0_WDATA => M_AXI_GP0_WDATA,
    M_AXI_GP0_ARCACHE => M_AXI_GP0_ARCACHE,
    M_AXI_GP0_ARLEN => M_AXI_GP0_ARLEN,
    M_AXI_GP0_ARQOS => M_AXI_GP0_ARQOS,
    M_AXI_GP0_AWCACHE => M_AXI_GP0_AWCACHE,
    M_AXI_GP0_AWLEN => M_AXI_GP0_AWLEN,
    M_AXI_GP0_AWQOS => M_AXI_GP0_AWQOS,
    M_AXI_GP0_WSTRB => M_AXI_GP0_WSTRB,
    M_AXI_GP0_ACLK => M_AXI_GP0_ACLK,
    M_AXI_GP0_ARREADY => M_AXI_GP0_ARREADY,
    M_AXI_GP0_AWREADY => M_AXI_GP0_AWREADY,
    M_AXI_GP0_BVALID => M_AXI_GP0_BVALID,
    M_AXI_GP0_RLAST => M_AXI_GP0_RLAST,
    M_AXI_GP0_RVALID => M_AXI_GP0_RVALID,
    M_AXI_GP0_WREADY => M_AXI_GP0_WREADY,
    M_AXI_GP0_BID => M_AXI_GP0_BID,
    M_AXI_GP0_RID => M_AXI_GP0_RID,
    M_AXI_GP0_BRESP => M_AXI_GP0_BRESP,
    M_AXI_GP0_RRESP => M_AXI_GP0_RRESP,
    M_AXI_GP0_RDATA => M_AXI_GP0_RDATA,
    M_AXI_GP1_ARVALID => M_AXI_GP1_ARVALID,
    M_AXI_GP1_AWVALID => M_AXI_GP1_AWVALID,
    M_AXI_GP1_BREADY => M_AXI_GP1_BREADY,
    M_AXI_GP1_RREADY => M_AXI_GP1_RREADY,
    M_AXI_GP1_WLAST => M_AXI_GP1_WLAST,
    M_AXI_GP1_WVALID => M_AXI_GP1_WVALID,
    M_AXI_GP1_ARID => M_AXI_GP1_ARID,
    M_AXI_GP1_AWID => M_AXI_GP1_AWID,
    M_AXI_GP1_WID => M_AXI_GP1_WID,
    M_AXI_GP1_ARBURST => M_AXI_GP1_ARBURST,
    M_AXI_GP1_ARLOCK => M_AXI_GP1_ARLOCK,
    M_AXI_GP1_ARSIZE => M_AXI_GP1_ARSIZE,
    M_AXI_GP1_AWBURST => M_AXI_GP1_AWBURST,
    M_AXI_GP1_AWLOCK => M_AXI_GP1_AWLOCK,
    M_AXI_GP1_AWSIZE => M_AXI_GP1_AWSIZE,
    M_AXI_GP1_ARPROT => M_AXI_GP1_ARPROT,
    M_AXI_GP1_AWPROT => M_AXI_GP1_AWPROT,
    M_AXI_GP1_ARADDR => M_AXI_GP1_ARADDR,
    M_AXI_GP1_AWADDR => M_AXI_GP1_AWADDR,
    M_AXI_GP1_WDATA => M_AXI_GP1_WDATA,
    M_AXI_GP1_ARCACHE => M_AXI_GP1_ARCACHE,
    M_AXI_GP1_ARLEN => M_AXI_GP1_ARLEN,
    M_AXI_GP1_ARQOS => M_AXI_GP1_ARQOS,
    M_AXI_GP1_AWCACHE => M_AXI_GP1_AWCACHE,
    M_AXI_GP1_AWLEN => M_AXI_GP1_AWLEN,
    M_AXI_GP1_AWQOS => M_AXI_GP1_AWQOS,
    M_AXI_GP1_WSTRB => M_AXI_GP1_WSTRB,
    M_AXI_GP1_ACLK => M_AXI_GP1_ACLK,
    M_AXI_GP1_ARREADY => M_AXI_GP1_ARREADY,
    M_AXI_GP1_AWREADY => M_AXI_GP1_AWREADY,
    M_AXI_GP1_BVALID => M_AXI_GP1_BVALID,
    M_AXI_GP1_RLAST => M_AXI_GP1_RLAST,
    M_AXI_GP1_RVALID => M_AXI_GP1_RVALID,
    M_AXI_GP1_WREADY => M_AXI_GP1_WREADY,
    M_AXI_GP1_BID => M_AXI_GP1_BID,
    M_AXI_GP1_RID => M_AXI_GP1_RID,
    M_AXI_GP1_BRESP => M_AXI_GP1_BRESP,
    M_AXI_GP1_RRESP => M_AXI_GP1_RRESP,
    M_AXI_GP1_RDATA => M_AXI_GP1_RDATA,
    S_AXI_HP3_ARREADY => S_AXI_HP3_ARREADY,
    S_AXI_HP3_AWREADY => S_AXI_HP3_AWREADY,
    S_AXI_HP3_BVALID => S_AXI_HP3_BVALID,
    S_AXI_HP3_RLAST => S_AXI_HP3_RLAST,
    S_AXI_HP3_RVALID => S_AXI_HP3_RVALID,
    S_AXI_HP3_WREADY => S_AXI_HP3_WREADY,
    S_AXI_HP3_BRESP => S_AXI_HP3_BRESP,
    S_AXI_HP3_RRESP => S_AXI_HP3_RRESP,
    S_AXI_HP3_BID => S_AXI_HP3_BID,
    S_AXI_HP3_RID => S_AXI_HP3_RID,
    S_AXI_HP3_RDATA => S_AXI_HP3_RDATA,
    S_AXI_HP3_RCOUNT => S_AXI_HP3_RCOUNT,
    S_AXI_HP3_WCOUNT => S_AXI_HP3_WCOUNT,
    S_AXI_HP3_RACOUNT => S_AXI_HP3_RACOUNT,
    S_AXI_HP3_WACOUNT => S_AXI_HP3_WACOUNT,
    S_AXI_HP3_ACLK => S_AXI_HP3_ACLK,
    S_AXI_HP3_ARVALID => S_AXI_HP3_ARVALID,
    S_AXI_HP3_AWVALID => S_AXI_HP3_AWVALID,
    S_AXI_HP3_BREADY => S_AXI_HP3_BREADY,
    S_AXI_HP3_RDISSUECAP1_EN => S_AXI_HP3_RDISSUECAP1_EN,
    S_AXI_HP3_RREADY => S_AXI_HP3_RREADY,
    S_AXI_HP3_WLAST => S_AXI_HP3_WLAST,
    S_AXI_HP3_WRISSUECAP1_EN => S_AXI_HP3_WRISSUECAP1_EN,
    S_AXI_HP3_WVALID => S_AXI_HP3_WVALID,
    S_AXI_HP3_ARBURST => S_AXI_HP3_ARBURST,
    S_AXI_HP3_ARLOCK => S_AXI_HP3_ARLOCK,
    S_AXI_HP3_ARSIZE => S_AXI_HP3_ARSIZE,
    S_AXI_HP3_AWBURST => S_AXI_HP3_AWBURST,
    S_AXI_HP3_AWLOCK => S_AXI_HP3_AWLOCK,
    S_AXI_HP3_AWSIZE => S_AXI_HP3_AWSIZE,
    S_AXI_HP3_ARPROT => S_AXI_HP3_ARPROT,
    S_AXI_HP3_AWPROT => S_AXI_HP3_AWPROT,
    S_AXI_HP3_ARADDR => S_AXI_HP3_ARADDR,
    S_AXI_HP3_AWADDR => S_AXI_HP3_AWADDR,
    S_AXI_HP3_ARCACHE => S_AXI_HP3_ARCACHE,
    S_AXI_HP3_ARLEN => S_AXI_HP3_ARLEN,
    S_AXI_HP3_ARQOS => S_AXI_HP3_ARQOS,
    S_AXI_HP3_AWCACHE => S_AXI_HP3_AWCACHE,
    S_AXI_HP3_AWLEN => S_AXI_HP3_AWLEN,
    S_AXI_HP3_AWQOS => S_AXI_HP3_AWQOS,
    S_AXI_HP3_ARID => S_AXI_HP3_ARID,
    S_AXI_HP3_AWID => S_AXI_HP3_AWID,
    S_AXI_HP3_WID => S_AXI_HP3_WID,
    S_AXI_HP3_WDATA => S_AXI_HP3_WDATA,
    S_AXI_HP3_WSTRB => S_AXI_HP3_WSTRB,
    IRQ_F2P => IRQ_F2P,
    FCLK_CLK2 => FCLK_CLK2,
    FCLK_CLK3 => FCLK_CLK3,
    FCLK_RESET2_N => FCLK_RESET2_N,
    FCLK_RESET3_N => FCLK_RESET3_N,
    MIO => MIO,
    DDR_CAS_n => DDR_CAS_n,
    DDR_CKE => DDR_CKE,
    DDR_Clk_n => DDR_Clk_n,
    DDR_Clk => DDR_Clk,
    DDR_CS_n => DDR_CS_n,
    DDR_DRSTB => DDR_DRSTB,
    DDR_ODT => DDR_ODT,
    DDR_RAS_n => DDR_RAS_n,
    DDR_WEB => DDR_WEB,
    DDR_BankAddr => DDR_BankAddr,
    DDR_Addr => DDR_Addr,
    DDR_VRN => DDR_VRN,
    DDR_VRP => DDR_VRP,
    DDR_DM => DDR_DM,
    DDR_DQ => DDR_DQ,
    DDR_DQS_n => DDR_DQS_n,
    DDR_DQS => DDR_DQS,
    PS_SRSTB => PS_SRSTB,
    PS_CLK => PS_CLK,
    PS_PORB => PS_PORB
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file OpenSSD2_processing_system7_0_0.vhd when simulating
-- the core, OpenSSD2_processing_system7_0_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

