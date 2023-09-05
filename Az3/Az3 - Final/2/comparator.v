module comparator(input a, b, clk, reset, output G, E, L);
    wire Gn, En, Ln; // inverse of G E L
    wire Gin, Ein, Lin; // computed G E L based on previous state;

    assign Gin = (~reset) && (G || (E && (a > b)));
    assign Ein = reset || (E && (a == b));
    assign Lin = (~reset) && (L || (E && (a < b)));

    // 1st layer Latches
    assign G1 = ~(G1n && ~(Gin && ~clk));
    assign G1n = ~(G1 && ~(~Gin && ~clk));
    assign E1 = ~(E1n && ~(Ein && ~clk));
    assign E1n = ~(E1 && ~(~Ein && ~clk));
    assign L1 = ~(L1n && ~(Lin && ~clk));
    assign L1n = ~(L1 && ~(~Lin && ~clk));
    // 2nd layer Latches
    assign G2 = ~(G2n && ~(G1 && clk));
    assign G2n = ~(G2 && ~(~G1 && clk));
    assign E2 = ~(E2n && ~(E1 && clk));
    assign E2n = ~(E2 && ~(~E1 && clk));
    assign L2 = ~(L2n && ~(L1 && clk));
    assign L2n = ~(L2 && ~(~L1 && clk));
    
    assign G = G2;
    assign E = E2;
    assign L = L2;
endmodule