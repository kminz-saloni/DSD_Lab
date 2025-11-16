module d_ff(
    input D, CLK,
    output reg Q
);
    always @(posedge CLK)
        Q <= D;
endmodule
