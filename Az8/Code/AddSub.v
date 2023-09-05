`include "macros.v"

module AddSub (
    input `complex a,
    input `complex b,
    input op,     // 0 add - 1 sub
    output `complex c
);
    assign `Re(c) = (op ? (`sRe(a) - `sRe(b)) : (`sRe(a) + `sRe(b)));
    assign `Im(c) = (op ? (`sIm(a) - `sIm(b)) : (`sIm(a) + `sIm(b)));
endmodule
