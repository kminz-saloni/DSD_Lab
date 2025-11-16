`timescale 1ns/1ps
module tb_d_ff;

reg D, CLK;
wire Q;

d_ff uut(D, CLK, Q);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_d_ff);

    CLK=0;
    forever #5 CLK = ~CLK;
end

initial begin
    D=0; #10;
    D=1; #10;
    D=0; #10;
    $finish;
end
endmodule
