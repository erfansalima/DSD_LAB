`include "macros.v"

module mul_TB;

    reg `complex a, b;
    wire `complex c;

    Multiply mul(a, b, c);

    initial begin
        `Re(a) = -10; `Im(a) = 5;
        `Re(b) = 3; `Im(b) = -8;
        #10;
        $display("(%d, %d) * (%d, %d) = (%d, %d)", `sRe(a), `sIm(a), `sRe(b), `sIm(b), `sRe(c), `sIm(c));
        `Re(a) = 6; `Im(a) = 3;
        `Re(b) = 2; `Im(b) = -6;
        #10;
        $display("(%d, %d) * (%d, %d) = (%d, %d)", `sRe(a), `sIm(a), `sRe(b), `sIm(b), `sRe(c), `sIm(c));
        `Re(a) = 2; `Im(a) = 8;
        `Re(b) = -0; `Im(b) = 2;
        #10;
        $display("(%d, %d) * (%d, %d) = (%d, %d)", `sRe(a), `sIm(a), `sRe(b), `sIm(b), `sRe(c), `sIm(c));
        `Re(a) = 4; `Im(a) = 1;
        `Re(b) = -2; `Im(b) = -7;
        #10;
        $display("(%d, %d) * (%d, %d) = (%d, %d)", `sRe(a), `sIm(a), `sRe(b), `sIm(b), `sRe(c), `sIm(c));
        $finish();
    end

endmodule
