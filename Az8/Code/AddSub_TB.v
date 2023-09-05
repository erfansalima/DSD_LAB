`include "macros.v"

module AddSub_TB;
    reg `complex a, b;
    reg op;
    wire `complex c;

    AddSub addsub(a, b, op, c);

    initial begin

        `Re(a) = -11; `Im(a) = 15;
        `Re(b) = 13; `Im(b) = -14;
        op = 1;
        #10;
        $display("(%d, %d) - (%d, %d) = (%d, %d)", `sRe(a), `sIm(a), `sRe(b), `sIm(b), `sRe(c), `sIm(c));
        `Re(a) = 14; `Im(a) = 3;
        `Re(b) = 21; `Im(b) = -64;
        op = 0;
        #10;
        $display("(%d, %d) + (%d, %d) = (%d, %d)", `sRe(a), `sIm(a), `sRe(b), `sIm(b), `sRe(c), `sIm(c));
        `Re(a) = 20; `Im(a) = 18;
        `Re(b) = -40; `Im(b) = 32;
        op = 0;
        #10;
        $display("(%d, %d) + (%d, %d) = (%d, %d)", `sRe(a), `sIm(a), `sRe(b), `sIm(b), `sRe(c), `sIm(c));
        `Re(a) = 43; `Im(a) = 0;
        `Re(b) = -1; `Im(b) = -37;
        op = 1;
        #10;
        $display("(%d, %d) - (%d, %d) = (%d, %d)", `sRe(a), `sIm(a), `sRe(b), `sIm(b), `sRe(c), `sIm(c));
        $finish();
    end

endmodule
