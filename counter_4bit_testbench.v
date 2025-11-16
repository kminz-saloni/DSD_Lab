`timescale 1ns/1ps
module tb_counter_4bit;

reg CLK, RESET;
wire [3:0] Q;

counter_4bit uut(CLK, RESET, Q);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_counter_4bit);

    CLK=0;
    forever #5 CLK = ~CLK;
end

initial begin
    RESET=1; #10;
    RESET=0; #100;
    $finish;
end

endmodule
