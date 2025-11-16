module counter_4bit(
    input CLK, RESET,
    output reg [3:0] Q
);
    always @(posedge CLK) begin
        if(RESET)
            Q <= 0;
        else
            Q <= Q + 1;
    end
endmodule
