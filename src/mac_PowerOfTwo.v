module mac (
    input            clk,
    input            reset,
    input      [7:0] up_in, // sign + bit shift = 4 bits  // 4 * 8
    input      [7:0] left_in,
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
        1 : mat_out <= mat_out +  left_in << 1;
        2 : mat_out <= mat_out +  left_in << 2;
        3 : mat_out <= mat_out +  left_in << 3;
        4 : mat_out <= mat_out +  left_in << 4;
        5 : mat_out <= mat_out +  left_in << 5;
        6 : mat_out <= mat_out +  left_in << 6;
        7 : mat_out <= mat_out +  left_in << 7;
        default: mat_out <= mat_out +  left_in;
      endcase
      //mat_out  <= mat_out + up_in * left_in;
    end
  end

endmodule
