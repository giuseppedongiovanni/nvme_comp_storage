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
wire [127:0] data_out; 
reg [7:0] counter;
reg [31:0] addr;
wire axi_awready,axi_wready,axi_arready,axi_rvalid,axi_bvalid;
wire [1:0] bresp,rresp;
reg axi_rready,axi_arvalid,axi_awvalid,axi_wvalid,axi_bready;
reg [31:0] axi_data_in; 
wire [31:0] axi_data_out; 
wire [127:0] reverse_data;

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
		.s00_axis_tvalid   (svalid)
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

//initial
//begin
//    rst = 1'b0;           //reset state active low
//    #20;
//    rst = 1'b1;           //idle, output device in ready, input down    axi_awvalid = 1'b1;
//    axi_awvalid = 1'b0;
//    axi_wvalid  = 1'b0;
//    axi_bready  = 1'b1;
//    axi_data_in = 32'b0;
//    mready      = 1'b1;
//    #10;
//    addr = 32'h43C00000;
//    axi_data_in = 32'b1;
//    axi_awvalid = 1'b1;
//    axi_wvalid  = 1'b1;
//    wait(axi_awready && axi_wready);
//    axi_awvalid = 1'b0;
//    axi_wvalid  = 1'b0;
//    wait(!axi_bvalid);
//    axi_bready  = 1'b0;
//    #20;
//    addr = 32'h43C00000;
//    axi_arvalid = 1'b1;
//    wait(!axi_arready);
//    axi_arvalid = 1'b0;
//    axi_rready  = 1'b1;
//    wait(!axi_rvalid);
//    axi_rready  = 1'b0;
//end





always @ (posedge clk)
begin
    if (!counter_rst)
        begin
        counter <= 8'h0;
        end
    else
        begin
        if(sready && svalid)
            begin
            counter <= counter + 1;
            end
        end
    if  (counter == 128'd15)    //up to 15, then 16 is the last
        begin
        if(sready && svalid)
         begin
        slast    <= 1'b1;
        end
//        svalid   <= 1'b0;
//        mready   <= 1'b0;
        end
    if  (counter == 128'd16)    //up to 15, then 16 is the last
        begin
//        mready   <= 1'b0;
        slast    <= 1'b0;
        svalid   <= 1'b0;
        end
    if  (counter == 128'd17)
        begin
        counter  <= 1'b0;
        end
end

assign data_in = counter + 128'd5;

initial
begin
    rst = 1'b0;           //reset state active low
    counter_rst = 1'b0;
    slast = 1'b0;
    #20;
    rst = 1'b1;           //idle, output device in ready, input down
    counter_rst = 1'b1;
//    addr = 32'h43C00000;
//    axi_data_in = 32'h2;
//    axi_awvalid = 1'b1;
//    axi_wvalid  = 1'b1;
//    wait(axi_awready && axi_wready);
//    axi_awvalid = 1'b0;
//    axi_wvalid  = 1'b0;
//    axi_bready  = 1'b1;
//    wait(!axi_bvalid);
//    axi_bready  = 1'b0;
    #20;    
    mready = 1'b1;
    svalid = 1'b1;
    #10;
//    svalid = 1'b0;
//    #2;
//    svalid = 1'b1;
//    #1;
//    svalid = 1'b0;
//    #2;
//    svalid = 1'b1;
//    #1;
//    svalid = 1'b0;
//    #2;
//    svalid = 1'b1;
//    #1;
//    svalid = 1'b0;
//    #25;
//    svalid = 1'b1;
    mready = 1'b0;
    #2;
    mready = 1'b1;
//    #2;
//    mready = 1'b0;
//    #5;
//    mready = 1'b1;
//    #1;
//    mready = 1'b0;
//    #2;
//    mready = 1'b1;
//    #1;
//    mready = 1'b0;
//    #25;
//    mready = 1'b1;
//    wait(mready)
//    #5
//    mready = 1'b1;
//    wait(!svalid)
//    #20
//    svalid = 1'b1;
    wait(slast);
    #10;
//    rst = 1'b0;           //reset state active low
//    counter_rst = 1'b0;
//    slast = 1'b0;
//    #5
//    rst = 1'b1;           //idle, output device in ready, input down
//    counter_rst = 1'b1;
//    #5;
//    mready = 1'b1;
//    svalid = 1'b1;
//    #2;
//    mready = 1'b0;
//    #2.7;
//    mready = 1'b1;
//    wait(slast);
//    #5;
//    mready = 1'b1;
//    #10;
//    mready = 1'b0;
//    counter_rst = 1'b0;
//    rst = 1'b0;
//    #20;
//    counter_rst = 1'b1;
//    rst = 1'b1;
//    mready = 1'b0;
//    #50;
//    mready = 1'b1;
//    svalid = 1'b1;
//    #5;
//    mready = 1'b0;
//    #5;
//    mready = 1'b1;
//    #10;
//    mready = 1'b0;

end
        
endmodule