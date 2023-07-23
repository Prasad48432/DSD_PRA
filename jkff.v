module jkff(j,k,clk,rst,q,qb);
  input j,k,clk,rst;
  output reg q,qb;
  always @(negedge clk) 
    begin
      if(rst == 1)
      q = 0;
    else
      case({j,k})
      2'b00 : q = q; qb= ~q;
      2'b01 : q = 0; qb= ~q;
      2'b10 : q = 1; qb= ~q;
      2'b11 : q <= ~q; qb= ~q; 
    endcase   
  end
endmodule
