
`timescale 1 ns / 1 ps

	module Accelerator_v3_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY,
		
		// Output register wires
		output wire [C_S_AXI_DATA_WIDTH-1:0]      CONFIGURATION_W,
		output wire [255:0]                       PARAMETER_W,       //worst case, 256 bit
		output wire [127:0]                       PARAMETER_IV
	);

	// AXI4LITE signals
	reg [C_S_AXI_DATA_WIDTH-1 : 0] datain_AXI_register;
	reg  axi_awready;
	reg  axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  axi_bvalid;
	reg  axi_arready;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0]  axi_awaddr;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  axi_rvalid;

	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	// ADDR_LSB = 4 for 128 bits (n downto 4)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 3;              //4bit, up to 16 registers
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	parameter [2:0] IDLE                        = 3'b001; //1
    parameter [2:0] CONFIGURATION               = 3'b010; //2
    parameter [2:0] TRANSFER_CONFIGURATION      = 3'b100; //4
        
    (* keep = "true" *) reg [2:0] axi_exec_state;
	
	
	
	
	//-- Number of Slave Registers 9 --> 4 address bit needed 
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	config_register;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_register1;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_register2;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_register3;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_register4;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_register5;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_register6;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_register7;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_register8;
//	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_register9;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_registerA;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_registerB;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_registerC;
	(* keep = "true" *) reg [C_S_AXI_DATA_WIDTH-1:0]	parameter_registerD;
	integer	 byte_index;

	// I/O Connections assignments

	assign S_AXI_AWREADY   = axi_awready;
	assign S_AXI_WREADY	   = axi_wready;
	assign S_AXI_BRESP	   = axi_bresp;
	assign S_AXI_BVALID	   = axi_bvalid;
	assign S_AXI_ARREADY   = axi_arready;
	assign S_AXI_RDATA	   = axi_rdata;
	assign S_AXI_RRESP	   = axi_rresp;
	assign S_AXI_RVALID	   = axi_rvalid;
	
	// Output register assignement
	assign CONFIGURATION_W = config_register;
	assign PARAMETER_W = {parameter_register8, parameter_register7, parameter_register6, parameter_register5, parameter_register4, 
	                       parameter_register3, parameter_register2, parameter_register1};
	assign PARAMETER_IV = {parameter_registerD, parameter_registerC, parameter_registerB, parameter_registerA};
	
 // FSM
    always @(posedge S_AXI_ACLK)     
        begin                           
          if (!S_AXI_ARESETN)        // Synchronous reset (active low)
            begin
                axi_exec_state <= IDLE;       
            end 
          else
            begin
                case (axi_exec_state)
                  IDLE:
                       if (S_AXI_AWVALID && S_AXI_WVALID)  // valid data from the PS and ready for the response
                        begin
                            axi_exec_state <= CONFIGURATION;
                        end
                       else if (S_AXI_ARVALID)                // the PS can receive data, address valid
                        begin
                            axi_exec_state <= TRANSFER_CONFIGURATION;
                        end               
                       else
                        begin
                            axi_exec_state <= IDLE;
                        end   
                  CONFIGURATION:
                       if (S_AXI_BREADY)
                        begin
                           axi_exec_state <= IDLE;
                        end
                       else
                        begin
                           axi_exec_state <= CONFIGURATION;
                        end
                  
                  TRANSFER_CONFIGURATION:
                       if (S_AXI_RREADY)             //s00_axi_rready HIGH, the PS can receive data
                        begin
                           axi_exec_state <= IDLE;
                        end
                       else
                        begin
                           axi_exec_state <= TRANSFER_CONFIGURATION;     //stay in TRANSFER_CONFIGURATION until the master is ready
                        end                                 
                endcase
            end
        end                 

    //CONFIGURATION (read/write) function, slower clock
    always@(posedge S_AXI_ACLK)    
        begin
          if(!S_AXI_ARESETN)     // Synchronous reset (active low)
            begin
              datain_AXI_register   <= 32'b0;
              axi_rdata             <= 32'b0;
              config_register       <= 32'b0;
              parameter_register1   <= 32'b0;
              parameter_register2   <= 32'b0;
              parameter_register3   <= 32'b0;
              parameter_register4   <= 32'b0;
              parameter_register5   <= 32'b0;
              parameter_register6   <= 32'b0;
              parameter_register7   <= 32'b0;
              parameter_register8   <= 32'b0;
//              parameter_register9   <= 32'b0;
              parameter_registerA   <= 32'b0;
              parameter_registerB   <= 32'b0;
              parameter_registerC   <= 32'b0;
              parameter_registerD   <= 32'b0;
              
              axi_awready         <= 1'b0;
              axi_wready          <= 1'b0;
              axi_bvalid          <= 1'b0;
              axi_arready         <= 1'b0;	      
              axi_rvalid          <= 1'b0;
              axi_bresp           <= 2'b0; // 'OKAY' response
              axi_rresp           <= 2'b0; // 'OKAY' response
            end  
          else
            begin
                if (axi_exec_state == IDLE)
                begin
                    if(S_AXI_AWVALID && S_AXI_WVALID)    //to CONFIGURATION (write)
                        begin
                            axi_awready         <= 1'b1;                   //activate all the ready signals
                            axi_wready          <= 1'b1;
                            axi_bvalid          <= 1'b1;                  //response valid to be transfered            
                            axi_arready         <= 1'b0;
                            axi_awaddr          <= S_AXI_AWADDR;
                            datain_AXI_register <= S_AXI_WDATA;         //saving the value of register that is needed         
                        end
                    else if(S_AXI_ARVALID)                     //to TRANSFER (read)
                        begin
                            axi_awready         <= 1'b0;
                            axi_wready          <= 1'b0;
                            axi_arready         <= 1'b0;
                            case ( S_AXI_ARADDR[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
                              4'h0: axi_rdata <= config_register;
                              4'h1: axi_rdata <= parameter_register1;
                              4'h2: axi_rdata <= parameter_register2;
                              4'h3: axi_rdata <= parameter_register3;
                              4'h4: axi_rdata <= parameter_register4;
                              4'h5: axi_rdata <= parameter_register5;
                              4'h6: axi_rdata <= parameter_register6;
                              4'h7: axi_rdata <= parameter_register7;
                              4'h8: axi_rdata <= parameter_register8;
//                              4'h9: axi_rdata <= parameter_register9;
                              4'hA: axi_rdata <= parameter_registerA;
                              4'hB: axi_rdata <= parameter_registerB;
                              4'hC: axi_rdata <= parameter_registerC;
                              4'hD: axi_rdata <= parameter_registerD;
                              default : axi_rdata <= 0;
                            endcase
                            axi_rvalid        <= 1'b1;        //data and response valid to be transfered (deactivate in the next state)                               
                        end
                    else                                        //no  operation, AXI address read ready
                        begin
                            axi_arready       <= 1'b1; 
                        end
                end
                else if (axi_exec_state == CONFIGURATION)
                    begin
                        axi_awready       <= 1'b0;
                        axi_wready        <= 1'b0;
                        axi_bvalid        <= 1'b0;
                        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
                          4'h0: config_register     <= datain_AXI_register; 
                          4'h1: parameter_register1 <= datain_AXI_register;
                          4'h2: parameter_register2 <= datain_AXI_register;
                          4'h3: parameter_register3 <= datain_AXI_register;
                          4'h4: parameter_register4 <= datain_AXI_register;
                          4'h5: parameter_register5 <= datain_AXI_register;
                          4'h6: parameter_register6 <= datain_AXI_register; 
                          4'h7: parameter_register7 <= datain_AXI_register;
                          4'h8: parameter_register8 <= datain_AXI_register; 
//                          4'h9: parameter_register9 <= datain_AXI_register;
                          4'hA: parameter_registerA <= datain_AXI_register;
                          4'hB: parameter_registerB <= datain_AXI_register;
                          4'hC: parameter_registerC <= datain_AXI_register;
                          4'hD: parameter_registerD <= datain_AXI_register; 
                          default : 
                           begin
                                config_register <= config_register;
                                parameter_register1 <= parameter_register1;
                                parameter_register2 <= parameter_register2;
                                parameter_register3 <= parameter_register3;
                                parameter_register4 <= parameter_register4;
                                parameter_register5 <= parameter_register5;
                                parameter_register6 <= parameter_register6;
                                parameter_register7 <= parameter_register7;
                                parameter_register8 <= parameter_register8;
//                                parameter_register9 <= parameter_register9;
                                parameter_registerA <= parameter_registerA;
                                parameter_registerB <= parameter_registerB;
                                parameter_registerC <= parameter_registerC;
                                parameter_registerD <= parameter_registerD;
                           end
                        endcase  
                    end
                 else if (axi_exec_state == TRANSFER_CONFIGURATION)
                    begin
                        axi_rvalid        <= 1'b0;  
                    end
            end
        end

	// Add user logic here

	// User logic ends

	endmodule
