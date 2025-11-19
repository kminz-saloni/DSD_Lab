`timescale 1ns/1ps

module priority_encoder_tb();

    reg D3, D2, D1, D0;
    wire Y1, Y0, V;

    priority_encoder uut (D3, D2, D1, D0, Y1, Y0, V);

    initial begin
        // Only lowest priority active
        {D3,D2,D1,D0} = 4'b0001; #10;
        {D3,D2,D1,D0} = 4'b0010; #10;
        {D3,D2,D1,D0} = 4'b0100; #10;
        {D3,D2,D1,D0} = 4'b1000; #10;

        // Multiple inputs active (highest priority chosen)
        {D3,D2,D1,D0} = 4'b1011; #10;  // D3 has priority
        {D3,D2,D1,D0} = 4'b0111; #10;  // D2 has priority

        // No input active
        {D3,D2,D1,D0} = 4'b0000; #10;

        $stop;
    end

endmodule
