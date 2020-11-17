`include "ALU.v"

module alu_tb();


reg signed [3:0] A;
reg signed [3:0] B;
wire signed [3:0]Z;
reg [1:0] ctrl;
reg [13:0] mem[255:0];
integer i;


ALU testbench(A,B,ctrl,Z);

initial
begin

$readmemb("alutest.txt", mem);
end

initial example;

task example;

begin

$display(" time     A     B     ctrl     expected_o/p    actual_o/p     result");

for(i=0;i<255;i=i+1)
begin
A=mem[i][3:0];
B=mem[i][7:4];
ctrl=mem[i][9:8];

#2

if(Z===mem[i][13:10])
$display($time, " A=%b B=%b ctrl=%b exp_o/p=%b actual_o/p=%b
  PASS", A,B,ctrl,mem[i][13:10], Z);

else

$display($time, " A=%b B=%b ctrl=%b exp_o/p=%b actual_o/p=%b FAIL",
A,B,ctrl,mem[i][13:10], Z);

end

end

endtask

initial
begin
#150 $finish;
end
endmodule





















