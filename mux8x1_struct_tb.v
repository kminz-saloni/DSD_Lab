`timescale 1ns/1ps

module mux8x1_struct_tb();

    reg D0, D1, D2, D3, D4, D5, D6, D7;
    reg S0, S1, S2;
    wire Y;

    mux8x1_struct uut (D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, Y);

    initial begin
        // Setup data values
        D0=0; D1=1; D2=0; D3=1; D4=0; D5=1; D6=0; D7=1;

        // Cycle through select combinations
        {S2,S1,S0} = 3'b000; #10;
        {S2,S1,S0} = 3'b001; #10;
        {S2,S1,S0} = 3'b010; #10;
        {S2,S1,S0} = 3'b011; #10;
        {S2,S1,S0} = 3'b100; #10;
        {S2,S1,S0} = 3'b101; #10;
        {S2,S1,S0} = 3'b110; #10;
        {S2,S1,S0} = 3'b111; #10;

        $stop;
    end

endmodule
