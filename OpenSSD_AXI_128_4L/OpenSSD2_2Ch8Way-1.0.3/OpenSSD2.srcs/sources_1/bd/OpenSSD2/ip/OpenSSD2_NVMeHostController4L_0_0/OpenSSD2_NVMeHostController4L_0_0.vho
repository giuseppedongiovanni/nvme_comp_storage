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

-- IP VLNV: ENCLab:ip:NVMeHostController4L:1.0.1
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT OpenSSD2_NVMeHostController4L_0_0
  PORT (
    s0_axi_aclk : IN STD_LOGIC;
    s0_axi_aresetn : IN STD_LOGIC;
    s0_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s0_axi_awready : OUT STD_LOGIC;
    s0_axi_awvalid : IN STD_LOGIC;
    s0_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s0_axi_wvalid : IN STD_LOGIC;
    s0_axi_wready : OUT STD_LOGIC;
    s0_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s0_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s0_axi_bvalid : OUT STD_LOGIC;
    s0_axi_bready : IN STD_LOGIC;
    s0_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s0_axi_arvalid : IN STD_LOGIC;
    s0_axi_arready : OUT STD_LOGIC;
    s0_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s0_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s0_axi_rvalid : OUT STD_LOGIC;
    s0_axi_rready : IN STD_LOGIC;
    s0_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s0_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m0_axi_aclk : IN STD_LOGIC;
    m0_axi_aresetn : IN STD_LOGIC;
    m0_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m0_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m0_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m0_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m0_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m0_axi_awlock : OUT STD_LOGIC;
    m0_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m0_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m0_axi_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m0_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m0_axi_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m0_axi_awvalid : OUT STD_LOGIC;
    m0_axi_awready : IN STD_LOGIC;
    m0_axi_wid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m0_axi_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m0_axi_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m0_axi_wlast : OUT STD_LOGIC;
    m0_axi_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m0_axi_wvalid : OUT STD_LOGIC;
    m0_axi_wready : IN STD_LOGIC;
    m0_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m0_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m0_axi_bvalid : IN STD_LOGIC;
    m0_axi_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m0_axi_bready : OUT STD_LOGIC;
    m0_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m0_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m0_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m0_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m0_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m0_axi_arlock : OUT STD_LOGIC;
    m0_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m0_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m0_axi_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m0_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m0_axi_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m0_axi_arvalid : OUT STD_LOGIC;
    m0_axi_arready : IN STD_LOGIC;
    m0_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m0_axi_rdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m0_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m0_axi_rlast : IN STD_LOGIC;
    m0_axi_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m0_axi_rvalid : IN STD_LOGIC;
    m0_axi_rready : OUT STD_LOGIC;
    dev_irq_assert : OUT STD_LOGIC;
    pcie_ref_clk_p : IN STD_LOGIC;
    pcie_ref_clk_n : IN STD_LOGIC;
    pcie_perst_n : IN STD_LOGIC;
    pcie_tx_p : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pcie_tx_n : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pcie_rx_p : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    pcie_rx_n : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : OpenSSD2_NVMeHostController4L_0_0
  PORT MAP (
    s0_axi_aclk => s0_axi_aclk,
    s0_axi_aresetn => s0_axi_aresetn,
    s0_axi_awaddr => s0_axi_awaddr,
    s0_axi_awready => s0_axi_awready,
    s0_axi_awvalid => s0_axi_awvalid,
    s0_axi_awprot => s0_axi_awprot,
    s0_axi_wvalid => s0_axi_wvalid,
    s0_axi_wready => s0_axi_wready,
    s0_axi_wdata => s0_axi_wdata,
    s0_axi_wstrb => s0_axi_wstrb,
    s0_axi_bvalid => s0_axi_bvalid,
    s0_axi_bready => s0_axi_bready,
    s0_axi_bresp => s0_axi_bresp,
    s0_axi_arvalid => s0_axi_arvalid,
    s0_axi_arready => s0_axi_arready,
    s0_axi_araddr => s0_axi_araddr,
    s0_axi_arprot => s0_axi_arprot,
    s0_axi_rvalid => s0_axi_rvalid,
    s0_axi_rready => s0_axi_rready,
    s0_axi_rdata => s0_axi_rdata,
    s0_axi_rresp => s0_axi_rresp,
    m0_axi_aclk => m0_axi_aclk,
    m0_axi_aresetn => m0_axi_aresetn,
    m0_axi_awid => m0_axi_awid,
    m0_axi_awaddr => m0_axi_awaddr,
    m0_axi_awlen => m0_axi_awlen,
    m0_axi_awsize => m0_axi_awsize,
    m0_axi_awburst => m0_axi_awburst,
    m0_axi_awlock => m0_axi_awlock,
    m0_axi_awcache => m0_axi_awcache,
    m0_axi_awprot => m0_axi_awprot,
    m0_axi_awregion => m0_axi_awregion,
    m0_axi_awqos => m0_axi_awqos,
    m0_axi_awuser => m0_axi_awuser,
    m0_axi_awvalid => m0_axi_awvalid,
    m0_axi_awready => m0_axi_awready,
    m0_axi_wid => m0_axi_wid,
    m0_axi_wdata => m0_axi_wdata,
    m0_axi_wstrb => m0_axi_wstrb,
    m0_axi_wlast => m0_axi_wlast,
    m0_axi_wuser => m0_axi_wuser,
    m0_axi_wvalid => m0_axi_wvalid,
    m0_axi_wready => m0_axi_wready,
    m0_axi_bid => m0_axi_bid,
    m0_axi_bresp => m0_axi_bresp,
    m0_axi_bvalid => m0_axi_bvalid,
    m0_axi_buser => m0_axi_buser,
    m0_axi_bready => m0_axi_bready,
    m0_axi_arid => m0_axi_arid,
    m0_axi_araddr => m0_axi_araddr,
    m0_axi_arlen => m0_axi_arlen,
    m0_axi_arsize => m0_axi_arsize,
    m0_axi_arburst => m0_axi_arburst,
    m0_axi_arlock => m0_axi_arlock,
    m0_axi_arcache => m0_axi_arcache,
    m0_axi_arprot => m0_axi_arprot,
    m0_axi_arregion => m0_axi_arregion,
    m0_axi_arqos => m0_axi_arqos,
    m0_axi_aruser => m0_axi_aruser,
    m0_axi_arvalid => m0_axi_arvalid,
    m0_axi_arready => m0_axi_arready,
    m0_axi_rid => m0_axi_rid,
    m0_axi_rdata => m0_axi_rdata,
    m0_axi_rresp => m0_axi_rresp,
    m0_axi_rlast => m0_axi_rlast,
    m0_axi_ruser => m0_axi_ruser,
    m0_axi_rvalid => m0_axi_rvalid,
    m0_axi_rready => m0_axi_rready,
    dev_irq_assert => dev_irq_assert,
    pcie_ref_clk_p => pcie_ref_clk_p,
    pcie_ref_clk_n => pcie_ref_clk_n,
    pcie_perst_n => pcie_perst_n,
    pcie_tx_p => pcie_tx_p,
    pcie_tx_n => pcie_tx_n,
    pcie_rx_p => pcie_rx_p,
    pcie_rx_n => pcie_rx_n
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

