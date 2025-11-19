`timescale 1ns/1ps

module mux4x1_struct_tb();

    reg D0, D1, D2, D3;
    reg S0, S1;
    wire Y;

    mux4x1_struct uut (D0, D1, D2, D3, S0, S1, Y);

    initial begin
        D0=1; D1=0; D2=1; D3=0;

        S1=0; S0=0; #10;
        S1=0; S0=1; #10;
        S1=1; S0=0; #10;
        S1=1; S0=1; #10;

        $stop;
    end

endmodule
