// Design module for OR gate
module or_gate(
    input A,
    input B,
    output Y
);
    assign Y = A | B;
endmodule
