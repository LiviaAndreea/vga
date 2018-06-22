

module ClkDivider (

    input [3:0] MODE,
    input clk,
    input D,
    input rst,
    output reg clk_div,
	
 );
 
 wire clock_25;
 wire clock_50;
    always@(posedge clock) begin
	 
		if (D == 1) 
		clk_div <= clk_div;
		else 
		clk_div <= ~clk_div;
		
end
endmodule
 






