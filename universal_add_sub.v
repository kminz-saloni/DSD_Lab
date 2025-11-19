module universal_add_sub(
    input [3:0] A,
    input [3:0] B,
    input MODE,           // 0 = Add, 1 = Subtract
    output [3:0] Result,
    output Cout,
    output Overflow
);

    wire [3:0] B_mod;
    wire c1, c2, c3;

    // Modify B depending on MODE (B xor MODE)
    xor_gate X0 (B[0], MODE, B_mod[0]);
    xor_gate X1 (B[1], MODE, B_mod[1]);
    xor_gate X2 (B[2], MODE, B_mod[2]);
    xor_gate X3 (B[3], MODE, B_mod[3]);

    // First full adder
    full_adder FA0 (A[0], B_mod[0], MODE, Result[0], c1);
    full_adder FA1 (A[1], B_mod[1], c1,   Result[1], c2);
    full_adder FA2 (A[2], B_mod[2], c2,   Result[2], c3);
    full_adder FA3 (A[3], B_mod[3], c3,   Result[3], Cout);

    // Overflow for signed addition/subtraction
    xor_gate XOF (Cout, c3, Overflow);

endmodule
