`timescale 1ns / 1ps

module tb_decoder_2to4;

    reg [1:0] A;
    wire [3:0] Y;

    // Instantiate the Unit Under Test (UUT)
    decoder_2to4 uut (A, Y);

    initial begin
        // Create waveform dump file
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_decoder_2to4);

        // Apply test vectors
        A = 2'b00; #10;  // Expect Y = 0001
        A = 2'b01; #10;  // Expect Y = 0010
        A = 2'b10; #10;  // Expect Y = 0100
        A = 2'b11; #10;  // Expect Y = 1000

        // End simulation
        $finish;
    end

endmodule
