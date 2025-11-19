module full_subtractor(
    input A,
    input B,
    input Bin,        // Borrow in
    output Diff,
    output Bout       // Borrow out
);

    wire s1, b1, b2, s1n;

    // First half-subtractor: s1 = A ^ B, b1 = ~A & B
    xor_gate X1 (A, B, s1);
    wire An;
    not_gate N1 (A, An);
    and_gate AND_b1 (An, B, b1);

    // Second half-subtractor: Diff = s1 ^ Bin, b2 = ~s1 & Bin
    xor_gate X2 (s1, Bin, Diff);
    not_gate N2 (s1, s1n);
    and_gate AND_b2 (s1n, Bin, b2);

    // Final Borrow out = b1 | b2
    or_gate OR1 (b1, b2, Bout);

endmodule
