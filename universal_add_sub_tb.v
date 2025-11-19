`timescale 1ns/1ps

module universal_add_sub_tb();

    reg [3:0] A, B;
    reg MODE;   // 0 = Add, 1 = Sub
    wire [3:0] Result;
    wire Cout, Overflow;

    universal_add_sub uut (A, B, MODE, Result, Cout, Overflow);

    initial begin
        // ADDITION TEST
        MODE = 0;
        A = 4'b0101; B = 4'b0011; #10;   // 5 + 3 = 8
        A = 4'b0111; B = 4'b0100; #10;   // 7 + 4 = 11

        // SUBTRACTION TEST
        MODE = 1;
        A = 4'b1001; B = 4'b0011; #10;   // 9 - 3 = 6
        A = 4'b0100; B = 4'b0110; #10;   // 4 - 6 = -2 (overflow detection)

        // EDGE CASE: signed overflow
        MODE = 0;
        A = 4'b0111; B = 4'b0111; #10;   // 7 + 7 = 14 (overflow)

        $stop;
    end

endmodule
