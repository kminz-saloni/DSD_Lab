`timescale 1ns/1ps
module counter4_sync_tb();
    reg Clk, Rst_n, En;
    wire [3:0] Q;

    counter4_sync uut(Clk, Rst_n, En, Q);

    initial begin
        // init
        Clk=0; Rst_n=0; En=0; #10;
        Rst_n=1; #10;
        // enable counting
        En=1;
        repeat (20) begin
            #5 Clk = 1; #5 Clk = 0; // period = 10
        end
        // disable
        En = 0;
        #20;
        // reset
        Rst_n = 0; #10; Rst_n = 1; #10;
        $stop;
    end
endmodule
