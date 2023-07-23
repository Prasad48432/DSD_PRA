module tbcounter;
reg clk,rst;
wire[3:0]count;
mod10c m1(clk ,rst, count);
initial begin
clk=1'b0;
forever #5 clk= ~ clk;
end
initial begin
rst=1;
#15
rst=0;
#170
$stop;
end;
