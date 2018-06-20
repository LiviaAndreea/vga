# vga


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








module COUNTER(
    input clk,
    input rst,
    output reg [7:0] cnt
	 
    );
 
 
 
always @ (posedge(clk))  
begin
    if (rst == 1'b1)
        
        cnt <= 8'b0;
    else
        
        cnt <= cnt + 1'b1;
end
 
endmodule
	 
   
   
   
   
   
   
   
   
   
   
   
   
   
   module COMPARATOR(


input [31:0] counter,
output reg clock_div


);
	reg [31:0] output constantNumber = 25000000;
	

  always @(counter or constantNumber) begin
  
	if (counter != constantNumber)		
		
			clock_div <= 0;
		else
			clock_div <= 1;
			
			
			
			
end 


endmodule



















module ClkDivider (

    input EN,
	 input clock_div,
    output clk,
    input rst
 );
    


 endmodule
 
module clkDiv(input clk, output divClk);
	parameter n = 25;
	reg [n-1:0] count = 0;
	assign divClk = count[n-1];
	
	always @(posedge clk)
		count <= count + 1;
endmodule
 
 















