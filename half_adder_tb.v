`timescale 1ns/1ps

module half_adder_tb();

    reg A, B;
    wire Sum, Carry;

    half_adder uut(A, B, Sum, Carry);

    initial begin
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;

        $stop;
    end

endmodule
