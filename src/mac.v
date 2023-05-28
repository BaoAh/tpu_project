module mac (
    input            clk,
    input            reset,
    input      [7:0] up_in,
    input      [7:0] left_in,
    output reg [7:0] up_out,
    output reg [7:0] left_out,
    output reg [7:0] mat_out
);
  // Reg for bit shift offset, which ranges 0~8
  reg[2:0]ShiftCount;
  always @(*) begin
    if(reset) begin
      up_in = 8'b0;
    end
    else begin
      case(up_in)
        // shift 0 bits 
        (up_in >= 0 && up_in )
        // shift 1 bits
        // shift 2 bits
        // shift 3 bits
        // shift 4 bits
        // shift 5 bits
        // shift 6 bits
        // shift 7 bits
        // shift 8 bits
      endcase
    end
  end
  always @(posedge clk or posedge reset) begin
    //  always @ (posedge clk) begin
    if (reset) begin
      up_out   <= 0;
      left_out <= 0;
      mat_out  <= 0;
    end else begin
      up_out   <= up_in;
      left_out <= left_in;
      mat_out  <= mat_out + up_in * left_in;
    end
  end

endmodule
