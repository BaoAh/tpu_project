module sync_fifo (
  input clk,
  input rst,
  input [7:0] datain,
  input wr_en,
  input rd_en,
  output [7:0] dataout,
  output reg empty,
  output reg full
);


reg [7:0] buffer [0:3];
reg wr_ptr = 0;
reg rd_ptr = 0;
reg [1:0] count = 0;

assign dataout = buffer[rd_ptr];

integer k;
always @(posedge clk) begin
  if (rst) begin
    wr_ptr <= 0;
    rd_ptr <= 0;
    count <= 0;
    empty <= 1;
    full <= 0;
	for(k=0;k<4;k=k+1) buffer[k] <= 8'd0;
  end
  else begin
    if (wr_en && !full) begin
      buffer[wr_ptr] <= datain;
      wr_ptr <= (wr_ptr == 3) ? 0 : wr_ptr + 1;
      count <= count + 1;
      empty <= 0;
      if (count == 3) full <= 1;
    end
    if (rd_en && !empty) begin
      //dataout <= buffer[rd_ptr];
	  buffer[rd_ptr] <= 0;
      rd_ptr <= (rd_ptr == 3) ? 0 : rd_ptr + 1;
      count <= count - 1;
      full <= 0;
      if (count == 1) empty <= 1;
    end
  end
end

endmodule

