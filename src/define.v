//============================================================================//
// AIC2021 Project1 - TPU Design                                              //
// file: define.v                                                             //
// description: All Definations                                               //
// authors: kaikai (deekai9139@gmail.com)                                     //
//          suhan  (jjs93126@gmail.com)                                       //
//============================================================================//

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
`define EXTEND_WORD_SIZE 64
`define GBUFF_ADDR_SIZE 256
`define GBUFF_INDX_SIZE (`GBUFF_ADDR_SIZE/`WORD_SIZE)
//`define GBUFF_INDX_SIZE 8
`define GBUFF_SIZE (WORD_SIZE*GBUFF_ADDR_SIZE)

//----------------------------------------------------------------------------//
// Simulations Definations                                                    //
//----------------------------------------------------------------------------//
`define CYCLE 10
`define MAX 10000

//----------------------------------------------------------------------------//
// User Definations                                                           //
//----------------------------------------------------------------------------//

`endif
