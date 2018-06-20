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
	 