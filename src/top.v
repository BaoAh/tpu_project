`ifndef __TOP_V
`define __TOP_V

`include "define.v"
`include "global_buffer.v"
`include "dictionary.v"

module top (
    clk,
    rst,
    start,
    m,
    n,
    k,
    compress_w,
    start_w,
    done
);

  input clk;
  input rst;
  input start;
  input [3:0] m, k, n;
  input [`GBUFF_COMPRESS_SIZE-1:0] compress_w;
  input [`COMPRESS_INDEX-1 : 0] start_w;
  output done;

  wire wr_en_a, wr_en_b, wr_en_out;
  wire [`GBUFF_INDX_SIZE-1:0] index_a, index_b, index_out;
  wire [`WORD_SIZE-1:0] data_in_a, data_in_b, data_in_o;
  wire [`WORD_SIZE-1:0] data_out_a, data_out_b, data_out_o;

  //dic
  wire[`DICTIONARY_INDX_SIZE-1:0] index_d_w ;
  wire[`DATA_SIZE-1:0] data_out_d_w;

  //----------------------------------------------------------------------------//
  // TPU module declaration                                                     //
  //----------------------------------------------------------------------------//
  tpu ul_tpu (
      .clk(clk),
      .rst(rst),
      .start(start),
      .m(m),
      .n(n),
      .k(k),
      .compress_w(compress_w),
      .start_w(start_w),
      .done(done),
      .wr_en_a(wr_en_a),
      .wr_en_b(wr_en_b),
      .wr_en_c(wr_en_out),
      .addr_a(index_a),
      .addr_b(index_b),
      .addr_c(index_out),
      .addr_d_w(index_d_w),
      .in_a(data_in_a),
      .in_b(data_in_b),
      .in_c(data_in_o),
      .out_a(data_out_a),
      .out_b(data_out_b),
      .out_d_w(data_out_d_w)

  );

  //dictionary
  dictionary DIC_D_W (
      .index   (index_d_w),
      .data_out(data_out_d_w)
  );

  //----------------------------------------------------------------------------//
  // Global buffers declaration                                                 //
  //----------------------------------------------------------------------------//
  global_buffer GBUFF_A (
      .clk     (clk),
      .rst     (rst),
      .wr_en   (wr_en_a),
      .index   (index_a),
      .data_in (data_in_a),
      .data_out(data_out_a)
  );

  global_buffer GBUFF_B (
      .clk     (clk),
      .rst     (rst),
      .wr_en   (wr_en_b),
      .index   (index_b),
      .data_in (data_in_b),
      .data_out(data_out_b)
  );

  global_buffer GBUFF_OUT (
      .clk     (clk),
      .rst     (rst),
      .wr_en   (wr_en_out),
      .index   (index_out),
      .data_in (data_in_o),
      .data_out(data_out_o)
  );

endmodule

`endif
