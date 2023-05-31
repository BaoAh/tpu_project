module mac (
    input            clk,
    input            reset,
    input      [7:0] up_in, // sign + bit shift = 4 bits  // 4 * 8
    input      [3:0] left_in,
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
        //7 : mat_out <= mat_out +  {left_in[0], 7'b0};
        // //0 : {mat_out[7:1], {left_in + mat_out[0]}};
        // //1 : mat_out <= mat_out +  left_in << 1;
        // 1 : {mat_out[7:2], {left_in + mat_out[1]}, mat_out[0]};
        // //2 : mat_out <= mat_out +  left_in << 2;
        // 2 : {mat_out[7:3], {left_in + mat_out[2]}, mat_out[1:0]};
        // //3 : mat_out <= mat_out +  left_in << 3;
        // 3 : {mat_out[7:4], {left_in + mat_out[3]}, mat_out[2:0]};
        // //4 : mat_out <= mat_out +  left_in << 4;
        // 4 : {mat_out[7:5], {left_in + mat_out[4]}, mat_out[3:0]};
        // //5 : mat_out <= mat_out +  left_in << 5;
        // 5 : {mat_out[7:6], {left_in + mat_out[5]}, mat_out[4:0]};
        // //6 : mat_out <= mat_out +  left_in << 6;
        // 6 : {mat_out[7], {left_in + mat_out[6]}, mat_out[5:0]};
        // //7 : mat_out <= mat_out +  left_in << 7;
        // 7 : {{left_in + mat_out[7]}, mat_out[6:0]};
        default: mat_out <= mat_out +  left_in;
      endcase
      //mat_out  <= mat_out + up_in * left_in;
    end
  end

endmodule
