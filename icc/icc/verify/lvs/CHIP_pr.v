//
// Milkyway Hierarchical Verilog Dump:
// Generated on 05/26/2023 at 00:21:58
// Design Generated by Consolidated Verilog Reader
// File produced by Consolidated Verilog Writer
// Library Name :CHIP
// Cell Name    :CHIP
// Hierarchy delimiter:'/'
// Write Command : write_verilog -unconnected_ports -diode_ports -wire_declaration -keep_backslash_before_hiersep  
//   -no_physical_only_cells traffic_light_pr.v
//


module dp_DW01_inc_0 (SUM , A );
output [14:0] SUM ;
input  [14:0] A ;

/* wire declarations */

wire [14:2] carry ;

ADDHXL U1_1_7 (.S ( SUM[7] ) , .B ( carry[7] ) , .A ( A[7] ) , .CO ( carry[8] ) ) ;
ADDHXL U1_1_8 (.S ( SUM[8] ) , .B ( carry[8] ) , .A ( A[8] ) , .CO ( carry[9] ) ) ;
ADDHXL U1_1_9 (.S ( SUM[9] ) , .B ( carry[9] ) , .A ( A[9] ) , .CO ( carry[10] ) ) ;
ADDHXL U1_1_10 (.S ( SUM[10] ) , .B ( carry[10] ) , .A ( A[10] ) 
    , .CO ( carry[11] ) ) ;
ADDHXL U1_1_11 (.S ( SUM[11] ) , .B ( carry[11] ) , .A ( A[11] ) 
    , .CO ( carry[12] ) ) ;
ADDHXL U1_1_12 (.S ( SUM[12] ) , .B ( carry[12] ) , .A ( A[12] ) 
    , .CO ( carry[13] ) ) ;
ADDHXL U1_1_13 (.S ( SUM[13] ) , .B ( carry[13] ) , .A ( A[13] ) 
    , .CO ( carry[14] ) ) ;
CLKINVX1 U2 (.Y ( SUM[0] ) , .A ( A[0] ) ) ;
XOR2X1 U1 (.Y ( SUM[14] ) , .A ( carry[14] ) , .B ( A[14] ) ) ;
ADDHXL U1_1_1 (.S ( SUM[1] ) , .B ( A[0] ) , .A ( A[1] ) , .CO ( carry[2] ) ) ;
ADDHXL U1_1_2 (.S ( SUM[2] ) , .B ( carry[2] ) , .A ( A[2] ) , .CO ( carry[3] ) ) ;
ADDHXL U1_1_3 (.S ( SUM[3] ) , .B ( carry[3] ) , .A ( A[3] ) , .CO ( carry[4] ) ) ;
ADDHXL U1_1_4 (.S ( SUM[4] ) , .B ( carry[4] ) , .A ( A[4] ) , .CO ( carry[5] ) ) ;
ADDHXL U1_1_5 (.S ( SUM[5] ) , .B ( carry[5] ) , .A ( A[5] ) , .CO ( carry[6] ) ) ;
ADDHXL U1_1_6 (.S ( SUM[6] ) , .B ( carry[6] ) , .A ( A[6] ) , .CO ( carry[7] ) ) ;
endmodule




module dp (int_flags , clk , reset , cnt_rst , R , G , Y , state , 
    IN0 );
output [4:0] int_flags ;
input  clk ;
input  reset ;
input  cnt_rst ;
output R ;
output G ;
output Y ;
input  [4:0] state ;
input  IN0 ;

/* wire declarations */
wire N52 ;
wire N53 ;
wire N54 ;
wire N55 ;
wire N56 ;
wire N57 ;
wire N44 ;
wire N45 ;
wire N46 ;
wire N47 ;
wire N48 ;
wire N49 ;
wire N50 ;
wire N51 ;
wire [14:0] cnt ;
wire N43 ;

wire n12 ;
wire n10 ;
wire n11 ;
wire n8 ;
wire n3 ;
wire n290 ;
wire n36 ;
wire n570 ;
wire n35 ;
wire n58 ;
wire n34 ;
wire n550 ;
wire n33 ;
wire n28 ;
wire n37 ;
wire n560 ;
wire n38 ;
wire n500 ;
wire n39 ;
wire n490 ;
wire n40 ;
wire n31 ;
wire n41 ;
wire N7 ;
wire N15 ;
wire n30 ;
wire n42 ;
wire N22 ;
wire n480 ;
wire n430 ;
wire N29 ;
wire n540 ;
wire n440 ;
wire n530 ;
wire n450 ;
wire n510 ;
wire n470 ;
wire n520 ;
wire n460 ;
wire SYNOPSYS_UNCONNECTED_0 ;
wire n14 ;
wire n32 ;
wire n60 ;
wire n13 ;
wire n150 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n220 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;


dp_DW01_inc_0 add_89 (
    .SUM ( {N57 , N56 , N55 , N54 , N53 , N52 , N51 , N50 , N49 , N48 , 
	N47 , N46 , N45 , N44 , N43 } ) , 
    .A ( cnt ) ) ;

OAI31XL U28 (.A2 ( state[0] ) , .A1 ( state[1] ) , .A0 ( n12 ) , .Y ( n10 ) 
    , .B0 ( n11 ) ) ;
NAND2X1 U7 (.Y ( n8 ) , .B ( n11 ) , .A ( n10 ) ) ;
CLKINVX1 U1 (.Y ( n3 ) , .A ( n10 ) ) ;
DFFRX1 cnt_reg_11_ (.RN ( reset ) , .Q ( cnt[11] ) , .QN ( n290 ) , .D ( n36 ) 
    , .CK ( clk ) ) ;
DFFRX1 cnt_reg_12_ (.RN ( reset ) , .Q ( cnt[12] ) , .QN ( n570 ) , .D ( n35 ) 
    , .CK ( clk ) ) ;
DFFRX1 cnt_reg_13_ (.RN ( reset ) , .Q ( cnt[13] ) , .QN ( n58 ) , .D ( n34 ) 
    , .CK ( clk ) ) ;
DFFRX1 cnt_reg_14_ (.RN ( reset ) , .Q ( cnt[14] ) , .QN ( n550 ) , .D ( n33 ) 
    , .CK ( clk ) ) ;
DFFRX1 cnt_reg_10_ (.RN ( reset ) , .Q ( cnt[10] ) , .QN ( n28 ) , .D ( n37 ) 
    , .CK ( clk ) ) ;
DFFRX1 cnt_reg_9_ (.RN ( reset ) , .Q ( cnt[9] ) , .QN ( n560 ) , .D ( n38 ) 
    , .CK ( clk ) ) ;
DFFRX1 cnt_reg_8_ (.RN ( reset ) , .Q ( cnt[8] ) , .QN ( n500 ) , .D ( n39 ) 
    , .CK ( clk ) ) ;
DFFRX1 cnt_reg_7_ (.RN ( reset ) , .Q ( cnt[7] ) , .QN ( n490 ) , .D ( n40 ) 
    , .CK ( clk ) ) ;
DFFRX1 cnt_reg_6_ (.RN ( reset ) , .Q ( cnt[6] ) , .QN ( n31 ) , .D ( n41 ) 
    , .CK ( clk ) ) ;
DFFQX1 int_flags_reg_0_ (.Q ( int_flags[0] ) , .D ( N7 ) , .CK ( clk ) ) ;
DFFQX1 int_flags_reg_3_ (.Q ( int_flags[3] ) , .D ( N15 ) , .CK ( clk ) ) ;
DFFRX1 cnt_reg_5_ (.RN ( reset ) , .Q ( cnt[5] ) , .QN ( n30 ) , .D ( n42 ) 
    , .CK ( clk ) ) ;
DFFQX1 int_flags_reg_1_ (.Q ( int_flags[1] ) , .D ( N22 ) , .CK ( clk ) ) ;
DFFRX1 cnt_reg_4_ (.RN ( reset ) , .Q ( cnt[4] ) , .QN ( n480 ) , .D ( n430 ) 
    , .CK ( clk ) ) ;
DFFQX1 int_flags_reg_2_ (.Q ( int_flags[2] ) , .D ( N29 ) , .CK ( clk ) ) ;
DFFRX1 cnt_reg_3_ (.RN ( reset ) , .Q ( cnt[3] ) , .QN ( n540 ) , .D ( n440 ) 
    , .CK ( clk ) ) ;
DFFRX1 cnt_reg_2_ (.RN ( reset ) , .Q ( cnt[2] ) , .QN ( n530 ) , .D ( n450 ) 
    , .CK ( clk ) ) ;
DFFRX1 cnt_reg_0_ (.RN ( reset ) , .Q ( cnt[0] ) , .QN ( n510 ) , .D ( n470 ) 
    , .CK ( clk ) ) ;
DFFRX1 cnt_reg_1_ (.RN ( reset ) , .Q ( cnt[1] ) , .QN ( n520 ) , .D ( n460 ) 
    , .CK ( clk ) ) ;
DFFX1 G_r_reg (.Q ( SYNOPSYS_UNCONNECTED_0 ) , .QN ( n14 ) , .D ( n32 ) 
    , .CK ( clk ) ) ;
BUFX12 U5 (.Y ( G ) , .A ( n60 ) ) ;
BUFX12 U11 (.Y ( R ) , .A ( state[3] ) ) ;
BUFX12 U12 (.Y ( Y ) , .A ( state[2] ) ) ;
OAI2BB2XL U13 (.A1N ( n3 ) , .A0N ( N43 ) , .Y ( n470 ) , .B1 ( n510 ) 
    , .B0 ( n8 ) ) ;
OAI2BB2XL U14 (.A1N ( n3 ) , .A0N ( N44 ) , .Y ( n460 ) , .B1 ( n520 ) 
    , .B0 ( n8 ) ) ;
OAI2BB2XL U15 (.A1N ( n3 ) , .A0N ( N45 ) , .Y ( n450 ) , .B1 ( n530 ) 
    , .B0 ( n8 ) ) ;
OAI2BB2XL U16 (.A1N ( n3 ) , .A0N ( N46 ) , .Y ( n440 ) , .B1 ( n540 ) 
    , .B0 ( n8 ) ) ;
OAI2BB2XL U17 (.A1N ( n3 ) , .A0N ( N47 ) , .Y ( n430 ) , .B1 ( n480 ) 
    , .B0 ( n8 ) ) ;
OAI2BB2XL U18 (.A1N ( n3 ) , .A0N ( N48 ) , .Y ( n42 ) , .B1 ( n30 ) , .B0 ( n8 ) ) ;
OAI2BB2XL U19 (.A1N ( n3 ) , .A0N ( N49 ) , .Y ( n41 ) , .B1 ( n31 ) , .B0 ( n8 ) ) ;
OAI2BB2XL U20 (.A1N ( n3 ) , .A0N ( N50 ) , .Y ( n40 ) , .B1 ( n490 ) 
    , .B0 ( n8 ) ) ;
OAI2BB2XL U21 (.A1N ( n3 ) , .A0N ( N51 ) , .Y ( n39 ) , .B1 ( n500 ) 
    , .B0 ( n8 ) ) ;
OAI2BB2XL U22 (.A1N ( n3 ) , .A0N ( N52 ) , .Y ( n38 ) , .B1 ( n560 ) 
    , .B0 ( n8 ) ) ;
OAI2BB2XL U23 (.A1N ( n3 ) , .A0N ( N53 ) , .Y ( n37 ) , .B1 ( n28 ) , .B0 ( n8 ) ) ;
OAI2BB2XL U24 (.A1N ( n3 ) , .A0N ( N54 ) , .Y ( n36 ) , .B1 ( n290 ) 
    , .B0 ( n8 ) ) ;
OAI2BB2XL U25 (.A1N ( n3 ) , .A0N ( N55 ) , .Y ( n35 ) , .B1 ( n570 ) 
    , .B0 ( n8 ) ) ;
OAI2BB2XL U26 (.A1N ( n3 ) , .A0N ( N56 ) , .Y ( n34 ) , .B1 ( n58 ) , .B0 ( n8 ) ) ;
OAI2BB2XL U27 (.A1N ( n3 ) , .A0N ( N57 ) , .Y ( n33 ) , .B1 ( n550 ) 
    , .B0 ( n8 ) ) ;
CLKINVX1 U29 (.Y ( n11 ) , .A ( cnt_rst ) ) ;
OR3X1 U30 (.Y ( n12 ) , .A ( state[4] ) , .B ( state[3] ) , .C ( state[2] ) ) ;
MXI2X1 U31 (.Y ( n32 ) , .A ( n13 ) , .B ( n14 ) , .S0 ( n150 ) ) ;
NOR2X1 U32 (.Y ( n150 ) , .A ( state[1] ) , .B ( IN0 ) ) ;
NAND4X1 U33 (.Y ( n13 ) , .C ( n28 ) , .A ( n16 ) , .B ( reset ) , .D ( n17 ) ) ;
NOR3X1 U34 (.Y ( n17 ) , .A ( cnt[11] ) , .B ( n18 ) , .C ( cnt[9] ) ) ;
MXI2X1 U35 (.Y ( n16 ) , .A ( n19 ) , .B ( n20 ) , .S0 ( n490 ) ) ;
NAND2BX1 U36 (.Y ( n20 ) , .B ( n21 ) , .AN ( n510 ) ) ;
NOR2BX1 U37 (.Y ( n19 ) , .AN ( n21 ) , .B ( n510 ) ) ;
AND3X1 U38 (.Y ( N7 ) , .A ( state[0] ) , .C ( n220 ) , .B ( reset ) ) ;
AND3X1 U39 (.Y ( N29 ) , .A ( state[2] ) , .C ( n23 ) , .B ( reset ) ) ;
AND3X1 U40 (.Y ( N22 ) , .A ( state[1] ) , .C ( n23 ) , .B ( reset ) ) ;
NAND4BX1 U41 (.Y ( n23 ) , .C ( n24 ) , .AN ( n18 ) , .B ( n28 ) , .D ( n25 ) ) ;
NOR2X1 U42 (.Y ( n25 ) , .A ( cnt[9] ) , .B ( cnt[11] ) ) ;
AND3X1 U43 (.Y ( N15 ) , .A ( state[3] ) , .C ( n220 ) , .B ( reset ) ) ;
OAI211X1 U44 (.A1 ( n24 ) , .A0 ( n560 ) , .C0 ( n26 ) , .Y ( n220 ) 
    , .B0 ( n28 ) ) ;
NOR2X1 U45 (.Y ( n26 ) , .A ( n18 ) , .B ( cnt[11] ) ) ;
NAND3X1 U46 (.Y ( n18 ) , .A ( n570 ) , .B ( n58 ) , .C ( n550 ) ) ;
NAND3BX1 U47 (.Y ( n24 ) , .AN ( n500 ) , .B ( n21 ) , .C ( cnt[7] ) ) ;
NOR4BX1 U48 (.Y ( n21 ) , .AN ( n27 ) , .B ( n530 ) , .C ( n520 ) , .D ( n540 ) ) ;
NOR3X1 U49 (.Y ( n27 ) , .A ( n480 ) , .B ( n30 ) , .C ( n31 ) ) ;
NAND2BX1 U50 (.Y ( n60 ) , .B ( n14 ) , .AN ( state[0] ) ) ;
endmodule




module ctrl (fb_flags_3_ , fb_flags_2_ , fb_flags_1_ , fb_flags_0_ , 
    dp_cnt_rst , curr_state , clk , reset , pass );
input  fb_flags_3_ ;
input  fb_flags_2_ ;
input  fb_flags_1_ ;
input  fb_flags_0_ ;
output dp_cnt_rst ;
output [4:0] curr_state ;
input  clk ;
input  reset ;
input  pass ;

/* wire declarations */

wire n5 ;
wire [3:0] next_state ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire n4 ;
wire n10 ;
wire n18 ;
wire n9 ;
wire n3 ;
wire n7 ;
wire n11 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n6 ;
wire n16 ;
wire n12 ;
wire n17 ;

DFFRX1 curr_state_reg_1_ (.RN ( reset ) , .Q ( curr_state[1] ) , .QN ( n5 ) 
    , .D ( next_state[1] ) , .CK ( clk ) ) ;
DFFSX1 curr_state_reg_0_ (.Q ( curr_state[0] ) 
    , .QN ( SYNOPSYS_UNCONNECTED_1 ) , .SN ( reset ) , .D ( next_state[0] ) 
    , .CK ( clk ) ) ;
DFFRX1 curr_state_reg_2_ (.RN ( reset ) , .Q ( curr_state[2] ) , .QN ( n4 ) 
    , .D ( next_state[2] ) , .CK ( clk ) ) ;
NAND2BX1 U13 (.Y ( n10 ) , .B ( n18 ) , .AN ( curr_state[0] ) ) ;
NOR3BXL U14 (.Y ( next_state[3] ) , .AN ( n9 ) , .B ( n10 ) 
    , .C ( curr_state[1] ) ) ;
OAI32X1 U15 (.A2 ( n3 ) , .A1 ( fb_flags_3_ ) , .A0 ( curr_state[2] ) 
    , .Y ( n9 ) , .B1 ( n4 ) , .B0 ( n7 ) ) ;
NOR2X1 U16 (.Y ( next_state[2] ) , .A ( n11 ) , .B ( n10 ) ) ;
AOI32X1 U17 (.A1 ( n7 ) , .A0 ( n5 ) , .A2 ( curr_state[2] ) , .Y ( n11 ) 
    , .B1 ( curr_state[1] ) , .B0 ( fb_flags_1_ ) ) ;
NAND3X1 U18 (.Y ( next_state[0] ) , .A ( n13 ) , .B ( n18 ) , .C ( n14 ) ) ;
AOI22X1 U19 (.A0 ( n3 ) , .A1 ( n15 ) , .Y ( n14 ) , .B0 ( curr_state[0] ) 
    , .B1 ( n6 ) ) ;
CLKINVX1 U20 (.Y ( n6 ) , .A ( fb_flags_0_ ) ) ;
CLKINVX1 U21 (.Y ( n7 ) , .A ( fb_flags_2_ ) ) ;
NAND3X1 U22 (.Y ( n13 ) , .A ( n15 ) , .B ( curr_state[3] ) , .C ( fb_flags_3_ ) ) ;
DFFRX1 curr_state_reg_3_ (.RN ( reset ) , .Q ( curr_state[3] ) , .QN ( n3 ) 
    , .D ( next_state[3] ) , .CK ( clk ) ) ;
NOR3XL U6 (.Y ( n15 ) , .A ( curr_state[1] ) , .B ( curr_state[2] ) 
    , .C ( curr_state[0] ) ) ;
OAI211X1 U7 (.A1 ( n16 ) , .A0 ( curr_state[0] ) , .C0 ( n13 ) 
    , .Y ( dp_cnt_rst ) , .B0 ( n12 ) ) ;
AOI211X1 U8 (.A1 ( curr_state[1] ) , .A0 ( fb_flags_1_ ) , .C0 ( n17 ) 
    , .Y ( n16 ) , .B0 ( pass ) ) ;
NOR3X1 U9 (.Y ( n17 ) , .A ( n7 ) , .B ( curr_state[1] ) , .C ( n4 ) ) ;
NAND3X1 U10 (.Y ( n12 ) , .A ( curr_state[0] ) , .B ( n18 ) , .C ( fb_flags_0_ ) ) ;
CLKINVX1 U11 (.Y ( n18 ) , .A ( pass ) ) ;
OAI31XL U12 (.A2 ( n10 ) , .A1 ( fb_flags_1_ ) , .A0 ( n5 ) 
    , .Y ( next_state[1] ) , .B0 ( n12 ) ) ;
endmodule




module traffic_light (Y , G , R , pass , rst , clk );
output Y ;
output G ;
output R ;
input  pass ;
input  rst ;
input  clk ;

/* wire declarations */
wire [3:0] int_flags ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire n1 ;
wire dp_cnt_rst ;
wire [4:0] state ;
wire [3:0] fb_flags ;
wire SYNOPSYS_UNCONNECTED_3 ;



dp ul_dp (
    .int_flags ( {SYNOPSYS_UNCONNECTED_2, int_flags[3] , int_flags[2] , 
	int_flags[1] , int_flags[0] } ) , 
    .clk ( clk ) , .reset ( n1 ) , .cnt_rst ( dp_cnt_rst ) , .R ( R ) , .G ( G ) , 
    .Y ( Y ) , .state ( {1'b0, state[3] , state[2] , state[1] , state[0] } ) , 
    .IN0 ( rst ) ) ;


ctrl ul_ctrl (.fb_flags_3_ ( fb_flags[3] ) , .fb_flags_2_ ( fb_flags[2] ) , 
    .fb_flags_1_ ( fb_flags[1] ) , .fb_flags_0_ ( fb_flags[0] ) , 
    .dp_cnt_rst ( dp_cnt_rst ) , 
    .curr_state ( {SYNOPSYS_UNCONNECTED_3, state[3] , state[2] , state[1] , 
	state[0] } ) , 
    .clk ( clk ) , .reset ( n1 ) , .pass ( pass ) ) ;

INVX3 U1 (.Y ( n1 ) , .A ( rst ) ) ;
AND2X2 U6 (.Y ( fb_flags[2] ) , .B ( int_flags[2] ) , .A ( state[2] ) ) ;
AND2X2 U7 (.Y ( fb_flags[1] ) , .B ( int_flags[1] ) , .A ( state[1] ) ) ;
AND2X2 U8 (.Y ( fb_flags[0] ) , .B ( int_flags[0] ) , .A ( state[0] ) ) ;
AND2X2 U9 (.Y ( fb_flags[3] ) , .B ( int_flags[3] ) , .A ( state[3] ) ) ;
endmodule

