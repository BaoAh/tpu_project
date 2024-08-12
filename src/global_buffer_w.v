//============================================================================//
// AIC2021 Project1 - TPU Design                                              //
// file: global_buffer.v                                                      //
// description: global buffer read write behavior module                      //
// authors: kaikai (deekai9139@gmail.com)                                     //
//          suhan  (jjs93126@gmail.com)                                       //
//============================================================================//

`include "define.v"

`ifndef __GLOBAL_BUFFER_W_V
`define __GLOBAL_BUFFER_W_V

module global_buffer_w(
    input clk,
    input rst,
    input wr_en,  // Write enable: 1->write 0->read
    input [`GBUFF_INDX_SIZE-1:0] index,
    input [`WORD_SIZE_W-1:0] data_in,
    output reg [`WORD_SIZE_W-1:0] data_out
);

  integer i;

  //----------------------------------------------------------------------------//
  // Global buffer (Don't change the name)                                      //
  //----------------------------------------------------------------------------//
  reg [`WORD_SIZE_W-1:0] gbuff[`GBUFF_ADDR_SIZE-1:0];

  //----------------------------------------------------------------------------//
  // Global buffer read write behavior                                          //
  //----------------------------------------------------------------------------//
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      for (i = 0; i <= 256; i = i + 1) gbuff[i] <= `WORD_SIZE_W'd0;
    end else begin
      if (wr_en) begin
        gbuff[index] <= data_in;
      end else begin
        data_out <= gbuff[index];
      end
    end
  end

endmodule

`endif
