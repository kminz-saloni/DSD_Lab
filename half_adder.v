module half_adder(
    input A, B,
    output Sum, Carry
);

    xor_gate X1 (A, B, Sum);
    and_gate A1 (A, B, Carry);

endmodule
