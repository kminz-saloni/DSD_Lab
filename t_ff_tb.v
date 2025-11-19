`timescale 1ns/1ps
module t_ff_tb();
    reg T, Clk, Rst_n;
    wire Q;

    t_ff uut(T, Clk, Rst_n, Q);

    initial begin
        Clk=0; Rst_n=0; T=0; #10;
        Rst_n=1; #10;
        // Toggle enable
        T=1; #5; Clk=1; #5; Clk=0; #10;
        T=1; #5; Clk=1; #5; Clk=0; #10;
        T=0; #5; Clk=1; #5; Clk=0; #10;
        $stop;
    end
endmodule
