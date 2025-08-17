/* this module is Behavioral of 16x1 mux
module mux (in,sel,out);
  input [15:0]in;
  input [3:0]sel;
  output out;
  assign out=in[sel];
endmodule  
*/

// this module is structural of 16x1 mux
module mux16x1 (out,sel,in);
    output out;
    input [3:0]sel;
    input [15:0]in;
    wire [3:0]t;

    mux_4x1 m1_4x1(.out(t[0]), .sel(sel[1:0]), .in(in[3:0]));
    mux_4x1 m2_4x1(.out(t[1]), .sel(sel[1:0]), .in(in[7:4]));
    mux_4x1 m3_4x1(.out(t[2]), .sel(sel[1:0]), .in(in[11:8]));
    mux_4x1 m4_4x1(.out(t[3]), .sel(sel[1:0]), .in(in[15:12]));
    mux_4x1 m5_4x1(.out(out), .sel(sel[3:2]), .in(t[3:0]));
endmodule
