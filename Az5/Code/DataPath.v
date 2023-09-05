module DataPath (
    input wire [3:0] multiplier, multiplicand,
    input rstn, clk,
    input [2:0] shift,
    input op,
    input finish,
    output wire [7:0] result,
    output reg [2:0] counter
);

reg signed [3:0] A, B, C;

assign result = {C, B};

always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        A = multiplicand;
        B = multiplier;
        C = 0;
        counter = 3'b100;
    end
    else begin
        #1 
        if(!finish) begin
            if(shift == 1) {C, B} = {C[3], C, B[3:1]};
            else if(shift == 2) {C, B} = {C[3], C[3], C, B[3:2]};
            else if(shift == 3) {C, B} = {C[3], C[3], C[3], C, B[3]};
            else if(shift == 4) {C, B} = {C[3], C[3], C[3], C[3], C};
            counter = counter - shift;
            $display("pre %b ? %b", result, A);
            if(counter > 0 || op) begin
                if(op) C = C + A;
                else C = C - A;
            end
            $display("post %b", result);
        end
    end
end
    
endmodule