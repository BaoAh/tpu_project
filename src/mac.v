module mac (
    input            clk,
    input            reset,
    input  signed    [3:0] up_in,
    input  signed    [7:0] left_in,
    output reg signed [3:0] up_out,
    output reg signed [7:0] left_out, 
    output reg signed [17:0] mat_out //format 10_8
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      up_out   <= 0;
      left_out <= 0;
      mat_out  <= 0;
    end else begin
      up_out   <= up_in;
      left_out <= left_in;
     // mat_out  <= mat_out + up_in * left_in;
      if(up_in[3]) begin //negative
        mat_out <= mat_out -  (left_in << up_in[2:0]); 
      end
      else begin //zero and positive
        if(up_in == 4'b0111) mat_out <= mat_out;
        else mat_out <= mat_out + (left_in << up_in[2:0]); 
      end
    end
  end
  
endmodule