module sr_ff(
    input S,
    input R,
    input Clk,    // positive-edge triggered (master on ~Clk, slave on Clk)
    output Q,
    output Qn
);
    wire mQ, mQn;
    // Master latch enabled when Clk = 0 (use gated inputs)
    // Implement gating by ANDing S/R with ~Clk, and feeding master latch
    wire Clkn;
    not_gate NG (Clk, Clkn);

    wire Sm, Rm, Ss, Rs;
    and_gate Ams (S, Clkn, Sm);
    and_gate Arm (R, Clkn, Rm);

    // Master latch
    sr_latch MASTER (Sm, Rm, mQ, mQn);

    // Slave enabled when Clk = 1, feed slave with master outputs gated by Clk
    and_gate Ass (mQ, Clk, Ss);
    and_gate Ars (mQn, Clk, Rs);

    sr_latch SLAVE (Ss, Rs, Q, Qn);

endmodule
