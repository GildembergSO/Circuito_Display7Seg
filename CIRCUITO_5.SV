module CIRCUITO_5 (
    input logic A, B, C, D,
    output logic a, b, c, d, e, f, g
);
    assign a = (~A & ~B & ~C & D) | (~A & B & ~C & ~D);
    assign b = (~A & B & ~C & D) | (B & C & ~D) | (A & B & ~D) | (A & B & C);
    assign c = (~A & ~B & C & ~D) | (A & B & ~D) | (A & B & C);
    assign d = (~A & ~B & ~C & D) | (~A & B & ~C & ~D) | (B & C & D) | (A & ~B & C & ~D);
    assign e = (~A & D) | (~B & ~C & D) | (~A & B & ~C);
    assign f = (~A & ~B & D) | (~A & ~B & C) | (~A & C & D);
    assign g = (~A & ~B & ~C) | (~A & B & C & D) | (A & B & ~C);
endmodule