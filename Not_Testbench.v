`timescale 1ns / 1ps

module tb_not_gate;

    reg A;
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    not_gate uut (A, Y);

    initial begin
        // Create waveform dump file
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_not_gate);

        // Apply test vectors
        A = 0; #10;
        A = 1; #10;

        // End simulation
        $finish;
    end

endmodule
