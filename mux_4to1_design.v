// Design module for 4-to-1 Multiplexer
module mux_4to1(
    input A,     // Input 0
    input B,     // Input 1
    input C,     // Input 2
    input D,     // Input 3
    input [1:0] S, // 2-bit select line
    output Y
);
    assign Y = (S == 2'b00) ? A :
               (S == 2'b01) ? B :
               (S == 2'b10) ? C :
                              D;
endmodule
