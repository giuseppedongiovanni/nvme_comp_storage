
`timescale 1 ns / 1 ps

	module Accelerator_v3_0_S00_AXIS #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// AXI4Stream sink: Data Width
		parameter integer C_S_AXIS_TDATA_WIDTH	= 128
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// AXI4Stream sink: Clock
		input wire  S_AXIS_ACLK,
		// AXI4Stream sink: Reset
		input wire  S_AXIS_ARESETN,
		// Ready to accept data in
		output wire  S_AXIS_TREADY,
		// Data in
		input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] S_AXIS_TDATA,
		// Byte qualifier
		input wire [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] S_AXIS_TSTRB,
		// Indicates boundary of last packet
		input wire  S_AXIS_TLAST,
		// Data is in valid
		input wire  S_AXIS_TVALID,
		//data to the accelerator
        output wire  [C_S_AXIS_TDATA_WIDTH-1 :0] DATA_OUT,
		//empty flag
        output wire  EMPTY,
        //last flag
        output wire  FLAG_LAST,
        //valid data read
        input  wire  VALID_OUT
	);
	// function called clogb2 that returns an integer which has the 
	// value of the ceiling of the log base 2.
	function integer clogb2 (input integer bit_depth);
	  begin
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
	      bit_depth = bit_depth >> 1;
	  end
	endfunction

	// Total number of input data. (maximum amount of data, 16KB = (128bit/8)*1024 word
	localparam NUMBER_OF_INPUT_WORDS  = 1024;
	// bit_num gives the minimum number of bits needed to address 'NUMBER_OF_INPUT_WORDS' size of FIFO.
	localparam bit_num  = clogb2(NUMBER_OF_INPUT_WORDS-1);

    (* keep = "true" *) wire  	axis_tready;
	// FIFO implementation signals    
	// FIFO write enable
	(* keep = "true" *) wire fifo_wren;
	// FIFO read enable
    (* keep = "true" *) wire fifo_rden;
	// FIFO write pointer
	(* keep = "true" *) reg [bit_num-1:0] write_pointer;
	// FIFO read pointer
    (* keep = "true" *) reg [bit_num-1:0] read_pointer;
    
    (* keep = "true" *) reg [bit_num-1:0] status_cnt;
	
	//FIFO (no data strobe)
	reg  [(C_S_AXIS_TDATA_WIDTH)-1:0] stream_data_fifo [0 : NUMBER_OF_INPUT_WORDS-1]; //array of NUMBER_OF_INPUT_WORDS slot of C_S_AXIS_TDATA_WIDTH bit each
    reg  last_fifo [0 : NUMBER_OF_INPUT_WORDS-1];
    (* keep = "true" *) reg  [C_S_AXIS_TDATA_WIDTH-1 :0] FIFO_DATA_OUT;
    (* keep = "true" *) reg  FIFO_LAST_OUT;
    wire empty_wire;
	// I/O Connections assignments
     assign DATA_OUT        = FIFO_DATA_OUT;
     assign FLAG_LAST       = FIFO_LAST_OUT;
     assign empty_wire      = (status_cnt == 0);  
     assign EMPTY           = empty_wire; 
	// if the FIFO is not filled with NUMBER_OF_INPUT_WORDS number of input words, the device is ready.
	assign axis_tready      = (status_cnt <= NUMBER_OF_INPUT_WORDS-1); // !full
	assign S_AXIS_TREADY	= axis_tready;


    // FIFO write enable generation
	assign fifo_wren = S_AXIS_TVALID && axis_tready  && (status_cnt <= NUMBER_OF_INPUT_WORDS-1);
	assign fifo_rden = (VALID_OUT||FLAG_LAST) && (status_cnt  != 0);
	
	  always @( posedge S_AXIS_ACLK)               //WRITE
	   begin
	      if (!S_AXIS_ARESETN) 
	       begin
              write_pointer <= 0;
           end
	      else if (fifo_wren)// && S_AXIS_TSTRB[byte_index]) strobe not used
	        begin
	          stream_data_fifo[write_pointer] <= S_AXIS_TDATA;
	          last_fifo[write_pointer]        <= S_AXIS_TLAST;
	          write_pointer                   <= write_pointer + 1;
	        end  
          else if(FLAG_LAST)                         //reset variables
            begin
              write_pointer                   <= 1'b0;
            end 
	   end  
	    	  
	  always @ (posedge S_AXIS_ACLK)                 //READ
       begin
        if (!S_AXIS_ARESETN) 
            begin
                read_pointer  <= 0;
//                FIFO_DATA_OUT <= 0;
                FIFO_LAST_OUT <= 0;
            end 
        else if (fifo_rden)
            begin
                FIFO_DATA_OUT   <= stream_data_fifo[read_pointer];
                FIFO_LAST_OUT   <= last_fifo[read_pointer];
                read_pointer    <= read_pointer + 1;
            end
        else if(FLAG_LAST)                          //reset variables
            begin
                read_pointer    <= 1'b0;
                FIFO_LAST_OUT   <= 1'b0;
            end
       end
  
 always @(posedge S_AXIS_ACLK)                       //STATUS COUNTER
  begin 
     if (!S_AXIS_ARESETN) 
      begin
        status_cnt <= 0;
      end
     else if (fifo_rden && !(fifo_wren))                  // Read but no write.
      begin
       status_cnt <= status_cnt - 1;
      end
     else if (fifo_wren && !fifo_rden)          // Write but no read.
      begin
        status_cnt <= status_cnt + 1;
      end
   end 
	// Add user logic here

	// User logic ends

	endmodule
