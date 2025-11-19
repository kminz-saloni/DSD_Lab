module boolean_expr(
    input A,
    input B,
    input C,
    output Y1,
    output Y2,
    output Y3
);
    // Expression 1: Y1 = A'B + AB'
    assign Y1 = (~A & B) | (A & ~B);

    // Expression 2: Y2 = (A + B)'
    assign Y2 = ~(A | B);

    // Expression 3: Y3 = A(B + C')
    assign Y3 = A & (B | ~C);
endmodule
