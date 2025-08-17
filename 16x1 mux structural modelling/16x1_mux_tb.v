`timescale 1ns / 1ps
module muxtest;
  reg[15:0]a; reg[3:0]s; wire f;
  mux16x1 Mux_16x1(.in(a),.sel(s),.out(f));
  initial
    begin
      $dumpfile("16x1_mux.vcd");
      $dumpvars(0,muxtest);
      $monitor ($time,"a=%h,s=%h,f=%b",a,s,f);
      #5 a=16'h3f0a; s=4'h0;
      #5 s=4'h1;
      #5 s=4'h6;
      #5 s=4'hc;
      #5 $finish;
    end
endmodule
