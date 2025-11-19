module full_adder(
    input A, B, Cin,
    output Sum, Cout
);

    wire s1, c1, c2;

    // First half adder
    half_adder HA1 (A, B, s1, c1);

    // Second half adder
    half_adder HA2 (s1, Cin, Sum, c2);

    // Final OR for carry
    or_gate O1 (c1, c2, Cout);

endmodule
