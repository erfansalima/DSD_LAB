module Incubator(
  input signed [7:0] temperature,
  input clk,
  input reset,
  output reg heater,
  output reg cooler,
  output reg [3:0] crs
  );
  
  always @(posedge clk or negedge reset) begin
    if (~reset) begin
      heater = 0;
      cooler = 0;
      crs = 4'd0;
    end
    else begin
      if (~heater && ~cooler) begin
        if ($signed(temperature) > $signed(8'd35)) begin
           heater = 0;
           cooler = 1;
           crs = 4'd4;
        end
        else if ($signed(temperature) < $signed(8'd15)) begin
           heater = 1;
           cooler = 0;
        end
      end
      else if (heater && ~cooler && $signed(temperature) > $signed(8'd30)) begin
           heater = 0;
           cooler = 0;
      end
      else if (~heater && cooler) begin
        if (crs == 4'd8 && $signed(temperature) < $signed(8'd40))
          crs = 4'd6;
        else if (crs == 4'd6 && $signed(temperature) > $signed(8'd45))
          crs = 4'd8;
        else if (crs == 4'd6 && $signed(temperature) < $signed(8'd35))
          crs = 4'd4;  
        else if (crs == 4'd4 && $signed(temperature) > $signed(8'd40))
          crs = 4'd6;
        else if (crs == 4'd4 && $signed(temperature) < $signed(8'd25)) begin
          heater = 0;
          cooler = 0;
          crs = 4'd0;
        end
      end
    end
  end
  
endmodule