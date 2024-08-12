module sync_fifo_w #(
    parameter DEPTH = 4,
    parameter WIDTH = 8
) (
    input clk,
    input rst,
    input [2:0] data_in,
    input w_en,
    input r_en,
    output reg [2:0] data_out,
    output empty,
    output full
);


  reg [2:0] buffer[0:7];
  reg [2:0] wr_ptr;
  reg [2:0] rd_ptr;
  //assign data_out = buffer[rd_ptr];

  integer k;
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      wr_ptr <= 0;
      rd_ptr <= 0;
      data_out <= 3'd0;
      for (k = 0; k < WIDTH; k = k + 1) buffer[k] <= 3'd0;
    end else begin
      if (w_en && !full) begin
        buffer[wr_ptr] <= data_in;
        wr_ptr <= (wr_ptr == WIDTH - 1) ? 0 : wr_ptr + 1;
      end
      if (r_en && !empty) begin
        data_out <= buffer[rd_ptr];
        rd_ptr   <= (rd_ptr == WIDTH - 1) ? 0 : rd_ptr + 1;
      end
    end
  end

  assign full  = ((wr_ptr + 3'b1) == rd_ptr);
  assign empty = (wr_ptr == rd_ptr);


endmodule
