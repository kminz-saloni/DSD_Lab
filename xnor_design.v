// Design module for XNOR gate
module xnor_gate(
    input A,
    input B,
    output Y
);
    assign Y = ~(A ^ B);
endmodule
