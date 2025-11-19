`timescale 1ns/1ps
module jk_ff_tb();
    reg J, K, Clk, Rst_n;
    wire Q;

    jk_ff uut(J, K, Clk, Rst_n, Q);

    initial begin
        // init
        Clk = 0; Rst_n = 0; J=0; K=0; #10;
        Rst_n = 1; #10;
        // Set
        J=1; K=0; #5; Clk=1; #5; Clk=0; J=0; #10;
        // Reset
        J=0; K=1; #5; Clk=1; #5; Clk=0; K=0; #10;
        // Toggle
        J=1; K=1; #5; Clk=1; #5; Clk=0; #10;
        // Hold
        J=0; K=0; #5; Clk=1; #5; Clk=0; #10;
        $stop;
    end
endmodule
