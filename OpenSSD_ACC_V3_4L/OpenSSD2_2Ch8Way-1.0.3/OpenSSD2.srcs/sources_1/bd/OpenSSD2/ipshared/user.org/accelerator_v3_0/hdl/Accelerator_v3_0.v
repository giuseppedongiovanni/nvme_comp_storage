
`timescale 1 ns / 1 ps

	module Accelerator_v3_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 32,

		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 128,
		
		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 128,
		parameter integer C_M00_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,

		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready
	);

//WIRES AND ASSIGNMENTS

	(* keep = "true" *) wire [C_S00_AXIS_TDATA_WIDTH-1:0] data_in_acc;        //IN  ACC
    (* keep = "true" *) wire [C_M00_AXIS_TDATA_WIDTH-1:0] data_out_acc;       //OUT  ACC
    (* keep = "true" *) wire [C_S00_AXI_DATA_WIDTH-1:0] configuration_wire; //OUT AXI 0 starting configuration, 1 adder, 2 crypto128, 4 crypto192, 8 crypto256
    (* keep = "true" *) wire [255:0] parameter_wire;
    (* keep = "true" *) wire [127:0]  parameter_IV;           //OUT AXI
    (* keep = "true" *) wire [127:0] parameter_128;          //IN  ACC
//    wire [191:0] parameter_192;          //IN  ACC
    (* keep = "true" *) wire [255:0] parameter_256;          //IN  ACC
    (* keep = "true" *) wire empty;                          //IN  ACC
    (* keep = "true" *) wire last;                           //IN  ACC
    (* keep = "true" *) wire full;                           //IN  ACC
    (* keep = "true" *) wire valid_datain;                   //OUT ACC
    (* keep = "true" *) wire valid_dataout;		     //OUT ACC
    (* keep = "true" *) wire last_out;                       //OUT ACC
    
    assign parameter_128 = parameter_wire [127:0];
//    assign parameter_192 = parameter_wire [191:0];
    assign parameter_256 = parameter_wire [255:0];	
	
	
// Instantiation of Axi Bus Interface S00_AXI
	Accelerator_v3_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) Accelerator_v3_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.CONFIGURATION_W(configuration_wire),
        .PARAMETER_W(parameter_wire),
        .PARAMETER_IV(parameter_IV)
	);

// Instantiation of Axi Bus Interface S00_AXIS
	Accelerator_v3_0_S00_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
	) Accelerator_v3_0_S00_AXIS_inst (
		.S_AXIS_ACLK(s00_axis_aclk),
		.S_AXIS_ARESETN(s00_axis_aresetn),
		.S_AXIS_TREADY(s00_axis_tready),
		.S_AXIS_TDATA(s00_axis_tdata),
		.S_AXIS_TSTRB(s00_axis_tstrb),
		.S_AXIS_TLAST(s00_axis_tlast),
		.S_AXIS_TVALID(s00_axis_tvalid),
		.DATA_OUT(data_in_acc),
		.EMPTY(empty),
		.FLAG_LAST(last),
		.VALID_OUT(valid_datain)
	);

// Instantiation of Axi Bus Interface M00_AXIS
	Accelerator_v3_0_M00_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M00_AXIS_START_COUNT)
	) Accelerator_v3_0_M00_AXIS_inst (
		.M_AXIS_ACLK(m00_axis_aclk),
		.M_AXIS_ARESETN(m00_axis_aresetn),
		.M_AXIS_TVALID(m00_axis_tvalid),
		.M_AXIS_TDATA(m00_axis_tdata),
		.M_AXIS_TSTRB(m00_axis_tstrb),
		.M_AXIS_TLAST(m00_axis_tlast),
		.M_AXIS_TREADY(m00_axis_tready),
		.DATA_IN(data_out_acc),
		.FULL(full),
		.VALID_IN(valid_dataout),
		.LAST_IN(last_out)
	);

// Instantiation of Accelerator Block
    Accelerator_block Accelerator_block_int(
    .clk(s00_axis_aclk),
    .reset(s00_axis_aresetn),
    .empty(empty),
    .last(last),
    .full(full),
    .last_out(last_out),
    .valid_fifoin(valid_datain),
    .valid_fifoout(valid_dataout),
    .data_in(data_in_acc),
    .data_out(data_out_acc),
    .configuration(configuration_wire),
    .start_counter(parameter_IV),
    .parameter_128(parameter_128),
//    .parameter_192(parameter_192),
    .parameter_256(parameter_256)
    );

	// Add user logic here

    
	// User logic ends

	endmodule
