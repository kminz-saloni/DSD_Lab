`timescale 1ns / 1ps

module tb_priority_encoder_4to2;

    reg D3, D2, D1, D0;
    wire [1:0] Y;
    wire V;

    // Instantiate the Unit Under Test (UUT)
    priority_encoder_4to2 uut (D3, D2, D1, D0, Y, V);

    initial begin
        // Create waveform dump file
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_priority_encoder_4to2);

        // Apply test vectors
        D3=0; D2=0; D1=0; D0=0; #10; // No input
        D3=0; D2=0; D1=0; D0=1; #10; // Expect Y=00
        D3=0; D2=0; D1=1; D0=1; #10; // Expect Y=01 (D1 has priority)
        D3=0; D2=1; D1=1; D0=1; #10; // Expect Y=10 (D2 priority)
        D3=1; D2=1; D1=1; D0=1; #10; // Expect Y=11 (highest priority D3)

        // End simulation
        $finish;
    end

endmodule
