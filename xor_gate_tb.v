`timescale 1ns/1ps

module xor_gate_tb();
    reg a, b;
    wire y;

    xor_gate uut(a, b, y);

    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $stop;
    end
endmodule
