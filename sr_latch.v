module sr_latch(
    input S,
    input R,
    output Q,
    output Qn
);
    // Cross-coupled NORs
    wire n1, n2;
    nor_gate N1 (S, n2, n1);  // n1 = ~(S | n2)
    nor_gate N2 (R, n1, n2);  // n2 = ~(R | n1)
    assign Q = n1;
    assign Qn = n2;
endmodule
