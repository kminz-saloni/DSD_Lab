`timescale 1ns / 1ps

module tb_mux_4to1;

    reg A, B, C, D;
    reg [1:0] S;
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    mux_4to1 uut (A, B, C, D, S, Y);

    initial begin
        // Create waveform dump file
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_mux_4to1);

        // Apply test vectors
        A=0; B=1; C=0; D=1;

        S=2'b00; #10;  // Expect A
        S=2'b01; #10;  // Expect B
        S=2'b10; #10;  // Expect C
        S=2'b11; #10;  // Expect D

        A=1; B=0; C=1; D=0;

        S=2'b00; #10;  // Expect A
        S=2'b01; #10;  // Expect B
        S=2'b10; #10;  // Expect C
        S=2'b11; #10;  // Expect D

        // End simulation
        $finish;
    end

endmodule
