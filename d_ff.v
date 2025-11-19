module d_ff(
    input D,
    input Clk,
    input Rst_n,   // async active-low reset
    output reg Q
);
    always @(posedge Clk or negedge Rst_n) begin
        if (!Rst_n) Q <= 1'b0;
        else Q <= D;
    end
endmodule
