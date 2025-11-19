module priority_encoder(
    input D3, D2, D1, D0,
    output Y1, Y0,
    output V
);

    // Valid output = 1 if any input is 1
    assign V = D3 | D2 | D1 | D0;

    // Y1 and Y0 based on priority (D3 highest)
    assign Y1 = D3 | D2;
    assign Y0 = D3 | (~D2 & D1);

endmodule
