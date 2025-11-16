`timescale 1ns/1ps
module tb_universal_add_sub;

reg [3:0] A, B;
reg MODE;
wire [3:0] RESULT;
wire CARRY;

universal_add_sub uut(A, B, MODE, RESULT, CARRY);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_universal_add_sub);

    A=5; B=3; MODE=0; #10;  // Add
    A=7; B=2; MODE=1; #10;  // Sub

    $finish;
end
endmodule
