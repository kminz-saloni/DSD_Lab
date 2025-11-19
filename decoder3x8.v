module decoder3x8(
    input A2, A1, A0,
    output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7
);

    wire A2n, A1n, A0n;

    not_gate N0 (A0, A0n);
    not_gate N1 (A1, A1n);
    not_gate N2 (A2, A2n);

    wire w0a, w1a, w2a, w3a, w4a, w5a, w6a, w7a;

    // Y0 = ~A2 & ~A1 & ~A0
    and_gate A0a (A2n, A1n, w0a);
    and_gate A0b (w0a, A0n, Y0);

    // Y1 = ~A2 & ~A1 & A0
    and_gate A1a (A2n, A1n, w1a);
    and_gate A1b (w1a, A0, Y1);

    // Y2 = ~A2 & A1 & ~A0
    and_gate A2a (A2n, A1, w2a);
    and_gate A2b (w2a, A0n, Y2);

    // Y3 = ~A2 & A1 & A0
    and_gate A3a (A2n, A1, w3a);
    and_gate A3b (w3a, A0, Y3);

    // Y4 = A2 & ~A1 & ~A0
    and_gate A4a (A2, A1n, w4a);
    and_gate A4b (w4a, A0n, Y4);

    // Y5 = A2 & ~A1 & A0
    and_gate A5a (A2, A1n, w5a);
    and_gate A5b (w5a, A0, Y5);

    // Y6 = A2 & A1 & ~A0
    and_gate A6a (A2, A1, w6a);
    and_gate A6b (w6a, A0n, Y6);

    // Y7 = A2 & A1 & A0
    and_gate A7a (A2, A1, w7a);
    and_gate A7b (w7a, A0, Y7);

endmodule
