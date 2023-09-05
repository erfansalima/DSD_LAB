module bit_comparator (input wire a, b, Gin, Ein, Lin, output wire Gout, Eout, Lout);
    assign Eout = Ein && (a == b);
    assign Gout = a > b || ((a == b) && Gin);
    assign Lout = a < b || ((a == b) && Lin);
endmodule