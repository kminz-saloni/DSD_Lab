module counter4_sync(
    input Clk,
    input Rst_n,   // synchronous active-low reset (we'll handle as sync)
    input En,      // enable
    output reg [3:0] Q
);
    always @(posedge Clk) begin
        if (!Rst_n)
            Q <= 4'b0000;
        else if (En)
            Q <= Q + 1'b1;
        else
            Q <= Q;
    end
endmodule
