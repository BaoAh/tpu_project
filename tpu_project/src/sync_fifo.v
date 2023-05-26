module sync_fifo#(
    parameter DEPTH = 4,
    parameter WIDTH = 8
)(
  input clk,
  input rst,
  input [WIDTH-1:0] data_in,
  input w_en,
  input r_en,
  output reg [WIDTH-1:0] data_out,
  output empty,
  output full
);


reg [7:0] buffer [0:WIDTH-1];
reg [2:0] wr_ptr;
reg [2:0] rd_ptr;
reg [1:0] count = 0;

//assign data_out = buffer[rd_ptr];

integer k;
always @(posedge clk or negedge rst) begin
  if (!rst) begin
    wr_ptr <= 0;
    rd_ptr <= 0;
    count <= 0;
//    empty <= 1;
//    full <= 0;
	data_out <= 8'd0;
	for(k=0;k<WIDTH;k=k+1) buffer[k] <= 8'd0;
  end
  else begin
    if (w_en && !full) begin
      buffer[wr_ptr] <= data_in;
      wr_ptr <= (wr_ptr == WIDTH-1) ? 0 : wr_ptr + 1;
      //count <= count + 1;
//      empty <= 0;
//      if (count == WIDTH-1) full <= 1;
    end
    if (r_en && !empty) begin
      data_out <= buffer[rd_ptr];
	  //buffer[rd_ptr] <= 0;
      rd_ptr <= (rd_ptr == WIDTH-1) ? 0 : rd_ptr + 1;
      //count <= count - 1;
//      full <= 0;
//      if (count == 1) empty <= 1;
    end
	if(r_en&&!empty&&!w_en)begin
		count <= count - 1;
	end
	else if(w_en&&!full&&!r_en)begin
		count <= count + 1;
	end
  end
end

assign full  = ((wr_ptr + 3'b1) == rd_ptr);
assign empty = (wr_ptr == rd_ptr);


endmodule
