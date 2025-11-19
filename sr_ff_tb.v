`timescale 1ns/1ps
module sr_ff_tb();
    reg S, R, Clk;
    wire Q, Qn;

    sr_ff uut(S, R, Clk, Q, Qn);

    initial begin
        Clk = 0;
        S=0; R=0; #10;
        // Set on rising edge
        S=1; R=0; #5; Clk=1; #5; Clk=0; S=0; #10;
        // Reset on rising edge
        S=0; R=1; #5; Clk=1; #5; Clk=0; R=0; #10;
        // Try set+reset = 1 during capture (invalid)
        S=1; R=1; #5; Clk=1; #5; Clk=0; S=0; R=0; #10;
        $stop;
    end
endmodule
