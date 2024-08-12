`include "define.v"

`ifndef __DICTIONARY_V
`define __DICTIONARY_V

module dictionary(
    input [`DICTIONARY_INDX_SIZE-1:0] index,
    output [`DATA_SIZE-1:0] data_out
);

  integer i;
  
  reg [`DATA_SIZE-1:0] dic[`DICTIONARY_SIZE-1:0];

  assign data_out = dic[index];

endmodule

`endif
