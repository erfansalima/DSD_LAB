module stack(Clk, RstN, Data_In, Push, Pop, Data_Out, Full, Empty);
    parameter STACK_DEPTH = 8;
    parameter STACK_WIDTH = 4;

    input wire Clk, RstN, Push, Pop;
    input wire[STACK_WIDTH-1:0] Data_In;

    output Full, Empty;
    output reg [STACK_WIDTH-1:0] Data_Out;

    reg [STACK_WIDTH-1:0] stack [STACK_DEPTH-1:0];
    reg [STACK_DEPTH-1:0] count;
  
    assign Full = (count == STACK_DEPTH);
    assign Empty = (count == 0);
    integer i;
    always @(posedge Clk, negedge RstN) begin
      if(~RstN) begin
        count = 0;
        for(i = 0; i < STACK_DEPTH; i = i + 1)begin
          stack[i] = 0;
        end
      end
      else if(Pop && !Push && !Empty) begin
        Data_Out = stack[count - 1];
        count = count - 1;
      end
      else if(Push && !Pop && !Full) begin
        stack[count] = Data_In;
        $display("stack[%d] = %d", count, stack[count]);
        count = count + 1;
      end
    end
  endmodule