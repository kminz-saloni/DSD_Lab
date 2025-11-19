`timescale 1ns/1ps

module not_gate_tb();
    reg a;
    wire y;

    not_gate uut(a, y);

    initial begin
        a = 0; #10;
        a = 1; #10;
        $stop;
    end
endmodule
