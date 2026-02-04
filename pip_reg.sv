module reg(
input clk,
input rst,
input [3:0] a,
input in_valid,
output [3:0] out,
output in_ready);

logic [3:0] pip1;
logic valid_id;


always_ff @(posedge clk or negedge rst) begin
if(!rst) begin
pip1 <=0;
valid_id<=0;
end else begin
valid_id<=in_valid;
if(in_valid) 
pip1<=a;
end 
end


assign out<=pip1;
assign in_ready<=valid_id;

endmodule


