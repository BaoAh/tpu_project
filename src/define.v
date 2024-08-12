`ifndef __DEFINE_H
`define __DEFINE_H

//----------------------------------------------------------------------------//
// Matrix Parameters Definations                                              //
//----------------------------------------------------------------------------//
`include "matrix_define.v"

//----------------------------------------------------------------------------//
// Common Definations                                                         //
//----------------------------------------------------------------------------//
`define DATA_SIZE 8
`define WORD_SIZE 32
`define GBUFF_COMPRESS_SIZE 1024
`define COMPRESS_INDEX 10 
`define DICTIONARY_SIZE 15
`define GBUFF_ADDR_SIZE 256
`define GBUFF_INDX_SIZE (`GBUFF_ADDR_SIZE/`WORD_SIZE)
`define DICTIONARY_INDX_SIZE 4
//`define GBUFF_INDX_SIZE 8
`define GBUFF_SIZE (WORD_SIZE*GBUFF_ADDR_SIZE)

//----------------------------------------------------------------------------//
// Simulations Definations                                                    //
//----------------------------------------------------------------------------//
`define CYCLE 8.2
`define MAX 10000

//----------------------------------------------------------------------------//
// User Definations                                                           //
//----------------------------------------------------------------------------//

`endif