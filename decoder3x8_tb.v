`timescale 1ns/1ps

module decoder3x8_tb();

    reg A2, A1, A0;
    wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

    decoder3x8 uut (A2, A1, A0, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

    initial begin
        {A2,A1,A0}=3'b000; #10;
        {A2,A1,A0}=3'b001; #10;
        {A2,A1,A0}=3'b010; #10;
        {A2,A1,A0}=3'b011; #10;
        {A2,A1,A0}=3'b100; #10;
        {A2,A1,A0}=3'b101; #10;
        {A2,A1,A0}=3'b110; #10;
        {A2,A1,A0}=3'b111; #10;

        $stop;
    end

endmodule
