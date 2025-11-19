`timescale 1ns/1ps

module boolean_expr_tb();
    reg A, B, C;
    wire Y1, Y2, Y3;

    boolean_expr uut(A, B, C, Y1, Y2, Y3);

    initial begin
        A=0; B=0; C=0; #10;
        A=0; B=0; C=1; #10;
        A=0; B=1; C=0; #10;
        A=0; B=1; C=1; #10;
        A=1; B=0; C=0; #10;
        A=1; B=0; C=1; #10;
        A=1; B=1; C=0; #10;
        A=1; B=1; C=1; #10;
        $stop;
    end
endmodule
