module half_subtractor(
    input A,
    input B,
    output Diff,
    output Borrow
);

    // Diff = A xor B
    xor_gate X1 (A, B, Diff);

    // Borrow = ~A & B
    wire An;
    not_gate N1 (A, An);
    and_gate A1 (An, B, Borrow);

endmodule
