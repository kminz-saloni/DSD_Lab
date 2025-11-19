module mux8x1_struct(
    input D0, D1, D2, D3, D4, D5, D6, D7,
    input S0, S1, S2,
    output Y
);

    // Inverted select lines
    wire S0n, S1n, S2n;

    not_gate N0 (S0, S0n);
    not_gate N1 (S1, S1n);
    not_gate N2 (S2, S2n);

    // Intermediate AND outputs
    wire w0a, w0b;
    wire w1a, w1b;
    wire w2a, w2b;
    wire w3a, w3b;
    wire w4a, w4b;
    wire w5a, w5b;
    wire w6a, w6b;
    wire w7a, w7b;

    // D0: ~S2 ~S1 ~S0
    and_gate A0a (S2n, S1n, w0a);
    and_gate A0b (w0a, S0n, w0b);
    and_gate A0  (w0b, D0, w0);

    // D1: ~S2 ~S1 S0
    and_gate A1a (S2n, S1n, w1a);
    and_gate A1b (w1a, S0, w1b);
    and_gate A1  (w1b, D1, w1);

    // D2: ~S2 S1 ~S0
    and_gate A2a (S2n, S1, w2a);
    and_gate A2b (w2a, S0n, w2b);
    and_gate A2  (w2b, D2, w2);

    // D3: ~S2 S1 S0
    and_gate A3a (S2n, S1, w3a);
    and_gate A3b (w3a, S0, w3b);
    and_gate A3  (w3b, D3, w3);

    // D4: S2 ~S1 ~S0
    and_gate A4a (S2, S1n, w4a);
    and_gate A4b (w4a, S0n, w4b);
    and_gate A4  (w4b, D4, w4);

    // D5: S2 ~S1 S0
    and_gate A5a (S2, S1n, w5a);
    and_gate A5b (w5a, S0, w5b);
    and_gate A5  (w5b, D5, w5);

    // D6: S2 S1 ~S0
    and_gate A6a (S2, S1, w6a);
    and_gate A6b (w6a, S0n, w6b);
    and_gate A6  (w6b, D6, w6);

    // D7: S2 S1 S0
    and_gate A7a (S2, S1, w7a);
    and_gate A7b (w7a, S0, w7b);
    and_gate A7  (w7b, D7, w7);

    // OR all outputs
    wire t0, t1, t2, t3;

    or_gate O0 (w0, w1, t0);
    or_gate O1 (w2, w3, t1);
    or_gate O2 (w4, w5, t2);
    or_gate O3 (w6, w7, t3);

    wire t4, t5;

    or_gate O4 (t0, t1, t4);
    or_gate O5 (t2, t3, t5);

    or_gate O6 (t4, t5, Y);

endmodule
