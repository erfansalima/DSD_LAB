`include "macros.v"

module Multiply (
    input `complex a,
    input `complex b,
    output `complex c
);
    assign `Re(c) = `sRe(a) * `sRe(b) - `sIm(a) * `sIm(b);
    assign `Im(c) = `sRe(a) * `sIm(b) + `sIm(a) * `sRe(b);
endmodule