// Design module for 2-to-1 Multiplexer
module mux_2to1(
    input A,     // Input 0
    input B,     // Input 1
    input S,     // Select line
    output Y     // Output
);
    assign Y = (S) ? B : A;
endmodule
