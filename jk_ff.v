module jk_ff(
    input J,
    input K,
    input Clk,
    input Rst_n,   // asynchronous active-low reset (useful)
    output reg Q
);
    always @(posedge Clk or negedge Rst_n) begin
        if (!Rst_n)
            Q <= 1'b0;
        else begin
            case ({J,K})
                2'b00: Q <= Q;        // hold
                2'b01: Q <= 1'b0;     // reset
                2'b10: Q <= 1'b1;     // set
                2'b11: Q <= ~Q;       // toggle
            endcase
        end
    end
endmodule
