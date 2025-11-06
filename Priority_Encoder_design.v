// Design module for 4-to-2 Priority Encoder
// Inputs: D3 (highest priority) to D0 (lowest priority)
// Outputs: Y[1:0] = encoded output, V = valid output
module priority_encoder_4to2(
    input D3,
    input D2,
    input D1,
    input D0,
    output reg [1:0] Y,
    output reg V
);
    always @(*) begin
        if (D3) begin
            Y = 2'b11;
            V = 1'b1;
        end else if (D2) begin
            Y = 2'b10;
            V = 1'b1;
        end else if (D1) begin
            Y = 2'b01;
            V = 1'b1;
        end else if (D0) begin
            Y = 2'b00;
            V = 1'b1;
        end else begin
            Y = 2'b00;
            V = 1'b0; // No valid input
        end
    end
endmodule
