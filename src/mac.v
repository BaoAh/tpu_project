module mac (
    input            clk,
    input            reset,
    input  signed    [7:0] up_in,
    input  signed    [7:0] left_in,
    output reg signed [7:0] up_out,
    output reg signed [7:0] left_out,
    //output reg [7:0] mat_out
    //output reg signed [15:0] mat_out
    output reg signed [20:0] mat_out
);

//reg signed [20:0] mat_out_reg;

//assign mat_out = mat_out_reg[15:0];

wire signed [20:0] mul = up_in * left_in;

  always @(posedge clk or posedge reset) begin
    //  always @ (posedge clk) begin
    if (reset) begin
      up_out   <= 0;
      left_out <= 0;
      mat_out  <= 0;
    end else begin
      up_out   <= up_in;
      left_out <= left_in;
      //mat_out_reg  <= mat_out_reg + mul;
      mat_out  <= mat_out + mul;
    end
  end

endmodule
