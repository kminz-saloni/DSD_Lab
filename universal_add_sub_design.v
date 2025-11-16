module universal_add_sub(
    input [3:0] A, B,
    input MODE,            // 0 = Add, 1 = Sub
    output [3:0] RESULT,
    output CARRY
);

wire [3:0] B2 = B ^ {4{MODE}};
wire Cin = MODE;

assign {CARRY, RESULT} = A + B2 + Cin;

endmodule
