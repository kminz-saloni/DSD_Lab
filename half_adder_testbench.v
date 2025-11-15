`timescale 1ns/1ps
module tb_half_adder;

reg A, B;
wire SUM, CARRY;

half_adder uut(A, B, SUM, CARRY);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_half_adder);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end
endmodule
