module mac (
    input            clk,
    input            reset,
    input      [7:0] up_in, // sign + bit shift = 4 bits  // 4 * 8
    input      [2:0] left_in,
    output reg [7:0] up_out,
    output reg [7:0] left_out,
    output reg [7:0] mat_out    // 4 * 8 = 12
);
  reg [3:0]ShiftOffset;
  always @(*) begin
    if(reset) ShiftOffset = 0;
    else      ShiftOffset = up_in[3:0];
  end
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      up_out   <= 0;
      left_out <= 0;
      mat_out  <= 0;
    end else begin
      up_out   <= up_in;
      left_out <= left_in;
      case (ShiftOffset)
        0 : mat_out <= mat_out +  left_in;
        1 : mat_out <= mat_out +  {left_in[6:0], 1'b0};
        2 : mat_out <= mat_out +  {left_in[5:0], 2'b0};
        3 : mat_out <= mat_out +  {left_in[4:0], 3'b0};
        4 : mat_out <= mat_out +  {left_in[3:0], 4'b0};
        5 : mat_out <= mat_out +  {left_in[2:0], 5'b0};
        6 : mat_out <= mat_out +  {left_in[1:0], 6'b0};
        default: mat_out <= mat_out +  left_in;
      endcase
      //mat_out  <= mat_out + up_in * left_in;
    end
  end

endmodule
