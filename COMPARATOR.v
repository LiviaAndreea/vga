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