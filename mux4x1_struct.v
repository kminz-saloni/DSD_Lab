module mux4x1_struct(
    input D0, D1, D2, D3,
    input S0, S1,
    output Y
);

    wire S0n, S1n;
    wire w0a, w0;
    wire w1a, w1;
    wire w2a, w2;
    wire w3a, w3;
    wire t0, t1;

    // NOT gates
    not_gate N0 (S0, S0n);
    not_gate N1 (S1, S1n);

    // D0 path: (~S1 & ~S0) & D0
    and_gate A0a (S1n, S0n, w0a);
    and_gate A0b (w0a, D0, w0);

    // D1 path: (~S1 & S0) & D1
    and_gate A1a (S1n, S0, w1a);
    and_gate A1b (w1a, D1, w1);

    // D2 path: (S1 & ~S0) & D2
    and_gate A2a (S1, S0n, w2a);
    and_gate A2b (w2a, D2, w2);

    // D3 path: (S1 & S0) & D3
    and_gate A3a (S1, S0, w3a);
    and_gate A3b (w3a, D3, w3);

    // Combine all using OR gates
    or_gate O0 (w0, w1, t0);
    or_gate O1 (w2, w3, t1);
    or_gate O2 (t0, t1, Y);

endmodule
