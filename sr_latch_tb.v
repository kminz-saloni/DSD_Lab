`timescale 1ns/1ps
module sr_latch_tb();
    reg S, R;
    wire Q, Qn;

    sr_latch uut(S, R, Q, Qn);

    initial begin
        // reset state
        S=0; R=0; #10;
        // set
        S=1; R=0; #10;
        S=0; R=0; #10;
        // reset
        S=0; R=1; #10;
        S=0; R=0; #10;
        // invalid (both 1) then back
        S=1; R=1; #10;
        S=0; R=0; #10;
        $stop;
    end
endmodule
