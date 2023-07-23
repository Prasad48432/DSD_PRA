module mod10c(j,k,clk,rst,q,qb);
  input j,k,clk,rst;
  output [3:0]q,qb;
  
  jkff j1(1'b1,1'b1, clk , q[3]&q[1], Q[0]);
  
  jkff j2(1'b1,1'b1, Q[0], q[3]&q[1], Q[1]);
  
  jkff j3(1'b1,1'b1, Q[1], q[3]&q[1], Q[2]);

  jkff j4(1'b1,1'b1, Q[2], q[3]&q[1], Q[3]);

endmodule
