`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 03/31/2020 05:35:04 PM
// Design Name: 
// Module Name: Accelerator_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Accelerator_tb();

reg counter_rst;                    
reg clk,rst;                                      
reg svalid, slast,slast_delay;
wire sready;
wire mvalid, mlast;
reg mready;
wire [127:0] data_in;
reg  [127:0] rev_data_in;
reg [127:0] vector_in [3:0];
wire [127:0] data_out;
wire [127:0] reverse_data;
reg [7:0] counter;
reg [31:0] addr;
wire axi_awready,axi_wready,axi_arready,axi_rvalid,axi_bvalid;
wire [1:0] bresp,rresp;
reg axi_rready,axi_arvalid,axi_awvalid,axi_wvalid,axi_bready;
reg [31:0] axi_data_in; 
wire [31:0] axi_data_out;

wire  [31:0] configuration_test;
wire  [127:0] start_counter_test;
wire  [127:0] parameter_128_test;
wire  [255:0] parameter_256_test;
reg   [31:0] configuration_test_reg;
reg   [127:0] start_counter_test_reg;
reg   [127:0] parameter_128_test_reg;
reg   [255:0] parameter_256_test_reg;

        Accelerator_v3_0 dut(
        .s00_axi_aclk      (clk),
		.s00_axi_aresetn   (rst),
		.s00_axi_awaddr    (addr),
		.s00_axi_awprot    (),
		.s00_axi_awvalid   (axi_awvalid),
		.s00_axi_awready   (axi_awready),
		.s00_axi_wdata     (axi_data_in),
		.s00_axi_wstrb     (),
		.s00_axi_wvalid    (axi_wvalid),
		.s00_axi_wready    (axi_wready),
		.s00_axi_bresp     (bresp),
		.s00_axi_bvalid    (axi_bvalid),
		.s00_axi_bready    (axi_bready),
		.s00_axi_araddr    (addr),
		.s00_axi_arprot    (),
		.s00_axi_arvalid   (axi_arvalid),
		.s00_axi_arready   (axi_arready),
		.s00_axi_rdata     (axi_data_out),
		.s00_axi_rresp     (rresp),
		.s00_axi_rvalid    (axi_rvalid),
		.s00_axi_rready    (axi_rready),

		// Ports of Axi Master Bus Interface M00_AXIS
		.m00_axis_aclk     (clk),
		.m00_axis_aresetn  (rst),
		.m00_axis_tvalid   (mvalid),
		.m00_axis_tdata    (data_out),
		.m00_axis_tstrb    (),
		.m00_axis_tlast    (mlast),
		.m00_axis_tready   (mready),

		// Ports of Axi Slave Bus Interface S00_AXIS
		.s00_axis_aclk     (clk),
		.s00_axis_aresetn  (rst),
		.s00_axis_tready   (sready),
		.s00_axis_tdata    (data_in),
		.s00_axis_tstrb    (),
		.s00_axis_tlast    (slast),
		.s00_axis_tvalid   (svalid),
		
		.configuration_test(configuration_test),
        .start_counter_test(start_counter_test),
        .parameter_128_test(parameter_128_test),
        .parameter_256_test(parameter_256_test)
	);
	
	
//Function for reversing the number of bits in a parallel bus.
    function [127:0] bitOrder 
        (
        input [127:0] data
        );
        integer i;
        begin
            for (i=0; i < 128; i=i+1) begin : reverse
                bitOrder[127-i] = data[i]; //Note how the vectors get swapped around here by the index. For i=0, i_out=15, and vice versa.
            end
        end
    endfunction
assign reverse_data = bitOrder(data_out);   
    
always @ (posedge clk)
begin
    if(!rst)
    begin
    addr        <= 32'b0;
    axi_rready  <= 1'b0;
    axi_arvalid <= 1'b0;
    axi_awvalid <= 1'b0;
    axi_wvalid  <= 1'b0;
    slast_delay <= 1'b0;
    slast       <= 1'b0;
    svalid      <= 1'b0;
    mready      <= 1'b0;
    end
end

always
    begin
    clk = 1; 
    #0.25; 
    clk = 0;
    #0.25;
    end



//always @ (posedge clk)
//begin
//    if (!counter_rst)
//        begin
//        counter <= 8'h0;
//        end
//    else
//        begin
//        if(sready && svalid)
//            begin
//            counter <= counter + 1;
//            end
//        end
//    if  (counter == 8'b00001110)
//        begin
////            mready   <= 1'b0;
//        end
//    if  (counter == 8'b00001111)    //up to 15, then 16 is the last
//        begin
//        if(sready && svalid)
//         begin
//        slast    <= 1'b1;
//        end
////        svalid   <= 1'b0;
////        mready   <= 1'b0;
//        end
//    if  (counter == 8'b00010000)    //up to 15, then 16 is the last
//        begin
////        mready   <= 1'b0;
//        slast    <= 1'b0;
//        svalid   <= 1'b0;
//        end
//    if  (counter == 8'b00010001)
//        begin
//        counter  <= 1'b0;
//        end
//end

reg [2:0]i;


always @(posedge clk)
begin
    if(!rst)
     begin
        rev_data_in <= vector_in[0];
        i <= 3'h1;
     end
    else if(i == 3'h5)
        begin 
           slast   = 1'b0;
        end
    else if(svalid && sready)
     begin
        rev_data_in <= vector_in[i];
        i <= i+3'h1;
        if(i == 3'h4)
         begin 
            slast   = 1'b1;
            svalid  = 1'b0;
         end
     end
end

assign data_in = bitOrder(rev_data_in);
assign configuration_test = configuration_test_reg;
assign start_counter_test = start_counter_test_reg;
assign parameter_128_test = parameter_128_test_reg;
assign parameter_256_test = parameter_256_test_reg;

initial         //test 128
begin
    rst = 1'b0;           //reset state active low
    counter_rst = 1'b0;
    slast = 1'b0;
    //encrypt 128-256
//    vector_in[0] = 128'h6bc1bee22e409f96e93d7e117393172a;
//    vector_in[1] = 128'hae2d8a571e03ac9c9eb76fac45af8e51;
//    vector_in[2] = 128'h30c81c46a35ce411e5fbc1191a0a52ef;
//    vector_in[3] = 128'hf69f2445df4f9b17ad2b417be66c3710;
    //decrypt 128
//    vector_in[0] = 128'h874d6191b620e3261bef6864990db6ce;
//    vector_in[1] = 128'h9806f66b7970fdff8617187bb9fffdff;
//    vector_in[2] = 128'h5ae4df3edbd5d35e5b4f09020db03eab;
//    vector_in[3] = 128'h1e031dda2fbe03d1792170a0f3009cee;
    //decrypt 256
    vector_in[0] = 128'h601ec313775789a5b7a7f504bbf3d228;
    vector_in[1] = 128'hf443e3ca4d62b59aca84e990cacaf5c5;
    vector_in[2] = 128'h2b0930daa23de94ce87017ba2d84988d;
    vector_in[3] = 128'hdfc9c58db67aada613c2dd08457941a6;
    #20;
    rst = 1'b1;           //idle, output device in ready, input down
    counter_rst = 1'b1;
    configuration_test_reg = 32'h8;
    start_counter_test_reg = 128'hf0f1f2f3f4f5f6f7f8f9fafbfcfdfeff;
//    parameter_128_test_reg = 128'h2b7e151628aed2a6abf7158809cf4f3c;
    parameter_256_test_reg = 256'h603deb1015ca71be2b73aef0857d77811f352c073b6108d72d9810a30914dff4;
    #20;    
    mready  = 1'b1;
    svalid  = 1'b1;
    wait(!svalid);
    wait(mlast);
    #5;
end
        
endmodule