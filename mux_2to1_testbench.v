`timescale 1ns / 1ps

module tb_mux_2to1;

    reg A, B, S;
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    mux_2to1 uut (A, B, S, Y);

    initial begin
        // Create waveform dump file
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_mux_2to1);

        // Apply test vectors
        A=0; B=0; S=0; #10;
        A=0; B=1; S=0; #10;
        A=1; B=0; S=0; #10;
        A=1; B=1; S=0; #10;

        A=0; B=0; S=1; #10;
        A=0; B=1; S=1; #10;
        A=1; B=0; S=1; #10;
        A=1; B=1; S=1; #10;

        // End simulation
        $finish;
    end

endmodule
