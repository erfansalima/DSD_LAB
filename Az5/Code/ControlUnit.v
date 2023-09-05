module ControlUnit (
    input wire [2:0]counter,
    input [7:0] result,
    input rstn, clk,
    output reg [2:0] shift,
    output reg op,
    output reg finish
);

always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        finish = 0;
        shift = 0;
        op = 1;
    end
    else begin
        if(!finish) begin
            if(counter == 0) finish = 1;
            if(result[0] == op || counter == 0) shift = 0;
            else if(result[1] == op || counter == 1) shift = 1;
            else if(result[2] == op || counter == 2) shift = 2;
            else if(result[3] == op || counter == 3) shift = 3;
            else shift = 4;
            op = ~op;
        end
    end
end


endmodule