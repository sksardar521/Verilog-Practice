module mux_2x1 (out,sel,in0,in1);
    input in1,in0;
    input sel;
    output out;
    assign out = ((in0)&&(!sel))||((in1)&&(sel));
endmodule
