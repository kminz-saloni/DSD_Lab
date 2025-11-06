// Design module for NOR gate
module nor_gate(
    input A,
    input B,
    output Y
);
    assign Y = ~(A | B);
endmodule
