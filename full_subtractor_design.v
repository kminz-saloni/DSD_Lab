module full_subtractor(
    input A, B, Bin,
    output DIFF, BOUT
);
    assign DIFF = A ^ B ^ Bin;
    assign BOUT = (~A & B) | (~(A ^ B) & Bin);
endmodule
