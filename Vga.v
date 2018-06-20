module Vga(
  	 input [7:0] R,
	 input [7:0] G,
	 input [7:0] A,
	 input  clk_in,          
    input  rst,
	 input  disp_active,
	 input clock_div,
    output  hsync,
    output  vsync,           
    output  vga _black_n,     
    output  vga_sync_n,            
    output [11:0] xpose,
	 output [11:0] ypose,
	 input  [7:0] R_out,
	 input  [7:0] G_out,
	 input  [7:0] A_out,
	 
	 
    );
reg  [11:0] h_count;
reg  [11:0] v_count;
localparam LINE = 640;
localparam SCREEN = 480;

always @(posedge clk_in) begin 
	if (rst==0)
		h_count <=0;
		v_count <=0;
		
		 if (clock_div)  
        begin
            if (h_count == LINE)  
            begin
                h_count <= 0;
                v_count <= v_count + 1;
            end
            else 
                h_count <= h_count + 1;

            if (v_count == SCREEN)  
                v_count <= 0;
        end
    end
	 
	 
