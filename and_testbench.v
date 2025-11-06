// Code your testbench here
// or browse Examples
// Design module for AND gate

`timescale 1ns / 1ps

module tb_and_gate;

    reg A, B;
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    and_gate uut (A, B, Y);

    initial begin
        // Create VCD dump for waveform
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_and_gate);

        // Apply test cases
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;

        // End simulation
        $finish;
    end

endmodule
