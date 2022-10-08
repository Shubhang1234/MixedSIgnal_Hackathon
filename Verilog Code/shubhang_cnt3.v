module shubhang_cnt3(clk,rst,out);
input clk,rst;
output reg [2:0]out;

always @(posedge clk)
begin 
if (rst)
begin 
out<=3'b0;
end
else 
begin
out<=out+1'b1;
end
end
endmodule
