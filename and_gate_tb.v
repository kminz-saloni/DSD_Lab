
`timescale 1ns/1ps

module and_gate_tb();
    reg a, b;
    wire y;

    and_gate uut(a, b, y);

    initial begin
        // Case 1
        a = 0; b = 0; #10;
        
        // Case 2
        a = 0; b = 1; #10;

        // Case 3
        a = 1; b = 0; #10;

        // Case 4
        a = 1; b = 1; #10;

        $stop;
    end
endmodule
