/*
this is behavioral model of 4x1 mux

module mux_4x1 (out,sel,in);
    input [3:0]in;
    input [1:0]sel;
    output out;
    assign out=in[sel];
endmodule
*/

//this is structural model of 4x1 mux
module mux_4x1 (out,sel,in);
    input [3:0]in;
    input [1:0]sel;
    output out;
    wire t[1:0];
    mux_2x1 m1_2x1(.out(t[0]), .sel(sel[1]), .in0(in[0]), .in1(in[1]));
    mux_2x1 m2_2x1(.out(t[1]), .sel(sel[1]), .in0(in[0]), .in1(in[1]));
    mux_2x1 m3_2x1(.out(out),  .sel(sel[0]), .in0(t[0]),   .in1(t[1]));
endmodule
