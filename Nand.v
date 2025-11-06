`timescale 1ns / 1ps

module tb_nand_gate;

    reg A, B;
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    nand_gate uut (A, B, Y);

    initial begin
        // Create waveform dump file
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_nand_gate);

        // Apply test vectors
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;

        // Finish simulation
        $finish;
    end

endmodule
