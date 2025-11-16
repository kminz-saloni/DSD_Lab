module half_subtractor(
    input A, B,
    output DIFF, BORROW
);
    assign DIFF   = A ^ B;
    assign BORROW = (~A) & B;
endmodule
