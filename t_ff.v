module t_ff(
    input T,
    input Clk,
    input Rst_n,
    output reg Q
);
    always @(posedge Clk or negedge Rst_n) begin
        if (!Rst_n) Q <= 1'b0;
        else if (T) Q <= ~Q;
        else Q <= Q;
    end
endmodule
