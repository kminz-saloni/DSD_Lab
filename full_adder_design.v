module full_adder(
    input A, B, Cin,
    output SUM, COUT
);
    assign SUM  = A ^ B ^ Cin;
    assign COUT = (A & B) | (B & Cin) | (A & Cin);
endmodule
