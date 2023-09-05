module comparator(input [3:0]a, b, output G, E, L);
    wire [3:0]Gi;
    wire [3:0]Ei;
    wire [3:0]Li;
    
    bit_comparator bc0(a[0], b[0], 1'b0, 1'b1, 1'b0, Gi[0], Ei[0], Li[0]);
    bit_comparator bc1(a[1], b[1], Gi[0], Ei[0], Li[0], Gi[1], Ei[1], Li[1]);
    bit_comparator bc2(a[2], b[2], Gi[1], Ei[1], Li[1], Gi[2], Ei[2], Li[2]);
    bit_comparator bc3(a[3], b[3], Gi[2], Ei[2], Li[2], Gi[3], Ei[3], Li[3]);
    
    assign G = Gi[3];
    assign E = Ei[3];
    assign L = Li[3];
endmodule