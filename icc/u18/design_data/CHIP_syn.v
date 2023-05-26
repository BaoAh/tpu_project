/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Fri May 26 02:02:06 2023
/////////////////////////////////////////////////////////////


module sync_fifo_7 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n9, n12, n13,
         n1500, n25, n36, n37, n38, n39, n40, n41, n42, n44, n45, n46, n47,
         n480, n500, n510, n520, n530, n540, n550, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n1, n2,
         n3, n4, n5, n6, n7, n8, n10, n11, n14, n1600, n1700, n18, n19, n20,
         n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n43, n490, n67, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n1501, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n1601, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n1701, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  ND2 U114 ( .I1(n2), .I2(N15), .O(n46) );
  ND2 U121 ( .I1(n530), .I2(n540), .O(n480) );
  OR3 U123 ( .I1(n510), .I2(N16), .I3(n187), .O(n530) );
  QDFFRBN buffer_reg_1__6_ ( .D(n76), .CK(clk), .RB(n169), .Q(buffer[54]) );
  QDFFRBN buffer_reg_1__5_ ( .D(n77), .CK(clk), .RB(n169), .Q(buffer[53]) );
  QDFFRBN buffer_reg_1__4_ ( .D(n78), .CK(clk), .RB(n169), .Q(buffer[52]) );
  QDFFRBN buffer_reg_1__3_ ( .D(n79), .CK(clk), .RB(n169), .Q(buffer[51]) );
  QDFFRBN buffer_reg_1__2_ ( .D(n80), .CK(clk), .RB(n169), .Q(buffer[50]) );
  QDFFRBN buffer_reg_1__1_ ( .D(n81), .CK(clk), .RB(n169), .Q(buffer[49]) );
  QDFFRBN buffer_reg_1__0_ ( .D(n83), .CK(clk), .RB(n1701), .Q(buffer[48]) );
  QDFFRBN buffer_reg_1__7_ ( .D(n82), .CK(clk), .RB(n1701), .Q(buffer[55]) );
  QDFFRBN data_out_reg_7_ ( .D(n65), .CK(clk), .RB(n166), .Q(data_out[7]) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n58), .CK(clk), .RB(n167), .Q(wr_ptr[0]) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n134), .CK(clk), .RB(n166), .Q(N15) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n133), .CK(clk), .RB(n166), .Q(N16) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n56), .CK(clk), .RB(n167), .Q(wr_ptr[2]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n132), .CK(clk), .RB(n166), .Q(N17) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n57), .CK(clk), .RB(n167), .Q(wr_ptr[1]) );
  QDFFRBN data_out_reg_6_ ( .D(n64), .CK(clk), .RB(n166), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n63), .CK(clk), .RB(n166), .Q(data_out[5]) );
  QDFFRBN data_out_reg_3_ ( .D(n61), .CK(clk), .RB(n166), .Q(data_out[3]) );
  QDFFRBN data_out_reg_4_ ( .D(n62), .CK(clk), .RB(n166), .Q(data_out[4]) );
  QDFFRBN data_out_reg_0_ ( .D(n66), .CK(clk), .RB(n166), .Q(data_out[0]) );
  QDFFRBN data_out_reg_1_ ( .D(n59), .CK(clk), .RB(n166), .Q(data_out[1]) );
  QDFFRBN data_out_reg_2_ ( .D(n60), .CK(clk), .RB(n166), .Q(data_out[2]) );
  QDFFRBS buffer_reg_2__7_ ( .D(n90), .CK(clk), .RB(n167), .Q(buffer[47]) );
  QDFFRBS buffer_reg_6__7_ ( .D(n122), .CK(clk), .RB(n172), .Q(buffer[15]) );
  QDFFRBS buffer_reg_3__6_ ( .D(n92), .CK(clk), .RB(n168), .Q(buffer[38]) );
  QDFFRBS buffer_reg_3__5_ ( .D(n93), .CK(clk), .RB(n168), .Q(buffer[37]) );
  QDFFRBS buffer_reg_3__4_ ( .D(n94), .CK(clk), .RB(n168), .Q(buffer[36]) );
  QDFFRBS buffer_reg_3__3_ ( .D(n95), .CK(clk), .RB(n168), .Q(buffer[35]) );
  QDFFRBS buffer_reg_3__2_ ( .D(n96), .CK(clk), .RB(n168), .Q(buffer[34]) );
  QDFFRBS buffer_reg_3__1_ ( .D(n97), .CK(clk), .RB(n168), .Q(buffer[33]) );
  QDFFRBS buffer_reg_3__0_ ( .D(n99), .CK(clk), .RB(n168), .Q(buffer[32]) );
  QDFFRBS buffer_reg_7__6_ ( .D(n124), .CK(clk), .RB(n172), .Q(buffer[6]) );
  QDFFRBS buffer_reg_7__5_ ( .D(n125), .CK(clk), .RB(n172), .Q(buffer[5]) );
  QDFFRBS buffer_reg_7__4_ ( .D(n126), .CK(clk), .RB(n172), .Q(buffer[4]) );
  QDFFRBS buffer_reg_7__3_ ( .D(n127), .CK(clk), .RB(n172), .Q(buffer[3]) );
  QDFFRBS buffer_reg_7__2_ ( .D(n128), .CK(clk), .RB(n172), .Q(buffer[2]) );
  QDFFRBS buffer_reg_7__1_ ( .D(n129), .CK(clk), .RB(n172), .Q(buffer[1]) );
  QDFFRBS buffer_reg_7__0_ ( .D(n131), .CK(clk), .RB(n175), .Q(buffer[0]) );
  QDFFRBS buffer_reg_0__7_ ( .D(n74), .CK(clk), .RB(n169), .Q(buffer[63]) );
  QDFFRBS buffer_reg_4__7_ ( .D(n106), .CK(clk), .RB(n1701), .Q(buffer[31]) );
  QDFFRBS buffer_reg_5__6_ ( .D(n108), .CK(clk), .RB(n1701), .Q(buffer[22]) );
  QDFFRBS buffer_reg_5__5_ ( .D(n109), .CK(clk), .RB(n171), .Q(buffer[21]) );
  QDFFRBS buffer_reg_5__4_ ( .D(n110), .CK(clk), .RB(n171), .Q(buffer[20]) );
  QDFFRBS buffer_reg_5__3_ ( .D(n111), .CK(clk), .RB(n171), .Q(buffer[19]) );
  QDFFRBS buffer_reg_5__2_ ( .D(n112), .CK(clk), .RB(n171), .Q(buffer[18]) );
  QDFFRBS buffer_reg_5__1_ ( .D(n113), .CK(clk), .RB(n171), .Q(buffer[17]) );
  QDFFRBS buffer_reg_5__0_ ( .D(n115), .CK(clk), .RB(n171), .Q(buffer[16]) );
  QDFFRBS buffer_reg_7__7_ ( .D(n130), .CK(clk), .RB(n172), .Q(buffer[7]) );
  QDFFRBS buffer_reg_3__7_ ( .D(n98), .CK(clk), .RB(n168), .Q(buffer[39]) );
  QDFFRBS buffer_reg_6__6_ ( .D(n116), .CK(clk), .RB(n171), .Q(buffer[14]) );
  QDFFRBS buffer_reg_6__5_ ( .D(n117), .CK(clk), .RB(n171), .Q(buffer[13]) );
  QDFFRBS buffer_reg_6__4_ ( .D(n118), .CK(clk), .RB(n171), .Q(buffer[12]) );
  QDFFRBS buffer_reg_6__3_ ( .D(n119), .CK(clk), .RB(n171), .Q(buffer[11]) );
  QDFFRBS buffer_reg_6__2_ ( .D(n120), .CK(clk), .RB(n172), .Q(buffer[10]) );
  QDFFRBS buffer_reg_6__1_ ( .D(n121), .CK(clk), .RB(n172), .Q(buffer[9]) );
  QDFFRBS buffer_reg_6__0_ ( .D(n123), .CK(clk), .RB(n172), .Q(buffer[8]) );
  QDFFRBS buffer_reg_2__6_ ( .D(n84), .CK(clk), .RB(n167), .Q(buffer[46]) );
  QDFFRBS buffer_reg_2__5_ ( .D(n85), .CK(clk), .RB(n167), .Q(buffer[45]) );
  QDFFRBS buffer_reg_2__4_ ( .D(n86), .CK(clk), .RB(n167), .Q(buffer[44]) );
  QDFFRBS buffer_reg_2__3_ ( .D(n87), .CK(clk), .RB(n167), .Q(buffer[43]) );
  QDFFRBS buffer_reg_2__2_ ( .D(n88), .CK(clk), .RB(n167), .Q(buffer[42]) );
  QDFFRBS buffer_reg_2__1_ ( .D(n89), .CK(clk), .RB(n167), .Q(buffer[41]) );
  QDFFRBS buffer_reg_2__0_ ( .D(n91), .CK(clk), .RB(n167), .Q(buffer[40]) );
  QDFFRBS buffer_reg_5__7_ ( .D(n114), .CK(clk), .RB(n171), .Q(buffer[23]) );
  QDFFRBS buffer_reg_4__6_ ( .D(n100), .CK(clk), .RB(n1701), .Q(buffer[30]) );
  QDFFRBS buffer_reg_4__5_ ( .D(n101), .CK(clk), .RB(n1701), .Q(buffer[29]) );
  QDFFRBS buffer_reg_4__4_ ( .D(n102), .CK(clk), .RB(n1701), .Q(buffer[28]) );
  QDFFRBS buffer_reg_4__3_ ( .D(n103), .CK(clk), .RB(n1701), .Q(buffer[27]) );
  QDFFRBS buffer_reg_4__2_ ( .D(n104), .CK(clk), .RB(n1701), .Q(buffer[26]) );
  QDFFRBS buffer_reg_4__1_ ( .D(n105), .CK(clk), .RB(n1701), .Q(buffer[25]) );
  QDFFRBS buffer_reg_4__0_ ( .D(n107), .CK(clk), .RB(n1701), .Q(buffer[24]) );
  QDFFRBS buffer_reg_0__6_ ( .D(n68), .CK(clk), .RB(n168), .Q(buffer[62]) );
  QDFFRBS buffer_reg_0__5_ ( .D(n69), .CK(clk), .RB(n168), .Q(buffer[61]) );
  QDFFRBS buffer_reg_0__4_ ( .D(n70), .CK(clk), .RB(n168), .Q(buffer[60]) );
  QDFFRBS buffer_reg_0__3_ ( .D(n71), .CK(clk), .RB(n169), .Q(buffer[59]) );
  QDFFRBS buffer_reg_0__2_ ( .D(n72), .CK(clk), .RB(n169), .Q(buffer[58]) );
  QDFFRBS buffer_reg_0__1_ ( .D(n73), .CK(clk), .RB(n169), .Q(buffer[57]) );
  QDFFRBS buffer_reg_0__0_ ( .D(n75), .CK(clk), .RB(n169), .Q(buffer[56]) );
  ND2T U3 ( .I1(n9), .I2(n188), .O(n5) );
  BUF2 U4 ( .I(n40), .O(n158) );
  BUF2 U5 ( .I(n37), .O(n161) );
  BUF2 U6 ( .I(n38), .O(n1601) );
  ND2P U7 ( .I1(n9), .I2(wr_ptr[2]), .O(n41) );
  AN2 U8 ( .I1(n12), .I2(wr_ptr[1]), .O(n9) );
  NR2P U9 ( .I1(n156), .I2(n157), .O(n1) );
  AN2 U10 ( .I1(r_en), .I2(n47), .O(n2) );
  NR2P U11 ( .I1(n157), .I2(N17), .O(n3) );
  NR2P U12 ( .I1(n156), .I2(N16), .O(n4) );
  BUF1 U13 ( .I(n25), .O(n163) );
  ND2S U14 ( .I1(n13), .I2(n186), .O(n1500) );
  BUF1 U15 ( .I(n36), .O(n162) );
  BUF1 U16 ( .I(n39), .O(n159) );
  ND3S U17 ( .I1(wr_ptr[2]), .I2(n187), .I3(n12), .O(n39) );
  ND3S U18 ( .I1(wr_ptr[1]), .I2(n188), .I3(n176), .O(n37) );
  BUF1CK U19 ( .I(n173), .O(n172) );
  BUF1CK U20 ( .I(n173), .O(n171) );
  BUF1CK U21 ( .I(n173), .O(n1701) );
  BUF1CK U22 ( .I(n174), .O(n169) );
  BUF1CK U23 ( .I(n174), .O(n168) );
  BUF1CK U24 ( .I(n175), .O(n167) );
  BUF1CK U25 ( .I(n175), .O(n166) );
  INV1S U26 ( .I(n164), .O(n173) );
  INV1S U27 ( .I(n164), .O(n174) );
  INV1S U28 ( .I(n1500), .O(n176) );
  BUF1CK U29 ( .I(rst), .O(n164) );
  INV1S U30 ( .I(n165), .O(n175) );
  BUF1CK U31 ( .I(rst), .O(n165) );
  AN2 U32 ( .I1(w_en), .I2(n42), .O(n13) );
  ND3 U33 ( .I1(n187), .I2(n188), .I3(n176), .O(n25) );
  OAI12HS U34 ( .B1(n9), .B2(n188), .A1(n5), .O(n56) );
  ND3 U35 ( .I1(n187), .I2(n188), .I3(n12), .O(n36) );
  OAI12HS U36 ( .B1(n13), .B2(n186), .A1(n1500), .O(n58) );
  INV1S U37 ( .I(n42), .O(full) );
  INV1S U38 ( .I(n47), .O(empty) );
  MOAI1S U39 ( .A1(n196), .A2(n41), .B1(buffer[0]), .B2(n41), .O(n131) );
  MOAI1S U40 ( .A1(n189), .A2(n41), .B1(buffer[7]), .B2(n41), .O(n130) );
  MOAI1S U41 ( .A1(n195), .A2(n41), .B1(buffer[1]), .B2(n41), .O(n129) );
  MOAI1S U42 ( .A1(n194), .A2(n41), .B1(buffer[2]), .B2(n41), .O(n128) );
  MOAI1S U43 ( .A1(n193), .A2(n41), .B1(buffer[3]), .B2(n41), .O(n127) );
  MOAI1S U44 ( .A1(n192), .A2(n41), .B1(buffer[4]), .B2(n41), .O(n126) );
  MOAI1S U45 ( .A1(n191), .A2(n41), .B1(buffer[5]), .B2(n41), .O(n125) );
  MOAI1S U46 ( .A1(n190), .A2(n41), .B1(buffer[6]), .B2(n41), .O(n124) );
  AN2 U47 ( .I1(n13), .I2(wr_ptr[0]), .O(n12) );
  MOAI1S U48 ( .A1(n196), .A2(n5), .B1(buffer[32]), .B2(n5), .O(n99) );
  MOAI1S U49 ( .A1(n189), .A2(n5), .B1(buffer[39]), .B2(n5), .O(n98) );
  MOAI1S U50 ( .A1(n195), .A2(n5), .B1(buffer[33]), .B2(n5), .O(n97) );
  MOAI1S U51 ( .A1(n194), .A2(n5), .B1(buffer[34]), .B2(n5), .O(n96) );
  MOAI1S U52 ( .A1(n193), .A2(n5), .B1(buffer[35]), .B2(n5), .O(n95) );
  MOAI1S U53 ( .A1(n192), .A2(n5), .B1(buffer[36]), .B2(n5), .O(n94) );
  MOAI1S U54 ( .A1(n191), .A2(n5), .B1(buffer[37]), .B2(n5), .O(n93) );
  MOAI1S U55 ( .A1(n190), .A2(n5), .B1(buffer[38]), .B2(n5), .O(n92) );
  MOAI1S U56 ( .A1(n196), .A2(n1601), .B1(buffer[24]), .B2(n1601), .O(n107) );
  MOAI1S U57 ( .A1(n189), .A2(n1601), .B1(buffer[31]), .B2(n1601), .O(n106) );
  MOAI1S U58 ( .A1(n195), .A2(n1601), .B1(buffer[25]), .B2(n1601), .O(n105) );
  MOAI1S U59 ( .A1(n194), .A2(n1601), .B1(buffer[26]), .B2(n1601), .O(n104) );
  MOAI1S U60 ( .A1(n193), .A2(n1601), .B1(buffer[27]), .B2(n1601), .O(n103) );
  MOAI1S U61 ( .A1(n192), .A2(n1601), .B1(buffer[28]), .B2(n1601), .O(n102) );
  MOAI1S U62 ( .A1(n191), .A2(n1601), .B1(buffer[29]), .B2(n1601), .O(n101) );
  MOAI1S U63 ( .A1(n190), .A2(n1601), .B1(buffer[30]), .B2(n1601), .O(n100) );
  ND3S U64 ( .I1(wr_ptr[2]), .I2(n187), .I3(n176), .O(n38) );
  MOAI1S U65 ( .A1(n196), .A2(n158), .B1(buffer[8]), .B2(n158), .O(n123) );
  MOAI1S U66 ( .A1(n189), .A2(n158), .B1(buffer[15]), .B2(n158), .O(n122) );
  MOAI1S U67 ( .A1(n195), .A2(n158), .B1(buffer[9]), .B2(n158), .O(n121) );
  MOAI1S U68 ( .A1(n194), .A2(n158), .B1(buffer[10]), .B2(n158), .O(n120) );
  MOAI1S U69 ( .A1(n193), .A2(n158), .B1(buffer[11]), .B2(n158), .O(n119) );
  MOAI1S U70 ( .A1(n192), .A2(n158), .B1(buffer[12]), .B2(n158), .O(n118) );
  MOAI1S U71 ( .A1(n191), .A2(n158), .B1(buffer[13]), .B2(n158), .O(n117) );
  MOAI1S U72 ( .A1(n190), .A2(n158), .B1(buffer[14]), .B2(n158), .O(n116) );
  MOAI1S U73 ( .A1(n196), .A2(n161), .B1(buffer[40]), .B2(n161), .O(n91) );
  MOAI1S U74 ( .A1(n189), .A2(n161), .B1(buffer[47]), .B2(n161), .O(n90) );
  MOAI1S U75 ( .A1(n195), .A2(n161), .B1(buffer[41]), .B2(n161), .O(n89) );
  MOAI1S U76 ( .A1(n194), .A2(n161), .B1(buffer[42]), .B2(n161), .O(n88) );
  MOAI1S U77 ( .A1(n193), .A2(n161), .B1(buffer[43]), .B2(n161), .O(n87) );
  MOAI1S U78 ( .A1(n192), .A2(n161), .B1(buffer[44]), .B2(n161), .O(n86) );
  MOAI1S U79 ( .A1(n191), .A2(n161), .B1(buffer[45]), .B2(n161), .O(n85) );
  MOAI1S U80 ( .A1(n190), .A2(n161), .B1(buffer[46]), .B2(n161), .O(n84) );
  ND3S U81 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n176), .O(n40) );
  MOAI1S U82 ( .A1(n163), .A2(n196), .B1(buffer[56]), .B2(n163), .O(n75) );
  MOAI1S U83 ( .A1(n163), .A2(n189), .B1(buffer[63]), .B2(n163), .O(n74) );
  MOAI1S U84 ( .A1(n163), .A2(n195), .B1(buffer[57]), .B2(n163), .O(n73) );
  MOAI1S U85 ( .A1(n163), .A2(n194), .B1(buffer[58]), .B2(n163), .O(n72) );
  MOAI1S U86 ( .A1(n163), .A2(n193), .B1(buffer[59]), .B2(n163), .O(n71) );
  MOAI1S U87 ( .A1(n163), .A2(n192), .B1(buffer[60]), .B2(n163), .O(n70) );
  MOAI1S U88 ( .A1(n163), .A2(n191), .B1(buffer[61]), .B2(n163), .O(n69) );
  MOAI1S U89 ( .A1(n163), .A2(n190), .B1(buffer[62]), .B2(n163), .O(n68) );
  MOAI1S U90 ( .A1(n196), .A2(n162), .B1(buffer[48]), .B2(n162), .O(n83) );
  MOAI1S U91 ( .A1(n189), .A2(n162), .B1(buffer[55]), .B2(n162), .O(n82) );
  MOAI1S U92 ( .A1(n195), .A2(n162), .B1(buffer[49]), .B2(n162), .O(n81) );
  MOAI1S U93 ( .A1(n194), .A2(n162), .B1(buffer[50]), .B2(n162), .O(n80) );
  MOAI1S U94 ( .A1(n193), .A2(n162), .B1(buffer[51]), .B2(n162), .O(n79) );
  MOAI1S U95 ( .A1(n192), .A2(n162), .B1(buffer[52]), .B2(n162), .O(n78) );
  MOAI1S U96 ( .A1(n191), .A2(n162), .B1(buffer[53]), .B2(n162), .O(n77) );
  MOAI1S U97 ( .A1(n190), .A2(n162), .B1(buffer[54]), .B2(n162), .O(n76) );
  MOAI1S U98 ( .A1(n196), .A2(n159), .B1(buffer[16]), .B2(n159), .O(n115) );
  MOAI1S U99 ( .A1(n189), .A2(n159), .B1(buffer[23]), .B2(n159), .O(n114) );
  MOAI1S U100 ( .A1(n195), .A2(n159), .B1(buffer[17]), .B2(n159), .O(n113) );
  MOAI1S U101 ( .A1(n194), .A2(n159), .B1(buffer[18]), .B2(n159), .O(n112) );
  MOAI1S U102 ( .A1(n193), .A2(n159), .B1(buffer[19]), .B2(n159), .O(n111) );
  MOAI1S U103 ( .A1(n192), .A2(n159), .B1(buffer[20]), .B2(n159), .O(n110) );
  MOAI1S U104 ( .A1(n191), .A2(n159), .B1(buffer[21]), .B2(n159), .O(n109) );
  MOAI1S U105 ( .A1(n190), .A2(n159), .B1(buffer[22]), .B2(n159), .O(n108) );
  XOR2HS U106 ( .I1(wr_ptr[1]), .I2(n12), .O(n57) );
  INV1S U107 ( .I(data_in[0]), .O(n196) );
  INV1S U108 ( .I(data_in[7]), .O(n189) );
  INV1S U109 ( .I(data_in[1]), .O(n195) );
  INV1S U110 ( .I(data_in[2]), .O(n194) );
  INV1S U111 ( .I(data_in[3]), .O(n193) );
  INV1S U112 ( .I(data_in[4]), .O(n192) );
  INV1S U113 ( .I(data_in[5]), .O(n191) );
  INV1S U115 ( .I(data_in[6]), .O(n190) );
  INV1S U116 ( .I(wr_ptr[1]), .O(n187) );
  XOR2HS U117 ( .I1(N16), .I2(n187), .O(n520) );
  AOI13HS U118 ( .B1(n480), .B2(n177), .B3(wr_ptr[0]), .A1(n500), .O(n42) );
  AN4B1S U119 ( .I1(n510), .I2(n186), .I3(n520), .B1(n177), .O(n500) );
  ND3 U120 ( .I1(N16), .I2(n187), .I3(n510), .O(n540) );
  XNR2HS U122 ( .I1(N17), .I2(wr_ptr[2]), .O(n510) );
  MOAI1S U124 ( .A1(N16), .A2(n44), .B1(n46), .B2(N16), .O(n133) );
  ND3 U125 ( .I1(n510), .I2(n520), .I3(n550), .O(n47) );
  XOR2HS U126 ( .I1(n177), .I2(wr_ptr[0]), .O(n550) );
  AO12 U127 ( .B1(N17), .B2(N16), .A1(n46), .O(n44) );
  MOAI1S U128 ( .A1(n157), .A2(n44), .B1(n45), .B2(N17), .O(n132) );
  OR2 U129 ( .I1(n157), .I2(n46), .O(n45) );
  INV1S U130 ( .I(N15), .O(n177) );
  INV1S U131 ( .I(wr_ptr[0]), .O(n186) );
  MOAI1S U132 ( .A1(n185), .A2(n2), .B1(N54), .B2(n2), .O(n59) );
  INV1S U133 ( .I(data_out[1]), .O(n185) );
  MOAI1S U134 ( .A1(n184), .A2(n2), .B1(N53), .B2(n2), .O(n60) );
  INV1S U135 ( .I(data_out[2]), .O(n184) );
  MOAI1S U136 ( .A1(n183), .A2(n2), .B1(N52), .B2(n2), .O(n61) );
  INV1S U137 ( .I(data_out[3]), .O(n183) );
  MOAI1S U138 ( .A1(n182), .A2(n2), .B1(N51), .B2(n2), .O(n62) );
  INV1S U139 ( .I(data_out[4]), .O(n182) );
  MOAI1S U140 ( .A1(n181), .A2(n2), .B1(N50), .B2(n2), .O(n63) );
  INV1S U141 ( .I(data_out[5]), .O(n181) );
  MOAI1S U142 ( .A1(n180), .A2(n2), .B1(N49), .B2(n2), .O(n64) );
  INV1S U143 ( .I(data_out[6]), .O(n180) );
  MOAI1S U144 ( .A1(n178), .A2(n2), .B1(N55), .B2(n2), .O(n66) );
  INV1S U145 ( .I(data_out[0]), .O(n178) );
  INV1S U146 ( .I(N16), .O(n157) );
  MOAI1S U147 ( .A1(n179), .A2(n2), .B1(N48), .B2(n2), .O(n65) );
  INV1S U148 ( .I(data_out[7]), .O(n179) );
  INV1S U149 ( .I(N17), .O(n156) );
  NR2P U150 ( .I1(N16), .I2(N17), .O(n151) );
  XOR2HS U151 ( .I1(N15), .I2(n2), .O(n134) );
  INV1S U152 ( .I(wr_ptr[2]), .O(n188) );
  AOI22S U153 ( .A1(buffer[24]), .A2(n4), .B1(buffer[8]), .B2(n1), .O(n7) );
  AOI22S U154 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n3), .O(n6)
         );
  AN2 U155 ( .I1(n7), .I2(n6), .O(n14) );
  AOI22S U156 ( .A1(buffer[16]), .A2(n4), .B1(buffer[0]), .B2(n1), .O(n10) );
  AOI22S U157 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n3), .O(n8)
         );
  ND2 U158 ( .I1(n10), .I2(n8), .O(n11) );
  MOAI1S U159 ( .A1(N15), .A2(n14), .B1(n11), .B2(N15), .O(N55) );
  AOI22S U160 ( .A1(buffer[25]), .A2(n4), .B1(buffer[9]), .B2(n1), .O(n1700)
         );
  AOI22S U161 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n3), .O(n1600) );
  AN2 U162 ( .I1(n1700), .I2(n1600), .O(n21) );
  AOI22S U163 ( .A1(buffer[17]), .A2(n4), .B1(buffer[1]), .B2(n1), .O(n19) );
  AOI22S U164 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n3), .O(n18)
         );
  ND2 U165 ( .I1(n19), .I2(n18), .O(n20) );
  MOAI1S U166 ( .A1(N15), .A2(n21), .B1(n20), .B2(N15), .O(N54) );
  AOI22S U167 ( .A1(buffer[26]), .A2(n4), .B1(buffer[10]), .B2(n1), .O(n23) );
  AOI22S U168 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n3), .O(n22)
         );
  AN2 U169 ( .I1(n23), .I2(n22), .O(n28) );
  AOI22S U170 ( .A1(buffer[18]), .A2(n4), .B1(buffer[2]), .B2(n1), .O(n26) );
  AOI22S U171 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n3), .O(n24)
         );
  ND2 U172 ( .I1(n26), .I2(n24), .O(n27) );
  MOAI1S U173 ( .A1(N15), .A2(n28), .B1(n27), .B2(N15), .O(N53) );
  AOI22S U174 ( .A1(buffer[27]), .A2(n4), .B1(buffer[11]), .B2(n1), .O(n30) );
  AOI22S U175 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n3), .O(n29)
         );
  AN2 U176 ( .I1(n30), .I2(n29), .O(n34) );
  AOI22S U177 ( .A1(buffer[19]), .A2(n4), .B1(buffer[3]), .B2(n1), .O(n32) );
  AOI22S U178 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n3), .O(n31)
         );
  ND2 U179 ( .I1(n32), .I2(n31), .O(n33) );
  MOAI1S U180 ( .A1(N15), .A2(n34), .B1(n33), .B2(N15), .O(N52) );
  AOI22S U181 ( .A1(buffer[28]), .A2(n4), .B1(buffer[12]), .B2(n1), .O(n43) );
  AOI22S U182 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n3), .O(n35)
         );
  AN2 U183 ( .I1(n43), .I2(n35), .O(n136) );
  AOI22S U184 ( .A1(buffer[20]), .A2(n4), .B1(buffer[4]), .B2(n1), .O(n67) );
  AOI22S U185 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n3), .O(n490)
         );
  ND2 U186 ( .I1(n67), .I2(n490), .O(n135) );
  MOAI1S U187 ( .A1(N15), .A2(n136), .B1(n135), .B2(N15), .O(N51) );
  AOI22S U188 ( .A1(buffer[29]), .A2(n4), .B1(buffer[13]), .B2(n1), .O(n138)
         );
  AOI22S U189 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n3), .O(n137)
         );
  AN2 U190 ( .I1(n138), .I2(n137), .O(n142) );
  AOI22S U191 ( .A1(buffer[21]), .A2(n4), .B1(buffer[5]), .B2(n1), .O(n140) );
  AOI22S U192 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n3), .O(n139)
         );
  ND2 U193 ( .I1(n140), .I2(n139), .O(n141) );
  MOAI1S U194 ( .A1(N15), .A2(n142), .B1(n141), .B2(N15), .O(N50) );
  AOI22S U195 ( .A1(buffer[30]), .A2(n4), .B1(buffer[14]), .B2(n1), .O(n144)
         );
  AOI22S U196 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n3), .O(n143)
         );
  AN2 U197 ( .I1(n144), .I2(n143), .O(n148) );
  AOI22S U198 ( .A1(buffer[22]), .A2(n4), .B1(buffer[6]), .B2(n1), .O(n146) );
  AOI22S U199 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n3), .O(n145)
         );
  ND2 U200 ( .I1(n146), .I2(n145), .O(n147) );
  MOAI1S U201 ( .A1(N15), .A2(n148), .B1(n147), .B2(N15), .O(N49) );
  AOI22S U202 ( .A1(buffer[23]), .A2(n4), .B1(buffer[7]), .B2(n1), .O(n1501)
         );
  AOI22S U203 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n3), .O(n149)
         );
  AN2 U204 ( .I1(n1501), .I2(n149), .O(n155) );
  AOI22S U205 ( .A1(buffer[31]), .A2(n4), .B1(buffer[15]), .B2(n1), .O(n153)
         );
  AOI22S U206 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n3), .O(n152)
         );
  ND2 U207 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U208 ( .A1(n155), .A2(n177), .B1(n154), .B2(n177), .O(N48) );
endmodule


module sync_fifo_6 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n11, n14, n1600, n1700, n18, n19, n20, n21, n22,
         n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n43, n490,
         n67, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n1601, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n1701, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  ND2 U114 ( .I1(n2), .I2(N15), .O(n283) );
  ND2 U121 ( .I1(n277), .I2(n276), .O(n281) );
  OR3 U123 ( .I1(n279), .I2(N16), .I3(n187), .O(n277) );
  QDFFRBN buffer_reg_3__6_ ( .D(n239), .CK(clk), .RB(n168), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n238), .CK(clk), .RB(n168), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n237), .CK(clk), .RB(n168), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n236), .CK(clk), .RB(n168), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n235), .CK(clk), .RB(n168), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n234), .CK(clk), .RB(n168), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n232), .CK(clk), .RB(n168), .Q(buffer[32]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n223), .CK(clk), .RB(n1701), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n222), .CK(clk), .RB(n171), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n221), .CK(clk), .RB(n171), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n220), .CK(clk), .RB(n171), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n219), .CK(clk), .RB(n171), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n218), .CK(clk), .RB(n171), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n216), .CK(clk), .RB(n171), .Q(buffer[16]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n233), .CK(clk), .RB(n168), .Q(buffer[39]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n217), .CK(clk), .RB(n171), .Q(buffer[23]) );
  QDFFRBN data_out_reg_7_ ( .D(n265), .CK(clk), .RB(n166), .Q(data_out[7]) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n272), .CK(clk), .RB(n167), .Q(wr_ptr[0]) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n197), .CK(clk), .RB(n166), .Q(N15) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n198), .CK(clk), .RB(n166), .Q(N16) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n274), .CK(clk), .RB(n167), .Q(wr_ptr[2]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n199), .CK(clk), .RB(n166), .Q(N17) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n273), .CK(clk), .RB(n167), .Q(wr_ptr[1]) );
  QDFFRBN data_out_reg_6_ ( .D(n266), .CK(clk), .RB(n166), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n267), .CK(clk), .RB(n166), .Q(data_out[5]) );
  QDFFRBN data_out_reg_3_ ( .D(n269), .CK(clk), .RB(n166), .Q(data_out[3]) );
  QDFFRBN data_out_reg_4_ ( .D(n268), .CK(clk), .RB(n166), .Q(data_out[4]) );
  QDFFRBN data_out_reg_0_ ( .D(n264), .CK(clk), .RB(n166), .Q(data_out[0]) );
  QDFFRBN data_out_reg_1_ ( .D(n271), .CK(clk), .RB(n166), .Q(data_out[1]) );
  QDFFRBN data_out_reg_2_ ( .D(n270), .CK(clk), .RB(n166), .Q(data_out[2]) );
  QDFFRBS buffer_reg_2__7_ ( .D(n241), .CK(clk), .RB(n167), .Q(buffer[47]) );
  QDFFRBS buffer_reg_6__7_ ( .D(n209), .CK(clk), .RB(n172), .Q(buffer[15]) );
  QDFFRBS buffer_reg_7__6_ ( .D(n207), .CK(clk), .RB(n172), .Q(buffer[6]) );
  QDFFRBS buffer_reg_7__5_ ( .D(n206), .CK(clk), .RB(n172), .Q(buffer[5]) );
  QDFFRBS buffer_reg_7__4_ ( .D(n205), .CK(clk), .RB(n172), .Q(buffer[4]) );
  QDFFRBS buffer_reg_7__3_ ( .D(n204), .CK(clk), .RB(n172), .Q(buffer[3]) );
  QDFFRBS buffer_reg_7__2_ ( .D(n203), .CK(clk), .RB(n172), .Q(buffer[2]) );
  QDFFRBS buffer_reg_7__1_ ( .D(n202), .CK(clk), .RB(n172), .Q(buffer[1]) );
  QDFFRBS buffer_reg_7__0_ ( .D(n200), .CK(clk), .RB(n175), .Q(buffer[0]) );
  QDFFRBS buffer_reg_0__7_ ( .D(n257), .CK(clk), .RB(n169), .Q(buffer[63]) );
  QDFFRBS buffer_reg_4__7_ ( .D(n225), .CK(clk), .RB(n1701), .Q(buffer[31]) );
  QDFFRBS buffer_reg_1__6_ ( .D(n255), .CK(clk), .RB(n169), .Q(buffer[54]) );
  QDFFRBS buffer_reg_1__5_ ( .D(n254), .CK(clk), .RB(n169), .Q(buffer[53]) );
  QDFFRBS buffer_reg_1__4_ ( .D(n253), .CK(clk), .RB(n169), .Q(buffer[52]) );
  QDFFRBS buffer_reg_1__3_ ( .D(n252), .CK(clk), .RB(n169), .Q(buffer[51]) );
  QDFFRBS buffer_reg_1__2_ ( .D(n251), .CK(clk), .RB(n169), .Q(buffer[50]) );
  QDFFRBS buffer_reg_1__1_ ( .D(n250), .CK(clk), .RB(n169), .Q(buffer[49]) );
  QDFFRBS buffer_reg_1__0_ ( .D(n248), .CK(clk), .RB(n1701), .Q(buffer[48]) );
  QDFFRBS buffer_reg_7__7_ ( .D(n201), .CK(clk), .RB(n172), .Q(buffer[7]) );
  QDFFRBS buffer_reg_6__6_ ( .D(n215), .CK(clk), .RB(n171), .Q(buffer[14]) );
  QDFFRBS buffer_reg_6__5_ ( .D(n214), .CK(clk), .RB(n171), .Q(buffer[13]) );
  QDFFRBS buffer_reg_6__4_ ( .D(n213), .CK(clk), .RB(n171), .Q(buffer[12]) );
  QDFFRBS buffer_reg_6__3_ ( .D(n212), .CK(clk), .RB(n171), .Q(buffer[11]) );
  QDFFRBS buffer_reg_6__2_ ( .D(n211), .CK(clk), .RB(n172), .Q(buffer[10]) );
  QDFFRBS buffer_reg_6__1_ ( .D(n210), .CK(clk), .RB(n172), .Q(buffer[9]) );
  QDFFRBS buffer_reg_6__0_ ( .D(n208), .CK(clk), .RB(n172), .Q(buffer[8]) );
  QDFFRBS buffer_reg_2__6_ ( .D(n247), .CK(clk), .RB(n167), .Q(buffer[46]) );
  QDFFRBS buffer_reg_2__5_ ( .D(n246), .CK(clk), .RB(n167), .Q(buffer[45]) );
  QDFFRBS buffer_reg_2__4_ ( .D(n245), .CK(clk), .RB(n167), .Q(buffer[44]) );
  QDFFRBS buffer_reg_2__3_ ( .D(n244), .CK(clk), .RB(n167), .Q(buffer[43]) );
  QDFFRBS buffer_reg_2__2_ ( .D(n243), .CK(clk), .RB(n167), .Q(buffer[42]) );
  QDFFRBS buffer_reg_2__1_ ( .D(n242), .CK(clk), .RB(n167), .Q(buffer[41]) );
  QDFFRBS buffer_reg_2__0_ ( .D(n240), .CK(clk), .RB(n167), .Q(buffer[40]) );
  QDFFRBS buffer_reg_1__7_ ( .D(n249), .CK(clk), .RB(n1701), .Q(buffer[55]) );
  QDFFRBS buffer_reg_4__6_ ( .D(n231), .CK(clk), .RB(n1701), .Q(buffer[30]) );
  QDFFRBS buffer_reg_4__5_ ( .D(n230), .CK(clk), .RB(n1701), .Q(buffer[29]) );
  QDFFRBS buffer_reg_4__4_ ( .D(n229), .CK(clk), .RB(n1701), .Q(buffer[28]) );
  QDFFRBS buffer_reg_4__3_ ( .D(n228), .CK(clk), .RB(n1701), .Q(buffer[27]) );
  QDFFRBS buffer_reg_4__2_ ( .D(n227), .CK(clk), .RB(n1701), .Q(buffer[26]) );
  QDFFRBS buffer_reg_4__1_ ( .D(n226), .CK(clk), .RB(n1701), .Q(buffer[25]) );
  QDFFRBS buffer_reg_4__0_ ( .D(n224), .CK(clk), .RB(n1701), .Q(buffer[24]) );
  QDFFRBS buffer_reg_0__6_ ( .D(n263), .CK(clk), .RB(n168), .Q(buffer[62]) );
  QDFFRBS buffer_reg_0__5_ ( .D(n262), .CK(clk), .RB(n168), .Q(buffer[61]) );
  QDFFRBS buffer_reg_0__4_ ( .D(n261), .CK(clk), .RB(n168), .Q(buffer[60]) );
  QDFFRBS buffer_reg_0__3_ ( .D(n260), .CK(clk), .RB(n169), .Q(buffer[59]) );
  QDFFRBS buffer_reg_0__2_ ( .D(n259), .CK(clk), .RB(n169), .Q(buffer[58]) );
  QDFFRBS buffer_reg_0__1_ ( .D(n258), .CK(clk), .RB(n169), .Q(buffer[57]) );
  QDFFRBS buffer_reg_0__0_ ( .D(n256), .CK(clk), .RB(n169), .Q(buffer[56]) );
  BUF2 U3 ( .I(n288), .O(n158) );
  BUF2 U4 ( .I(n291), .O(n161) );
  BUF2 U5 ( .I(n290), .O(n1601) );
  AN2 U6 ( .I1(n295), .I2(wr_ptr[0]), .O(n296) );
  NR2P U7 ( .I1(n156), .I2(n157), .O(n1) );
  AN2 U8 ( .I1(r_en), .I2(n282), .O(n2) );
  NR2P U9 ( .I1(n157), .I2(N17), .O(n3) );
  NR2P U10 ( .I1(n156), .I2(N16), .O(n4) );
  ND2P U11 ( .I1(n297), .I2(wr_ptr[2]), .O(n287) );
  ND2P U12 ( .I1(n297), .I2(n188), .O(n5) );
  BUF1 U13 ( .I(n293), .O(n163) );
  ND2S U14 ( .I1(n295), .I2(n186), .O(n294) );
  BUF1 U15 ( .I(n289), .O(n159) );
  ND3S U16 ( .I1(wr_ptr[2]), .I2(n187), .I3(n296), .O(n289) );
  ND3S U17 ( .I1(wr_ptr[1]), .I2(n188), .I3(n176), .O(n291) );
  BUF1CK U18 ( .I(n173), .O(n172) );
  BUF1CK U19 ( .I(n173), .O(n171) );
  BUF1CK U20 ( .I(n173), .O(n1701) );
  BUF1CK U21 ( .I(n174), .O(n169) );
  BUF1CK U22 ( .I(n174), .O(n168) );
  BUF1CK U23 ( .I(n175), .O(n167) );
  BUF1CK U24 ( .I(n175), .O(n166) );
  INV1S U25 ( .I(n164), .O(n173) );
  INV1S U26 ( .I(n164), .O(n174) );
  INV1S U27 ( .I(n294), .O(n176) );
  BUF1CK U28 ( .I(rst), .O(n164) );
  INV1S U29 ( .I(n165), .O(n175) );
  BUF1CK U30 ( .I(rst), .O(n165) );
  AN2 U31 ( .I1(w_en), .I2(n286), .O(n295) );
  ND3 U32 ( .I1(n187), .I2(n188), .I3(n176), .O(n293) );
  OAI12HS U33 ( .B1(n297), .B2(n188), .A1(n5), .O(n274) );
  BUF1CK U34 ( .I(n292), .O(n162) );
  ND3 U35 ( .I1(n187), .I2(n188), .I3(n296), .O(n292) );
  OAI12HS U36 ( .B1(n295), .B2(n186), .A1(n294), .O(n272) );
  INV1S U37 ( .I(n286), .O(full) );
  INV1S U38 ( .I(n282), .O(empty) );
  MOAI1S U39 ( .A1(n196), .A2(n287), .B1(buffer[0]), .B2(n287), .O(n200) );
  MOAI1S U40 ( .A1(n189), .A2(n287), .B1(buffer[7]), .B2(n287), .O(n201) );
  MOAI1S U41 ( .A1(n195), .A2(n287), .B1(buffer[1]), .B2(n287), .O(n202) );
  MOAI1S U42 ( .A1(n194), .A2(n287), .B1(buffer[2]), .B2(n287), .O(n203) );
  MOAI1S U43 ( .A1(n193), .A2(n287), .B1(buffer[3]), .B2(n287), .O(n204) );
  MOAI1S U44 ( .A1(n192), .A2(n287), .B1(buffer[4]), .B2(n287), .O(n205) );
  MOAI1S U45 ( .A1(n191), .A2(n287), .B1(buffer[5]), .B2(n287), .O(n206) );
  MOAI1S U46 ( .A1(n190), .A2(n287), .B1(buffer[6]), .B2(n287), .O(n207) );
  AN2 U47 ( .I1(n296), .I2(wr_ptr[1]), .O(n297) );
  MOAI1S U48 ( .A1(n196), .A2(n5), .B1(buffer[32]), .B2(n5), .O(n232) );
  MOAI1S U49 ( .A1(n189), .A2(n5), .B1(buffer[39]), .B2(n5), .O(n233) );
  MOAI1S U50 ( .A1(n195), .A2(n5), .B1(buffer[33]), .B2(n5), .O(n234) );
  MOAI1S U51 ( .A1(n194), .A2(n5), .B1(buffer[34]), .B2(n5), .O(n235) );
  MOAI1S U52 ( .A1(n193), .A2(n5), .B1(buffer[35]), .B2(n5), .O(n236) );
  MOAI1S U53 ( .A1(n192), .A2(n5), .B1(buffer[36]), .B2(n5), .O(n237) );
  MOAI1S U54 ( .A1(n191), .A2(n5), .B1(buffer[37]), .B2(n5), .O(n238) );
  MOAI1S U55 ( .A1(n190), .A2(n5), .B1(buffer[38]), .B2(n5), .O(n239) );
  MOAI1S U56 ( .A1(n196), .A2(n1601), .B1(buffer[24]), .B2(n1601), .O(n224) );
  MOAI1S U57 ( .A1(n189), .A2(n1601), .B1(buffer[31]), .B2(n1601), .O(n225) );
  MOAI1S U58 ( .A1(n195), .A2(n1601), .B1(buffer[25]), .B2(n1601), .O(n226) );
  MOAI1S U59 ( .A1(n194), .A2(n1601), .B1(buffer[26]), .B2(n1601), .O(n227) );
  MOAI1S U60 ( .A1(n193), .A2(n1601), .B1(buffer[27]), .B2(n1601), .O(n228) );
  MOAI1S U61 ( .A1(n192), .A2(n1601), .B1(buffer[28]), .B2(n1601), .O(n229) );
  MOAI1S U62 ( .A1(n191), .A2(n1601), .B1(buffer[29]), .B2(n1601), .O(n230) );
  MOAI1S U63 ( .A1(n190), .A2(n1601), .B1(buffer[30]), .B2(n1601), .O(n231) );
  ND3S U64 ( .I1(wr_ptr[2]), .I2(n187), .I3(n176), .O(n290) );
  MOAI1S U65 ( .A1(n196), .A2(n158), .B1(buffer[8]), .B2(n158), .O(n208) );
  MOAI1S U66 ( .A1(n189), .A2(n158), .B1(buffer[15]), .B2(n158), .O(n209) );
  MOAI1S U67 ( .A1(n195), .A2(n158), .B1(buffer[9]), .B2(n158), .O(n210) );
  MOAI1S U68 ( .A1(n194), .A2(n158), .B1(buffer[10]), .B2(n158), .O(n211) );
  MOAI1S U69 ( .A1(n193), .A2(n158), .B1(buffer[11]), .B2(n158), .O(n212) );
  MOAI1S U70 ( .A1(n192), .A2(n158), .B1(buffer[12]), .B2(n158), .O(n213) );
  MOAI1S U71 ( .A1(n191), .A2(n158), .B1(buffer[13]), .B2(n158), .O(n214) );
  MOAI1S U72 ( .A1(n190), .A2(n158), .B1(buffer[14]), .B2(n158), .O(n215) );
  MOAI1S U73 ( .A1(n196), .A2(n161), .B1(buffer[40]), .B2(n161), .O(n240) );
  MOAI1S U74 ( .A1(n189), .A2(n161), .B1(buffer[47]), .B2(n161), .O(n241) );
  MOAI1S U75 ( .A1(n195), .A2(n161), .B1(buffer[41]), .B2(n161), .O(n242) );
  MOAI1S U76 ( .A1(n194), .A2(n161), .B1(buffer[42]), .B2(n161), .O(n243) );
  MOAI1S U77 ( .A1(n193), .A2(n161), .B1(buffer[43]), .B2(n161), .O(n244) );
  MOAI1S U78 ( .A1(n192), .A2(n161), .B1(buffer[44]), .B2(n161), .O(n245) );
  MOAI1S U79 ( .A1(n191), .A2(n161), .B1(buffer[45]), .B2(n161), .O(n246) );
  MOAI1S U80 ( .A1(n190), .A2(n161), .B1(buffer[46]), .B2(n161), .O(n247) );
  ND3S U81 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n176), .O(n288) );
  MOAI1S U82 ( .A1(n163), .A2(n196), .B1(buffer[56]), .B2(n163), .O(n256) );
  MOAI1S U83 ( .A1(n163), .A2(n189), .B1(buffer[63]), .B2(n163), .O(n257) );
  MOAI1S U84 ( .A1(n163), .A2(n195), .B1(buffer[57]), .B2(n163), .O(n258) );
  MOAI1S U85 ( .A1(n163), .A2(n194), .B1(buffer[58]), .B2(n163), .O(n259) );
  MOAI1S U86 ( .A1(n163), .A2(n193), .B1(buffer[59]), .B2(n163), .O(n260) );
  MOAI1S U87 ( .A1(n163), .A2(n192), .B1(buffer[60]), .B2(n163), .O(n261) );
  MOAI1S U88 ( .A1(n163), .A2(n191), .B1(buffer[61]), .B2(n163), .O(n262) );
  MOAI1S U89 ( .A1(n163), .A2(n190), .B1(buffer[62]), .B2(n163), .O(n263) );
  MOAI1S U90 ( .A1(n196), .A2(n162), .B1(buffer[48]), .B2(n162), .O(n248) );
  MOAI1S U91 ( .A1(n189), .A2(n162), .B1(buffer[55]), .B2(n162), .O(n249) );
  MOAI1S U92 ( .A1(n195), .A2(n162), .B1(buffer[49]), .B2(n162), .O(n250) );
  MOAI1S U93 ( .A1(n194), .A2(n162), .B1(buffer[50]), .B2(n162), .O(n251) );
  MOAI1S U94 ( .A1(n193), .A2(n162), .B1(buffer[51]), .B2(n162), .O(n252) );
  MOAI1S U95 ( .A1(n192), .A2(n162), .B1(buffer[52]), .B2(n162), .O(n253) );
  MOAI1S U96 ( .A1(n191), .A2(n162), .B1(buffer[53]), .B2(n162), .O(n254) );
  MOAI1S U97 ( .A1(n190), .A2(n162), .B1(buffer[54]), .B2(n162), .O(n255) );
  MOAI1S U98 ( .A1(n196), .A2(n159), .B1(buffer[16]), .B2(n159), .O(n216) );
  MOAI1S U99 ( .A1(n189), .A2(n159), .B1(buffer[23]), .B2(n159), .O(n217) );
  MOAI1S U100 ( .A1(n195), .A2(n159), .B1(buffer[17]), .B2(n159), .O(n218) );
  MOAI1S U101 ( .A1(n194), .A2(n159), .B1(buffer[18]), .B2(n159), .O(n219) );
  MOAI1S U102 ( .A1(n193), .A2(n159), .B1(buffer[19]), .B2(n159), .O(n220) );
  MOAI1S U103 ( .A1(n192), .A2(n159), .B1(buffer[20]), .B2(n159), .O(n221) );
  MOAI1S U104 ( .A1(n191), .A2(n159), .B1(buffer[21]), .B2(n159), .O(n222) );
  MOAI1S U105 ( .A1(n190), .A2(n159), .B1(buffer[22]), .B2(n159), .O(n223) );
  XOR2HS U106 ( .I1(wr_ptr[1]), .I2(n296), .O(n273) );
  INV1S U107 ( .I(data_in[0]), .O(n196) );
  INV1S U108 ( .I(data_in[7]), .O(n189) );
  INV1S U109 ( .I(data_in[1]), .O(n195) );
  INV1S U110 ( .I(data_in[2]), .O(n194) );
  INV1S U111 ( .I(data_in[3]), .O(n193) );
  INV1S U112 ( .I(data_in[4]), .O(n192) );
  INV1S U113 ( .I(data_in[5]), .O(n191) );
  INV1S U115 ( .I(data_in[6]), .O(n190) );
  INV1S U116 ( .I(wr_ptr[1]), .O(n187) );
  XOR2HS U117 ( .I1(N16), .I2(n187), .O(n278) );
  AOI13HS U118 ( .B1(n281), .B2(n177), .B3(wr_ptr[0]), .A1(n280), .O(n286) );
  AN4B1S U119 ( .I1(n279), .I2(n186), .I3(n278), .B1(n177), .O(n280) );
  ND3 U120 ( .I1(N16), .I2(n187), .I3(n279), .O(n276) );
  XNR2HS U122 ( .I1(N17), .I2(wr_ptr[2]), .O(n279) );
  MOAI1S U124 ( .A1(N16), .A2(n285), .B1(n283), .B2(N16), .O(n198) );
  ND3 U125 ( .I1(n279), .I2(n278), .I3(n275), .O(n282) );
  XOR2HS U126 ( .I1(n177), .I2(wr_ptr[0]), .O(n275) );
  AO12 U127 ( .B1(N17), .B2(N16), .A1(n283), .O(n285) );
  MOAI1S U128 ( .A1(n157), .A2(n285), .B1(n284), .B2(N17), .O(n199) );
  OR2 U129 ( .I1(n157), .I2(n283), .O(n284) );
  INV1S U130 ( .I(N15), .O(n177) );
  INV1S U131 ( .I(wr_ptr[0]), .O(n186) );
  MOAI1S U132 ( .A1(n185), .A2(n2), .B1(N54), .B2(n2), .O(n271) );
  INV1S U133 ( .I(data_out[1]), .O(n185) );
  MOAI1S U134 ( .A1(n184), .A2(n2), .B1(N53), .B2(n2), .O(n270) );
  INV1S U135 ( .I(data_out[2]), .O(n184) );
  MOAI1S U136 ( .A1(n183), .A2(n2), .B1(N52), .B2(n2), .O(n269) );
  INV1S U137 ( .I(data_out[3]), .O(n183) );
  MOAI1S U138 ( .A1(n182), .A2(n2), .B1(N51), .B2(n2), .O(n268) );
  INV1S U139 ( .I(data_out[4]), .O(n182) );
  MOAI1S U140 ( .A1(n181), .A2(n2), .B1(N50), .B2(n2), .O(n267) );
  INV1S U141 ( .I(data_out[5]), .O(n181) );
  MOAI1S U142 ( .A1(n180), .A2(n2), .B1(N49), .B2(n2), .O(n266) );
  INV1S U143 ( .I(data_out[6]), .O(n180) );
  MOAI1S U144 ( .A1(n178), .A2(n2), .B1(N55), .B2(n2), .O(n264) );
  INV1S U145 ( .I(data_out[0]), .O(n178) );
  INV1S U146 ( .I(N16), .O(n157) );
  MOAI1S U147 ( .A1(n179), .A2(n2), .B1(N48), .B2(n2), .O(n265) );
  INV1S U148 ( .I(data_out[7]), .O(n179) );
  INV1S U149 ( .I(N17), .O(n156) );
  NR2P U150 ( .I1(N16), .I2(N17), .O(n151) );
  XOR2HS U151 ( .I1(N15), .I2(n2), .O(n197) );
  INV1S U152 ( .I(wr_ptr[2]), .O(n188) );
  AOI22S U153 ( .A1(buffer[24]), .A2(n4), .B1(buffer[8]), .B2(n1), .O(n7) );
  AOI22S U154 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n3), .O(n6)
         );
  AN2 U155 ( .I1(n7), .I2(n6), .O(n14) );
  AOI22S U156 ( .A1(buffer[16]), .A2(n4), .B1(buffer[0]), .B2(n1), .O(n10) );
  AOI22S U157 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n3), .O(n8)
         );
  ND2 U158 ( .I1(n10), .I2(n8), .O(n11) );
  MOAI1S U159 ( .A1(N15), .A2(n14), .B1(n11), .B2(N15), .O(N55) );
  AOI22S U160 ( .A1(buffer[25]), .A2(n4), .B1(buffer[9]), .B2(n1), .O(n1700)
         );
  AOI22S U161 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n3), .O(n1600) );
  AN2 U162 ( .I1(n1700), .I2(n1600), .O(n21) );
  AOI22S U163 ( .A1(buffer[17]), .A2(n4), .B1(buffer[1]), .B2(n1), .O(n19) );
  AOI22S U164 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n3), .O(n18)
         );
  ND2 U165 ( .I1(n19), .I2(n18), .O(n20) );
  MOAI1S U166 ( .A1(N15), .A2(n21), .B1(n20), .B2(N15), .O(N54) );
  AOI22S U167 ( .A1(buffer[26]), .A2(n4), .B1(buffer[10]), .B2(n1), .O(n23) );
  AOI22S U168 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n3), .O(n22)
         );
  AN2 U169 ( .I1(n23), .I2(n22), .O(n28) );
  AOI22S U170 ( .A1(buffer[18]), .A2(n4), .B1(buffer[2]), .B2(n1), .O(n26) );
  AOI22S U171 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n3), .O(n24)
         );
  ND2 U172 ( .I1(n26), .I2(n24), .O(n27) );
  MOAI1S U173 ( .A1(N15), .A2(n28), .B1(n27), .B2(N15), .O(N53) );
  AOI22S U174 ( .A1(buffer[27]), .A2(n4), .B1(buffer[11]), .B2(n1), .O(n30) );
  AOI22S U175 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n3), .O(n29)
         );
  AN2 U176 ( .I1(n30), .I2(n29), .O(n34) );
  AOI22S U177 ( .A1(buffer[19]), .A2(n4), .B1(buffer[3]), .B2(n1), .O(n32) );
  AOI22S U178 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n3), .O(n31)
         );
  ND2 U179 ( .I1(n32), .I2(n31), .O(n33) );
  MOAI1S U180 ( .A1(N15), .A2(n34), .B1(n33), .B2(N15), .O(N52) );
  AOI22S U181 ( .A1(buffer[28]), .A2(n4), .B1(buffer[12]), .B2(n1), .O(n43) );
  AOI22S U182 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n3), .O(n35)
         );
  AN2 U183 ( .I1(n43), .I2(n35), .O(n136) );
  AOI22S U184 ( .A1(buffer[20]), .A2(n4), .B1(buffer[4]), .B2(n1), .O(n67) );
  AOI22S U185 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n3), .O(n490)
         );
  ND2 U186 ( .I1(n67), .I2(n490), .O(n135) );
  MOAI1S U187 ( .A1(N15), .A2(n136), .B1(n135), .B2(N15), .O(N51) );
  AOI22S U188 ( .A1(buffer[29]), .A2(n4), .B1(buffer[13]), .B2(n1), .O(n138)
         );
  AOI22S U189 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n3), .O(n137)
         );
  AN2 U190 ( .I1(n138), .I2(n137), .O(n142) );
  AOI22S U191 ( .A1(buffer[21]), .A2(n4), .B1(buffer[5]), .B2(n1), .O(n140) );
  AOI22S U192 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n3), .O(n139)
         );
  ND2 U193 ( .I1(n140), .I2(n139), .O(n141) );
  MOAI1S U194 ( .A1(N15), .A2(n142), .B1(n141), .B2(N15), .O(N50) );
  AOI22S U195 ( .A1(buffer[30]), .A2(n4), .B1(buffer[14]), .B2(n1), .O(n144)
         );
  AOI22S U196 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n3), .O(n143)
         );
  AN2 U197 ( .I1(n144), .I2(n143), .O(n148) );
  AOI22S U198 ( .A1(buffer[22]), .A2(n4), .B1(buffer[6]), .B2(n1), .O(n146) );
  AOI22S U199 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n3), .O(n145)
         );
  ND2 U200 ( .I1(n146), .I2(n145), .O(n147) );
  MOAI1S U201 ( .A1(N15), .A2(n148), .B1(n147), .B2(N15), .O(N49) );
  AOI22S U202 ( .A1(buffer[23]), .A2(n4), .B1(buffer[7]), .B2(n1), .O(n150) );
  AOI22S U203 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n3), .O(n149)
         );
  AN2 U204 ( .I1(n150), .I2(n149), .O(n155) );
  AOI22S U205 ( .A1(buffer[31]), .A2(n4), .B1(buffer[15]), .B2(n1), .O(n153)
         );
  AOI22S U206 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n3), .O(n152)
         );
  ND2 U207 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U208 ( .A1(n155), .A2(n177), .B1(n154), .B2(n177), .O(N48) );
endmodule


module sync_fifo_5 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n11, n14, n1600, n1700, n18, n19, n20, n21, n22,
         n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n43, n490,
         n67, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n1601, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n1701, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  ND2 U114 ( .I1(n2), .I2(N15), .O(n282) );
  ND2 U121 ( .I1(n276), .I2(n275), .O(n280) );
  OR3 U123 ( .I1(n278), .I2(N16), .I3(n186), .O(n276) );
  QDFFRBN buffer_reg_3__6_ ( .D(n238), .CK(clk), .RB(n168), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n237), .CK(clk), .RB(n168), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n236), .CK(clk), .RB(n168), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n235), .CK(clk), .RB(n168), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n234), .CK(clk), .RB(n168), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n233), .CK(clk), .RB(n168), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n231), .CK(clk), .RB(n168), .Q(buffer[32]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n222), .CK(clk), .RB(n1701), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n221), .CK(clk), .RB(n171), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n220), .CK(clk), .RB(n171), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n219), .CK(clk), .RB(n171), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n218), .CK(clk), .RB(n171), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n217), .CK(clk), .RB(n171), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n215), .CK(clk), .RB(n171), .Q(buffer[16]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n232), .CK(clk), .RB(n168), .Q(buffer[39]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n216), .CK(clk), .RB(n171), .Q(buffer[23]) );
  QDFFRBN data_out_reg_7_ ( .D(n264), .CK(clk), .RB(n166), .Q(data_out[7]) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n271), .CK(clk), .RB(n167), .Q(wr_ptr[0]) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n196), .CK(clk), .RB(n166), .Q(N15) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n197), .CK(clk), .RB(n166), .Q(N16) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n273), .CK(clk), .RB(n167), .Q(wr_ptr[2]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n198), .CK(clk), .RB(n166), .Q(N17) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n272), .CK(clk), .RB(n167), .Q(wr_ptr[1]) );
  QDFFRBN data_out_reg_6_ ( .D(n265), .CK(clk), .RB(n166), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n266), .CK(clk), .RB(n166), .Q(data_out[5]) );
  QDFFRBN data_out_reg_3_ ( .D(n268), .CK(clk), .RB(n166), .Q(data_out[3]) );
  QDFFRBN data_out_reg_4_ ( .D(n267), .CK(clk), .RB(n166), .Q(data_out[4]) );
  QDFFRBN data_out_reg_0_ ( .D(n263), .CK(clk), .RB(n166), .Q(data_out[0]) );
  QDFFRBN data_out_reg_1_ ( .D(n270), .CK(clk), .RB(n166), .Q(data_out[1]) );
  QDFFRBN data_out_reg_2_ ( .D(n269), .CK(clk), .RB(n166), .Q(data_out[2]) );
  QDFFRBS buffer_reg_2__7_ ( .D(n240), .CK(clk), .RB(n167), .Q(buffer[47]) );
  QDFFRBS buffer_reg_6__7_ ( .D(n208), .CK(clk), .RB(n172), .Q(buffer[15]) );
  QDFFRBS buffer_reg_7__6_ ( .D(n206), .CK(clk), .RB(n172), .Q(buffer[6]) );
  QDFFRBS buffer_reg_7__5_ ( .D(n205), .CK(clk), .RB(n172), .Q(buffer[5]) );
  QDFFRBS buffer_reg_7__4_ ( .D(n204), .CK(clk), .RB(n172), .Q(buffer[4]) );
  QDFFRBS buffer_reg_7__3_ ( .D(n203), .CK(clk), .RB(n172), .Q(buffer[3]) );
  QDFFRBS buffer_reg_7__2_ ( .D(n202), .CK(clk), .RB(n172), .Q(buffer[2]) );
  QDFFRBS buffer_reg_7__1_ ( .D(n201), .CK(clk), .RB(n172), .Q(buffer[1]) );
  QDFFRBS buffer_reg_7__0_ ( .D(n199), .CK(clk), .RB(n174), .Q(buffer[0]) );
  QDFFRBS buffer_reg_0__7_ ( .D(n256), .CK(clk), .RB(n169), .Q(buffer[63]) );
  QDFFRBS buffer_reg_4__7_ ( .D(n224), .CK(clk), .RB(n1701), .Q(buffer[31]) );
  QDFFRBS buffer_reg_1__6_ ( .D(n254), .CK(clk), .RB(n169), .Q(buffer[54]) );
  QDFFRBS buffer_reg_1__5_ ( .D(n253), .CK(clk), .RB(n169), .Q(buffer[53]) );
  QDFFRBS buffer_reg_1__4_ ( .D(n252), .CK(clk), .RB(n169), .Q(buffer[52]) );
  QDFFRBS buffer_reg_1__3_ ( .D(n251), .CK(clk), .RB(n169), .Q(buffer[51]) );
  QDFFRBS buffer_reg_1__2_ ( .D(n250), .CK(clk), .RB(n169), .Q(buffer[50]) );
  QDFFRBS buffer_reg_1__1_ ( .D(n249), .CK(clk), .RB(n169), .Q(buffer[49]) );
  QDFFRBS buffer_reg_1__0_ ( .D(n247), .CK(clk), .RB(n1701), .Q(buffer[48]) );
  QDFFRBS buffer_reg_7__7_ ( .D(n200), .CK(clk), .RB(n172), .Q(buffer[7]) );
  QDFFRBS buffer_reg_6__6_ ( .D(n214), .CK(clk), .RB(n171), .Q(buffer[14]) );
  QDFFRBS buffer_reg_6__5_ ( .D(n213), .CK(clk), .RB(n171), .Q(buffer[13]) );
  QDFFRBS buffer_reg_6__4_ ( .D(n212), .CK(clk), .RB(n171), .Q(buffer[12]) );
  QDFFRBS buffer_reg_6__3_ ( .D(n211), .CK(clk), .RB(n171), .Q(buffer[11]) );
  QDFFRBS buffer_reg_6__2_ ( .D(n210), .CK(clk), .RB(n172), .Q(buffer[10]) );
  QDFFRBS buffer_reg_6__1_ ( .D(n209), .CK(clk), .RB(n172), .Q(buffer[9]) );
  QDFFRBS buffer_reg_6__0_ ( .D(n207), .CK(clk), .RB(n172), .Q(buffer[8]) );
  QDFFRBS buffer_reg_2__6_ ( .D(n246), .CK(clk), .RB(n167), .Q(buffer[46]) );
  QDFFRBS buffer_reg_2__5_ ( .D(n245), .CK(clk), .RB(n167), .Q(buffer[45]) );
  QDFFRBS buffer_reg_2__4_ ( .D(n244), .CK(clk), .RB(n167), .Q(buffer[44]) );
  QDFFRBS buffer_reg_2__3_ ( .D(n243), .CK(clk), .RB(n167), .Q(buffer[43]) );
  QDFFRBS buffer_reg_2__2_ ( .D(n242), .CK(clk), .RB(n167), .Q(buffer[42]) );
  QDFFRBS buffer_reg_2__1_ ( .D(n241), .CK(clk), .RB(n167), .Q(buffer[41]) );
  QDFFRBS buffer_reg_2__0_ ( .D(n239), .CK(clk), .RB(n167), .Q(buffer[40]) );
  QDFFRBS buffer_reg_1__7_ ( .D(n248), .CK(clk), .RB(n1701), .Q(buffer[55]) );
  QDFFRBS buffer_reg_4__6_ ( .D(n230), .CK(clk), .RB(n1701), .Q(buffer[30]) );
  QDFFRBS buffer_reg_4__5_ ( .D(n229), .CK(clk), .RB(n1701), .Q(buffer[29]) );
  QDFFRBS buffer_reg_4__4_ ( .D(n228), .CK(clk), .RB(n1701), .Q(buffer[28]) );
  QDFFRBS buffer_reg_4__3_ ( .D(n227), .CK(clk), .RB(n1701), .Q(buffer[27]) );
  QDFFRBS buffer_reg_4__2_ ( .D(n226), .CK(clk), .RB(n1701), .Q(buffer[26]) );
  QDFFRBS buffer_reg_4__1_ ( .D(n225), .CK(clk), .RB(n1701), .Q(buffer[25]) );
  QDFFRBS buffer_reg_4__0_ ( .D(n223), .CK(clk), .RB(n1701), .Q(buffer[24]) );
  QDFFRBS buffer_reg_0__6_ ( .D(n262), .CK(clk), .RB(n168), .Q(buffer[62]) );
  QDFFRBS buffer_reg_0__5_ ( .D(n261), .CK(clk), .RB(n168), .Q(buffer[61]) );
  QDFFRBS buffer_reg_0__4_ ( .D(n260), .CK(clk), .RB(n168), .Q(buffer[60]) );
  QDFFRBS buffer_reg_0__3_ ( .D(n259), .CK(clk), .RB(n169), .Q(buffer[59]) );
  QDFFRBS buffer_reg_0__2_ ( .D(n258), .CK(clk), .RB(n169), .Q(buffer[58]) );
  QDFFRBS buffer_reg_0__1_ ( .D(n257), .CK(clk), .RB(n169), .Q(buffer[57]) );
  QDFFRBS buffer_reg_0__0_ ( .D(n255), .CK(clk), .RB(n169), .Q(buffer[56]) );
  BUF2 U3 ( .I(n287), .O(n158) );
  BUF2 U4 ( .I(n290), .O(n161) );
  BUF2 U5 ( .I(n289), .O(n1601) );
  AN2 U6 ( .I1(n294), .I2(wr_ptr[0]), .O(n295) );
  NR2P U7 ( .I1(n156), .I2(n157), .O(n1) );
  AN2 U8 ( .I1(r_en), .I2(n281), .O(n2) );
  NR2P U9 ( .I1(n157), .I2(N17), .O(n3) );
  NR2P U10 ( .I1(n156), .I2(N16), .O(n4) );
  ND2P U11 ( .I1(n296), .I2(wr_ptr[2]), .O(n286) );
  ND2P U12 ( .I1(n296), .I2(n187), .O(n5) );
  BUF1 U13 ( .I(n292), .O(n163) );
  ND2S U14 ( .I1(n294), .I2(n185), .O(n293) );
  BUF1 U15 ( .I(n288), .O(n159) );
  ND3S U16 ( .I1(wr_ptr[2]), .I2(n186), .I3(n295), .O(n288) );
  ND3S U17 ( .I1(wr_ptr[1]), .I2(n187), .I3(n175), .O(n290) );
  BUF1CK U18 ( .I(n173), .O(n172) );
  BUF1CK U19 ( .I(n173), .O(n171) );
  BUF1CK U20 ( .I(n173), .O(n1701) );
  BUF1CK U21 ( .I(n173), .O(n169) );
  BUF1CK U22 ( .I(n174), .O(n168) );
  BUF1CK U23 ( .I(n174), .O(n167) );
  BUF1CK U24 ( .I(n174), .O(n166) );
  INV1S U25 ( .I(n164), .O(n173) );
  INV1S U26 ( .I(n293), .O(n175) );
  BUF1CK U27 ( .I(rst), .O(n164) );
  INV1S U28 ( .I(n165), .O(n174) );
  BUF1CK U29 ( .I(rst), .O(n165) );
  AN2 U30 ( .I1(w_en), .I2(n285), .O(n294) );
  ND3 U31 ( .I1(n186), .I2(n187), .I3(n175), .O(n292) );
  OAI12HS U32 ( .B1(n296), .B2(n187), .A1(n5), .O(n273) );
  BUF1CK U33 ( .I(n291), .O(n162) );
  ND3 U34 ( .I1(n186), .I2(n187), .I3(n295), .O(n291) );
  OAI12HS U35 ( .B1(n294), .B2(n185), .A1(n293), .O(n271) );
  INV1S U36 ( .I(n285), .O(full) );
  INV1S U37 ( .I(n281), .O(empty) );
  MOAI1S U38 ( .A1(n195), .A2(n286), .B1(buffer[0]), .B2(n286), .O(n199) );
  MOAI1S U39 ( .A1(n188), .A2(n286), .B1(buffer[7]), .B2(n286), .O(n200) );
  MOAI1S U40 ( .A1(n194), .A2(n286), .B1(buffer[1]), .B2(n286), .O(n201) );
  MOAI1S U41 ( .A1(n193), .A2(n286), .B1(buffer[2]), .B2(n286), .O(n202) );
  MOAI1S U42 ( .A1(n192), .A2(n286), .B1(buffer[3]), .B2(n286), .O(n203) );
  MOAI1S U43 ( .A1(n191), .A2(n286), .B1(buffer[4]), .B2(n286), .O(n204) );
  MOAI1S U44 ( .A1(n190), .A2(n286), .B1(buffer[5]), .B2(n286), .O(n205) );
  MOAI1S U45 ( .A1(n189), .A2(n286), .B1(buffer[6]), .B2(n286), .O(n206) );
  AN2 U46 ( .I1(n295), .I2(wr_ptr[1]), .O(n296) );
  MOAI1S U47 ( .A1(n195), .A2(n5), .B1(buffer[32]), .B2(n5), .O(n231) );
  MOAI1S U48 ( .A1(n188), .A2(n5), .B1(buffer[39]), .B2(n5), .O(n232) );
  MOAI1S U49 ( .A1(n194), .A2(n5), .B1(buffer[33]), .B2(n5), .O(n233) );
  MOAI1S U50 ( .A1(n193), .A2(n5), .B1(buffer[34]), .B2(n5), .O(n234) );
  MOAI1S U51 ( .A1(n192), .A2(n5), .B1(buffer[35]), .B2(n5), .O(n235) );
  MOAI1S U52 ( .A1(n191), .A2(n5), .B1(buffer[36]), .B2(n5), .O(n236) );
  MOAI1S U53 ( .A1(n190), .A2(n5), .B1(buffer[37]), .B2(n5), .O(n237) );
  MOAI1S U54 ( .A1(n189), .A2(n5), .B1(buffer[38]), .B2(n5), .O(n238) );
  MOAI1S U55 ( .A1(n195), .A2(n1601), .B1(buffer[24]), .B2(n1601), .O(n223) );
  MOAI1S U56 ( .A1(n188), .A2(n1601), .B1(buffer[31]), .B2(n1601), .O(n224) );
  MOAI1S U57 ( .A1(n194), .A2(n1601), .B1(buffer[25]), .B2(n1601), .O(n225) );
  MOAI1S U58 ( .A1(n193), .A2(n1601), .B1(buffer[26]), .B2(n1601), .O(n226) );
  MOAI1S U59 ( .A1(n192), .A2(n1601), .B1(buffer[27]), .B2(n1601), .O(n227) );
  MOAI1S U60 ( .A1(n191), .A2(n1601), .B1(buffer[28]), .B2(n1601), .O(n228) );
  MOAI1S U61 ( .A1(n190), .A2(n1601), .B1(buffer[29]), .B2(n1601), .O(n229) );
  MOAI1S U62 ( .A1(n189), .A2(n1601), .B1(buffer[30]), .B2(n1601), .O(n230) );
  ND3S U63 ( .I1(wr_ptr[2]), .I2(n186), .I3(n175), .O(n289) );
  MOAI1S U64 ( .A1(n195), .A2(n158), .B1(buffer[8]), .B2(n158), .O(n207) );
  MOAI1S U65 ( .A1(n188), .A2(n158), .B1(buffer[15]), .B2(n158), .O(n208) );
  MOAI1S U66 ( .A1(n194), .A2(n158), .B1(buffer[9]), .B2(n158), .O(n209) );
  MOAI1S U67 ( .A1(n193), .A2(n158), .B1(buffer[10]), .B2(n158), .O(n210) );
  MOAI1S U68 ( .A1(n192), .A2(n158), .B1(buffer[11]), .B2(n158), .O(n211) );
  MOAI1S U69 ( .A1(n191), .A2(n158), .B1(buffer[12]), .B2(n158), .O(n212) );
  MOAI1S U70 ( .A1(n190), .A2(n158), .B1(buffer[13]), .B2(n158), .O(n213) );
  MOAI1S U71 ( .A1(n189), .A2(n158), .B1(buffer[14]), .B2(n158), .O(n214) );
  MOAI1S U72 ( .A1(n195), .A2(n161), .B1(buffer[40]), .B2(n161), .O(n239) );
  MOAI1S U73 ( .A1(n188), .A2(n161), .B1(buffer[47]), .B2(n161), .O(n240) );
  MOAI1S U74 ( .A1(n194), .A2(n161), .B1(buffer[41]), .B2(n161), .O(n241) );
  MOAI1S U75 ( .A1(n193), .A2(n161), .B1(buffer[42]), .B2(n161), .O(n242) );
  MOAI1S U76 ( .A1(n192), .A2(n161), .B1(buffer[43]), .B2(n161), .O(n243) );
  MOAI1S U77 ( .A1(n191), .A2(n161), .B1(buffer[44]), .B2(n161), .O(n244) );
  MOAI1S U78 ( .A1(n190), .A2(n161), .B1(buffer[45]), .B2(n161), .O(n245) );
  MOAI1S U79 ( .A1(n189), .A2(n161), .B1(buffer[46]), .B2(n161), .O(n246) );
  ND3S U80 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n175), .O(n287) );
  MOAI1S U81 ( .A1(n163), .A2(n195), .B1(buffer[56]), .B2(n163), .O(n255) );
  MOAI1S U82 ( .A1(n163), .A2(n188), .B1(buffer[63]), .B2(n163), .O(n256) );
  MOAI1S U83 ( .A1(n163), .A2(n194), .B1(buffer[57]), .B2(n163), .O(n257) );
  MOAI1S U84 ( .A1(n163), .A2(n193), .B1(buffer[58]), .B2(n163), .O(n258) );
  MOAI1S U85 ( .A1(n163), .A2(n192), .B1(buffer[59]), .B2(n163), .O(n259) );
  MOAI1S U86 ( .A1(n163), .A2(n191), .B1(buffer[60]), .B2(n163), .O(n260) );
  MOAI1S U87 ( .A1(n163), .A2(n190), .B1(buffer[61]), .B2(n163), .O(n261) );
  MOAI1S U88 ( .A1(n163), .A2(n189), .B1(buffer[62]), .B2(n163), .O(n262) );
  MOAI1S U89 ( .A1(n195), .A2(n162), .B1(buffer[48]), .B2(n162), .O(n247) );
  MOAI1S U90 ( .A1(n188), .A2(n162), .B1(buffer[55]), .B2(n162), .O(n248) );
  MOAI1S U91 ( .A1(n194), .A2(n162), .B1(buffer[49]), .B2(n162), .O(n249) );
  MOAI1S U92 ( .A1(n193), .A2(n162), .B1(buffer[50]), .B2(n162), .O(n250) );
  MOAI1S U93 ( .A1(n192), .A2(n162), .B1(buffer[51]), .B2(n162), .O(n251) );
  MOAI1S U94 ( .A1(n191), .A2(n162), .B1(buffer[52]), .B2(n162), .O(n252) );
  MOAI1S U95 ( .A1(n190), .A2(n162), .B1(buffer[53]), .B2(n162), .O(n253) );
  MOAI1S U96 ( .A1(n189), .A2(n162), .B1(buffer[54]), .B2(n162), .O(n254) );
  MOAI1S U97 ( .A1(n195), .A2(n159), .B1(buffer[16]), .B2(n159), .O(n215) );
  MOAI1S U98 ( .A1(n188), .A2(n159), .B1(buffer[23]), .B2(n159), .O(n216) );
  MOAI1S U99 ( .A1(n194), .A2(n159), .B1(buffer[17]), .B2(n159), .O(n217) );
  MOAI1S U100 ( .A1(n193), .A2(n159), .B1(buffer[18]), .B2(n159), .O(n218) );
  MOAI1S U101 ( .A1(n192), .A2(n159), .B1(buffer[19]), .B2(n159), .O(n219) );
  MOAI1S U102 ( .A1(n191), .A2(n159), .B1(buffer[20]), .B2(n159), .O(n220) );
  MOAI1S U103 ( .A1(n190), .A2(n159), .B1(buffer[21]), .B2(n159), .O(n221) );
  MOAI1S U104 ( .A1(n189), .A2(n159), .B1(buffer[22]), .B2(n159), .O(n222) );
  XOR2HS U105 ( .I1(wr_ptr[1]), .I2(n295), .O(n272) );
  INV1S U106 ( .I(data_in[0]), .O(n195) );
  INV1S U107 ( .I(data_in[7]), .O(n188) );
  INV1S U108 ( .I(data_in[1]), .O(n194) );
  INV1S U109 ( .I(data_in[2]), .O(n193) );
  INV1S U110 ( .I(data_in[3]), .O(n192) );
  INV1S U111 ( .I(data_in[4]), .O(n191) );
  INV1S U112 ( .I(data_in[5]), .O(n190) );
  INV1S U113 ( .I(data_in[6]), .O(n189) );
  INV1S U115 ( .I(wr_ptr[1]), .O(n186) );
  XOR2HS U116 ( .I1(N16), .I2(n186), .O(n277) );
  AOI13HS U117 ( .B1(n280), .B2(n176), .B3(wr_ptr[0]), .A1(n279), .O(n285) );
  AN4B1S U118 ( .I1(n278), .I2(n185), .I3(n277), .B1(n176), .O(n279) );
  ND3 U119 ( .I1(N16), .I2(n186), .I3(n278), .O(n275) );
  XNR2HS U120 ( .I1(N17), .I2(wr_ptr[2]), .O(n278) );
  MOAI1S U122 ( .A1(N16), .A2(n284), .B1(n282), .B2(N16), .O(n197) );
  ND3 U124 ( .I1(n278), .I2(n277), .I3(n274), .O(n281) );
  XOR2HS U125 ( .I1(n176), .I2(wr_ptr[0]), .O(n274) );
  AO12 U126 ( .B1(N17), .B2(N16), .A1(n282), .O(n284) );
  MOAI1S U127 ( .A1(n157), .A2(n284), .B1(n283), .B2(N17), .O(n198) );
  OR2 U128 ( .I1(n157), .I2(n282), .O(n283) );
  INV1S U129 ( .I(N15), .O(n176) );
  INV1S U130 ( .I(wr_ptr[0]), .O(n185) );
  MOAI1S U131 ( .A1(n184), .A2(n2), .B1(N54), .B2(n2), .O(n270) );
  INV1S U132 ( .I(data_out[1]), .O(n184) );
  MOAI1S U133 ( .A1(n183), .A2(n2), .B1(N53), .B2(n2), .O(n269) );
  INV1S U134 ( .I(data_out[2]), .O(n183) );
  MOAI1S U135 ( .A1(n182), .A2(n2), .B1(N52), .B2(n2), .O(n268) );
  INV1S U136 ( .I(data_out[3]), .O(n182) );
  MOAI1S U137 ( .A1(n181), .A2(n2), .B1(N51), .B2(n2), .O(n267) );
  INV1S U138 ( .I(data_out[4]), .O(n181) );
  MOAI1S U139 ( .A1(n180), .A2(n2), .B1(N50), .B2(n2), .O(n266) );
  INV1S U140 ( .I(data_out[5]), .O(n180) );
  MOAI1S U141 ( .A1(n179), .A2(n2), .B1(N49), .B2(n2), .O(n265) );
  INV1S U142 ( .I(data_out[6]), .O(n179) );
  MOAI1S U143 ( .A1(n177), .A2(n2), .B1(N55), .B2(n2), .O(n263) );
  INV1S U144 ( .I(data_out[0]), .O(n177) );
  INV1S U145 ( .I(N16), .O(n157) );
  MOAI1S U146 ( .A1(n178), .A2(n2), .B1(N48), .B2(n2), .O(n264) );
  INV1S U147 ( .I(data_out[7]), .O(n178) );
  INV1S U148 ( .I(N17), .O(n156) );
  NR2P U149 ( .I1(N16), .I2(N17), .O(n151) );
  XOR2HS U150 ( .I1(N15), .I2(n2), .O(n196) );
  INV1S U151 ( .I(wr_ptr[2]), .O(n187) );
  AOI22S U152 ( .A1(buffer[24]), .A2(n4), .B1(buffer[8]), .B2(n1), .O(n7) );
  AOI22S U153 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n3), .O(n6)
         );
  AN2 U154 ( .I1(n7), .I2(n6), .O(n14) );
  AOI22S U155 ( .A1(buffer[16]), .A2(n4), .B1(buffer[0]), .B2(n1), .O(n10) );
  AOI22S U156 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n3), .O(n8)
         );
  ND2 U157 ( .I1(n10), .I2(n8), .O(n11) );
  MOAI1S U158 ( .A1(N15), .A2(n14), .B1(n11), .B2(N15), .O(N55) );
  AOI22S U159 ( .A1(buffer[25]), .A2(n4), .B1(buffer[9]), .B2(n1), .O(n1700)
         );
  AOI22S U160 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n3), .O(n1600) );
  AN2 U161 ( .I1(n1700), .I2(n1600), .O(n21) );
  AOI22S U162 ( .A1(buffer[17]), .A2(n4), .B1(buffer[1]), .B2(n1), .O(n19) );
  AOI22S U163 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n3), .O(n18)
         );
  ND2 U164 ( .I1(n19), .I2(n18), .O(n20) );
  MOAI1S U165 ( .A1(N15), .A2(n21), .B1(n20), .B2(N15), .O(N54) );
  AOI22S U166 ( .A1(buffer[26]), .A2(n4), .B1(buffer[10]), .B2(n1), .O(n23) );
  AOI22S U167 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n3), .O(n22)
         );
  AN2 U168 ( .I1(n23), .I2(n22), .O(n28) );
  AOI22S U169 ( .A1(buffer[18]), .A2(n4), .B1(buffer[2]), .B2(n1), .O(n26) );
  AOI22S U170 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n3), .O(n24)
         );
  ND2 U171 ( .I1(n26), .I2(n24), .O(n27) );
  MOAI1S U172 ( .A1(N15), .A2(n28), .B1(n27), .B2(N15), .O(N53) );
  AOI22S U173 ( .A1(buffer[27]), .A2(n4), .B1(buffer[11]), .B2(n1), .O(n30) );
  AOI22S U174 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n3), .O(n29)
         );
  AN2 U175 ( .I1(n30), .I2(n29), .O(n34) );
  AOI22S U176 ( .A1(buffer[19]), .A2(n4), .B1(buffer[3]), .B2(n1), .O(n32) );
  AOI22S U177 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n3), .O(n31)
         );
  ND2 U178 ( .I1(n32), .I2(n31), .O(n33) );
  MOAI1S U179 ( .A1(N15), .A2(n34), .B1(n33), .B2(N15), .O(N52) );
  AOI22S U180 ( .A1(buffer[28]), .A2(n4), .B1(buffer[12]), .B2(n1), .O(n43) );
  AOI22S U181 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n3), .O(n35)
         );
  AN2 U182 ( .I1(n43), .I2(n35), .O(n136) );
  AOI22S U183 ( .A1(buffer[20]), .A2(n4), .B1(buffer[4]), .B2(n1), .O(n67) );
  AOI22S U184 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n3), .O(n490)
         );
  ND2 U185 ( .I1(n67), .I2(n490), .O(n135) );
  MOAI1S U186 ( .A1(N15), .A2(n136), .B1(n135), .B2(N15), .O(N51) );
  AOI22S U187 ( .A1(buffer[29]), .A2(n4), .B1(buffer[13]), .B2(n1), .O(n138)
         );
  AOI22S U188 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n3), .O(n137)
         );
  AN2 U189 ( .I1(n138), .I2(n137), .O(n142) );
  AOI22S U190 ( .A1(buffer[21]), .A2(n4), .B1(buffer[5]), .B2(n1), .O(n140) );
  AOI22S U191 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n3), .O(n139)
         );
  ND2 U192 ( .I1(n140), .I2(n139), .O(n141) );
  MOAI1S U193 ( .A1(N15), .A2(n142), .B1(n141), .B2(N15), .O(N50) );
  AOI22S U194 ( .A1(buffer[30]), .A2(n4), .B1(buffer[14]), .B2(n1), .O(n144)
         );
  AOI22S U195 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n3), .O(n143)
         );
  AN2 U196 ( .I1(n144), .I2(n143), .O(n148) );
  AOI22S U197 ( .A1(buffer[22]), .A2(n4), .B1(buffer[6]), .B2(n1), .O(n146) );
  AOI22S U198 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n3), .O(n145)
         );
  ND2 U199 ( .I1(n146), .I2(n145), .O(n147) );
  MOAI1S U200 ( .A1(N15), .A2(n148), .B1(n147), .B2(N15), .O(N49) );
  AOI22S U201 ( .A1(buffer[23]), .A2(n4), .B1(buffer[7]), .B2(n1), .O(n150) );
  AOI22S U202 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n3), .O(n149)
         );
  AN2 U203 ( .I1(n150), .I2(n149), .O(n155) );
  AOI22S U204 ( .A1(buffer[31]), .A2(n4), .B1(buffer[15]), .B2(n1), .O(n153)
         );
  AOI22S U205 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n3), .O(n152)
         );
  ND2 U206 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U207 ( .A1(n155), .A2(n176), .B1(n154), .B2(n176), .O(N48) );
endmodule


module sync_fifo_4 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n11, n14, n1600, n1700, n18, n19, n20, n21, n22,
         n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n43, n490,
         n67, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n1601, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n1701, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  ND2 U114 ( .I1(n2), .I2(N15), .O(n284) );
  ND2 U121 ( .I1(n278), .I2(n277), .O(n282) );
  OR3 U123 ( .I1(n280), .I2(N16), .I3(n188), .O(n278) );
  QDFFRBN buffer_reg_3__6_ ( .D(n240), .CK(clk), .RB(n168), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n239), .CK(clk), .RB(n168), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n238), .CK(clk), .RB(n168), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n237), .CK(clk), .RB(n168), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n236), .CK(clk), .RB(n168), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n235), .CK(clk), .RB(n168), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n233), .CK(clk), .RB(n168), .Q(buffer[32]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n224), .CK(clk), .RB(n1701), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n223), .CK(clk), .RB(n171), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n222), .CK(clk), .RB(n171), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n221), .CK(clk), .RB(n171), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n220), .CK(clk), .RB(n171), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n219), .CK(clk), .RB(n171), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n217), .CK(clk), .RB(n171), .Q(buffer[16]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n234), .CK(clk), .RB(n168), .Q(buffer[39]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n218), .CK(clk), .RB(n171), .Q(buffer[23]) );
  QDFFRBN data_out_reg_7_ ( .D(n266), .CK(clk), .RB(n166), .Q(data_out[7]) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n273), .CK(clk), .RB(n167), .Q(wr_ptr[0]) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n198), .CK(clk), .RB(n166), .Q(N15) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n199), .CK(clk), .RB(n166), .Q(N16) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n275), .CK(clk), .RB(n167), .Q(wr_ptr[2]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n200), .CK(clk), .RB(n166), .Q(N17) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n274), .CK(clk), .RB(n167), .Q(wr_ptr[1]) );
  QDFFRBN data_out_reg_6_ ( .D(n267), .CK(clk), .RB(n166), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n268), .CK(clk), .RB(n166), .Q(data_out[5]) );
  QDFFRBN data_out_reg_3_ ( .D(n270), .CK(clk), .RB(n166), .Q(data_out[3]) );
  QDFFRBN data_out_reg_4_ ( .D(n269), .CK(clk), .RB(n166), .Q(data_out[4]) );
  QDFFRBN data_out_reg_0_ ( .D(n265), .CK(clk), .RB(n166), .Q(data_out[0]) );
  QDFFRBN data_out_reg_1_ ( .D(n272), .CK(clk), .RB(n166), .Q(data_out[1]) );
  QDFFRBN data_out_reg_2_ ( .D(n271), .CK(clk), .RB(n166), .Q(data_out[2]) );
  QDFFRBS buffer_reg_2__7_ ( .D(n242), .CK(clk), .RB(n167), .Q(buffer[47]) );
  QDFFRBS buffer_reg_6__7_ ( .D(n210), .CK(clk), .RB(n172), .Q(buffer[15]) );
  QDFFRBS buffer_reg_7__6_ ( .D(n208), .CK(clk), .RB(n172), .Q(buffer[6]) );
  QDFFRBS buffer_reg_7__5_ ( .D(n207), .CK(clk), .RB(n172), .Q(buffer[5]) );
  QDFFRBS buffer_reg_7__4_ ( .D(n206), .CK(clk), .RB(n172), .Q(buffer[4]) );
  QDFFRBS buffer_reg_7__3_ ( .D(n205), .CK(clk), .RB(n172), .Q(buffer[3]) );
  QDFFRBS buffer_reg_7__2_ ( .D(n204), .CK(clk), .RB(n172), .Q(buffer[2]) );
  QDFFRBS buffer_reg_7__1_ ( .D(n203), .CK(clk), .RB(n172), .Q(buffer[1]) );
  QDFFRBS buffer_reg_7__0_ ( .D(n201), .CK(clk), .RB(n176), .Q(buffer[0]) );
  QDFFRBS buffer_reg_0__7_ ( .D(n258), .CK(clk), .RB(n169), .Q(buffer[63]) );
  QDFFRBS buffer_reg_4__7_ ( .D(n226), .CK(clk), .RB(n1701), .Q(buffer[31]) );
  QDFFRBS buffer_reg_1__6_ ( .D(n256), .CK(clk), .RB(n169), .Q(buffer[54]) );
  QDFFRBS buffer_reg_1__5_ ( .D(n255), .CK(clk), .RB(n169), .Q(buffer[53]) );
  QDFFRBS buffer_reg_1__4_ ( .D(n254), .CK(clk), .RB(n169), .Q(buffer[52]) );
  QDFFRBS buffer_reg_1__3_ ( .D(n253), .CK(clk), .RB(n169), .Q(buffer[51]) );
  QDFFRBS buffer_reg_1__2_ ( .D(n252), .CK(clk), .RB(n169), .Q(buffer[50]) );
  QDFFRBS buffer_reg_1__1_ ( .D(n251), .CK(clk), .RB(n169), .Q(buffer[49]) );
  QDFFRBS buffer_reg_1__0_ ( .D(n249), .CK(clk), .RB(n1701), .Q(buffer[48]) );
  QDFFRBS buffer_reg_7__7_ ( .D(n202), .CK(clk), .RB(n172), .Q(buffer[7]) );
  QDFFRBS buffer_reg_6__6_ ( .D(n216), .CK(clk), .RB(n171), .Q(buffer[14]) );
  QDFFRBS buffer_reg_6__5_ ( .D(n215), .CK(clk), .RB(n171), .Q(buffer[13]) );
  QDFFRBS buffer_reg_6__4_ ( .D(n214), .CK(clk), .RB(n171), .Q(buffer[12]) );
  QDFFRBS buffer_reg_6__3_ ( .D(n213), .CK(clk), .RB(n171), .Q(buffer[11]) );
  QDFFRBS buffer_reg_6__2_ ( .D(n212), .CK(clk), .RB(n172), .Q(buffer[10]) );
  QDFFRBS buffer_reg_6__1_ ( .D(n211), .CK(clk), .RB(n172), .Q(buffer[9]) );
  QDFFRBS buffer_reg_6__0_ ( .D(n209), .CK(clk), .RB(n172), .Q(buffer[8]) );
  QDFFRBS buffer_reg_2__6_ ( .D(n248), .CK(clk), .RB(n167), .Q(buffer[46]) );
  QDFFRBS buffer_reg_2__5_ ( .D(n247), .CK(clk), .RB(n167), .Q(buffer[45]) );
  QDFFRBS buffer_reg_2__4_ ( .D(n246), .CK(clk), .RB(n167), .Q(buffer[44]) );
  QDFFRBS buffer_reg_2__3_ ( .D(n245), .CK(clk), .RB(n167), .Q(buffer[43]) );
  QDFFRBS buffer_reg_2__2_ ( .D(n244), .CK(clk), .RB(n167), .Q(buffer[42]) );
  QDFFRBS buffer_reg_2__1_ ( .D(n243), .CK(clk), .RB(n167), .Q(buffer[41]) );
  QDFFRBS buffer_reg_2__0_ ( .D(n241), .CK(clk), .RB(n167), .Q(buffer[40]) );
  QDFFRBS buffer_reg_1__7_ ( .D(n250), .CK(clk), .RB(n1701), .Q(buffer[55]) );
  QDFFRBS buffer_reg_4__6_ ( .D(n232), .CK(clk), .RB(n1701), .Q(buffer[30]) );
  QDFFRBS buffer_reg_4__5_ ( .D(n231), .CK(clk), .RB(n1701), .Q(buffer[29]) );
  QDFFRBS buffer_reg_4__4_ ( .D(n230), .CK(clk), .RB(n1701), .Q(buffer[28]) );
  QDFFRBS buffer_reg_4__3_ ( .D(n229), .CK(clk), .RB(n1701), .Q(buffer[27]) );
  QDFFRBS buffer_reg_4__2_ ( .D(n228), .CK(clk), .RB(n1701), .Q(buffer[26]) );
  QDFFRBS buffer_reg_4__1_ ( .D(n227), .CK(clk), .RB(n1701), .Q(buffer[25]) );
  QDFFRBS buffer_reg_4__0_ ( .D(n225), .CK(clk), .RB(n1701), .Q(buffer[24]) );
  QDFFRBS buffer_reg_0__6_ ( .D(n264), .CK(clk), .RB(n168), .Q(buffer[62]) );
  QDFFRBS buffer_reg_0__5_ ( .D(n263), .CK(clk), .RB(n168), .Q(buffer[61]) );
  QDFFRBS buffer_reg_0__4_ ( .D(n262), .CK(clk), .RB(n168), .Q(buffer[60]) );
  QDFFRBS buffer_reg_0__3_ ( .D(n261), .CK(clk), .RB(n169), .Q(buffer[59]) );
  QDFFRBS buffer_reg_0__2_ ( .D(n260), .CK(clk), .RB(n169), .Q(buffer[58]) );
  QDFFRBS buffer_reg_0__1_ ( .D(n259), .CK(clk), .RB(n169), .Q(buffer[57]) );
  QDFFRBS buffer_reg_0__0_ ( .D(n257), .CK(clk), .RB(n169), .Q(buffer[56]) );
  BUF2 U3 ( .I(n289), .O(n158) );
  BUF2 U4 ( .I(n292), .O(n161) );
  BUF2 U5 ( .I(n291), .O(n1601) );
  AN2 U6 ( .I1(n296), .I2(wr_ptr[0]), .O(n297) );
  NR2P U7 ( .I1(n156), .I2(n157), .O(n1) );
  AN2 U8 ( .I1(r_en), .I2(n283), .O(n2) );
  NR2P U9 ( .I1(n157), .I2(N17), .O(n3) );
  NR2P U10 ( .I1(n156), .I2(N16), .O(n4) );
  ND2P U11 ( .I1(n298), .I2(wr_ptr[2]), .O(n288) );
  ND2P U12 ( .I1(n298), .I2(n189), .O(n5) );
  BUF1 U13 ( .I(n294), .O(n163) );
  ND2S U14 ( .I1(n296), .I2(n187), .O(n295) );
  BUF1 U15 ( .I(n290), .O(n159) );
  ND3S U16 ( .I1(wr_ptr[2]), .I2(n188), .I3(n297), .O(n290) );
  ND3S U17 ( .I1(wr_ptr[1]), .I2(n189), .I3(n177), .O(n292) );
  BUF1CK U18 ( .I(n173), .O(n172) );
  BUF1CK U19 ( .I(n174), .O(n171) );
  BUF1CK U20 ( .I(n174), .O(n1701) );
  BUF1CK U21 ( .I(n175), .O(n169) );
  BUF1CK U22 ( .I(n175), .O(n168) );
  BUF1CK U23 ( .I(n176), .O(n167) );
  BUF1CK U24 ( .I(n176), .O(n166) );
  INV1S U25 ( .I(n164), .O(n173) );
  INV1S U26 ( .I(n164), .O(n174) );
  INV1S U27 ( .I(n164), .O(n175) );
  INV1S U28 ( .I(n295), .O(n177) );
  BUF1CK U29 ( .I(rst), .O(n164) );
  INV1S U30 ( .I(n165), .O(n176) );
  BUF1CK U31 ( .I(rst), .O(n165) );
  AN2 U32 ( .I1(w_en), .I2(n287), .O(n296) );
  ND3 U33 ( .I1(n188), .I2(n189), .I3(n177), .O(n294) );
  OAI12HS U34 ( .B1(n298), .B2(n189), .A1(n5), .O(n275) );
  BUF1CK U35 ( .I(n293), .O(n162) );
  ND3 U36 ( .I1(n188), .I2(n189), .I3(n297), .O(n293) );
  OAI12HS U37 ( .B1(n296), .B2(n187), .A1(n295), .O(n273) );
  INV1S U38 ( .I(n287), .O(full) );
  INV1S U39 ( .I(n283), .O(empty) );
  MOAI1S U40 ( .A1(n197), .A2(n288), .B1(buffer[0]), .B2(n288), .O(n201) );
  MOAI1S U41 ( .A1(n190), .A2(n288), .B1(buffer[7]), .B2(n288), .O(n202) );
  MOAI1S U42 ( .A1(n196), .A2(n288), .B1(buffer[1]), .B2(n288), .O(n203) );
  MOAI1S U43 ( .A1(n195), .A2(n288), .B1(buffer[2]), .B2(n288), .O(n204) );
  MOAI1S U44 ( .A1(n194), .A2(n288), .B1(buffer[3]), .B2(n288), .O(n205) );
  MOAI1S U45 ( .A1(n193), .A2(n288), .B1(buffer[4]), .B2(n288), .O(n206) );
  MOAI1S U46 ( .A1(n192), .A2(n288), .B1(buffer[5]), .B2(n288), .O(n207) );
  MOAI1S U47 ( .A1(n191), .A2(n288), .B1(buffer[6]), .B2(n288), .O(n208) );
  AN2 U48 ( .I1(n297), .I2(wr_ptr[1]), .O(n298) );
  MOAI1S U49 ( .A1(n197), .A2(n5), .B1(buffer[32]), .B2(n5), .O(n233) );
  MOAI1S U50 ( .A1(n190), .A2(n5), .B1(buffer[39]), .B2(n5), .O(n234) );
  MOAI1S U51 ( .A1(n196), .A2(n5), .B1(buffer[33]), .B2(n5), .O(n235) );
  MOAI1S U52 ( .A1(n195), .A2(n5), .B1(buffer[34]), .B2(n5), .O(n236) );
  MOAI1S U53 ( .A1(n194), .A2(n5), .B1(buffer[35]), .B2(n5), .O(n237) );
  MOAI1S U54 ( .A1(n193), .A2(n5), .B1(buffer[36]), .B2(n5), .O(n238) );
  MOAI1S U55 ( .A1(n192), .A2(n5), .B1(buffer[37]), .B2(n5), .O(n239) );
  MOAI1S U56 ( .A1(n191), .A2(n5), .B1(buffer[38]), .B2(n5), .O(n240) );
  MOAI1S U57 ( .A1(n197), .A2(n1601), .B1(buffer[24]), .B2(n1601), .O(n225) );
  MOAI1S U58 ( .A1(n190), .A2(n1601), .B1(buffer[31]), .B2(n1601), .O(n226) );
  MOAI1S U59 ( .A1(n196), .A2(n1601), .B1(buffer[25]), .B2(n1601), .O(n227) );
  MOAI1S U60 ( .A1(n195), .A2(n1601), .B1(buffer[26]), .B2(n1601), .O(n228) );
  MOAI1S U61 ( .A1(n194), .A2(n1601), .B1(buffer[27]), .B2(n1601), .O(n229) );
  MOAI1S U62 ( .A1(n193), .A2(n1601), .B1(buffer[28]), .B2(n1601), .O(n230) );
  MOAI1S U63 ( .A1(n192), .A2(n1601), .B1(buffer[29]), .B2(n1601), .O(n231) );
  MOAI1S U64 ( .A1(n191), .A2(n1601), .B1(buffer[30]), .B2(n1601), .O(n232) );
  ND3S U65 ( .I1(wr_ptr[2]), .I2(n188), .I3(n177), .O(n291) );
  MOAI1S U66 ( .A1(n197), .A2(n158), .B1(buffer[8]), .B2(n158), .O(n209) );
  MOAI1S U67 ( .A1(n190), .A2(n158), .B1(buffer[15]), .B2(n158), .O(n210) );
  MOAI1S U68 ( .A1(n196), .A2(n158), .B1(buffer[9]), .B2(n158), .O(n211) );
  MOAI1S U69 ( .A1(n195), .A2(n158), .B1(buffer[10]), .B2(n158), .O(n212) );
  MOAI1S U70 ( .A1(n194), .A2(n158), .B1(buffer[11]), .B2(n158), .O(n213) );
  MOAI1S U71 ( .A1(n193), .A2(n158), .B1(buffer[12]), .B2(n158), .O(n214) );
  MOAI1S U72 ( .A1(n192), .A2(n158), .B1(buffer[13]), .B2(n158), .O(n215) );
  MOAI1S U73 ( .A1(n191), .A2(n158), .B1(buffer[14]), .B2(n158), .O(n216) );
  MOAI1S U74 ( .A1(n197), .A2(n161), .B1(buffer[40]), .B2(n161), .O(n241) );
  MOAI1S U75 ( .A1(n190), .A2(n161), .B1(buffer[47]), .B2(n161), .O(n242) );
  MOAI1S U76 ( .A1(n196), .A2(n161), .B1(buffer[41]), .B2(n161), .O(n243) );
  MOAI1S U77 ( .A1(n195), .A2(n161), .B1(buffer[42]), .B2(n161), .O(n244) );
  MOAI1S U78 ( .A1(n194), .A2(n161), .B1(buffer[43]), .B2(n161), .O(n245) );
  MOAI1S U79 ( .A1(n193), .A2(n161), .B1(buffer[44]), .B2(n161), .O(n246) );
  MOAI1S U80 ( .A1(n192), .A2(n161), .B1(buffer[45]), .B2(n161), .O(n247) );
  MOAI1S U81 ( .A1(n191), .A2(n161), .B1(buffer[46]), .B2(n161), .O(n248) );
  ND3S U82 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n177), .O(n289) );
  MOAI1S U83 ( .A1(n163), .A2(n197), .B1(buffer[56]), .B2(n163), .O(n257) );
  MOAI1S U84 ( .A1(n163), .A2(n190), .B1(buffer[63]), .B2(n163), .O(n258) );
  MOAI1S U85 ( .A1(n163), .A2(n196), .B1(buffer[57]), .B2(n163), .O(n259) );
  MOAI1S U86 ( .A1(n163), .A2(n195), .B1(buffer[58]), .B2(n163), .O(n260) );
  MOAI1S U87 ( .A1(n163), .A2(n194), .B1(buffer[59]), .B2(n163), .O(n261) );
  MOAI1S U88 ( .A1(n163), .A2(n193), .B1(buffer[60]), .B2(n163), .O(n262) );
  MOAI1S U89 ( .A1(n163), .A2(n192), .B1(buffer[61]), .B2(n163), .O(n263) );
  MOAI1S U90 ( .A1(n163), .A2(n191), .B1(buffer[62]), .B2(n163), .O(n264) );
  MOAI1S U91 ( .A1(n197), .A2(n162), .B1(buffer[48]), .B2(n162), .O(n249) );
  MOAI1S U92 ( .A1(n190), .A2(n162), .B1(buffer[55]), .B2(n162), .O(n250) );
  MOAI1S U93 ( .A1(n196), .A2(n162), .B1(buffer[49]), .B2(n162), .O(n251) );
  MOAI1S U94 ( .A1(n195), .A2(n162), .B1(buffer[50]), .B2(n162), .O(n252) );
  MOAI1S U95 ( .A1(n194), .A2(n162), .B1(buffer[51]), .B2(n162), .O(n253) );
  MOAI1S U96 ( .A1(n193), .A2(n162), .B1(buffer[52]), .B2(n162), .O(n254) );
  MOAI1S U97 ( .A1(n192), .A2(n162), .B1(buffer[53]), .B2(n162), .O(n255) );
  MOAI1S U98 ( .A1(n191), .A2(n162), .B1(buffer[54]), .B2(n162), .O(n256) );
  MOAI1S U99 ( .A1(n197), .A2(n159), .B1(buffer[16]), .B2(n159), .O(n217) );
  MOAI1S U100 ( .A1(n190), .A2(n159), .B1(buffer[23]), .B2(n159), .O(n218) );
  MOAI1S U101 ( .A1(n196), .A2(n159), .B1(buffer[17]), .B2(n159), .O(n219) );
  MOAI1S U102 ( .A1(n195), .A2(n159), .B1(buffer[18]), .B2(n159), .O(n220) );
  MOAI1S U103 ( .A1(n194), .A2(n159), .B1(buffer[19]), .B2(n159), .O(n221) );
  MOAI1S U104 ( .A1(n193), .A2(n159), .B1(buffer[20]), .B2(n159), .O(n222) );
  MOAI1S U105 ( .A1(n192), .A2(n159), .B1(buffer[21]), .B2(n159), .O(n223) );
  MOAI1S U106 ( .A1(n191), .A2(n159), .B1(buffer[22]), .B2(n159), .O(n224) );
  XOR2HS U107 ( .I1(wr_ptr[1]), .I2(n297), .O(n274) );
  INV1S U108 ( .I(data_in[0]), .O(n197) );
  INV1S U109 ( .I(data_in[7]), .O(n190) );
  INV1S U110 ( .I(data_in[1]), .O(n196) );
  INV1S U111 ( .I(data_in[2]), .O(n195) );
  INV1S U112 ( .I(data_in[3]), .O(n194) );
  INV1S U113 ( .I(data_in[4]), .O(n193) );
  INV1S U115 ( .I(data_in[5]), .O(n192) );
  INV1S U116 ( .I(data_in[6]), .O(n191) );
  INV1S U117 ( .I(wr_ptr[1]), .O(n188) );
  XOR2HS U118 ( .I1(N16), .I2(n188), .O(n279) );
  AOI13HS U119 ( .B1(n282), .B2(n178), .B3(wr_ptr[0]), .A1(n281), .O(n287) );
  AN4B1S U120 ( .I1(n280), .I2(n187), .I3(n279), .B1(n178), .O(n281) );
  ND3 U122 ( .I1(N16), .I2(n188), .I3(n280), .O(n277) );
  XNR2HS U124 ( .I1(N17), .I2(wr_ptr[2]), .O(n280) );
  MOAI1S U125 ( .A1(N16), .A2(n286), .B1(n284), .B2(N16), .O(n199) );
  ND3 U126 ( .I1(n280), .I2(n279), .I3(n276), .O(n283) );
  XOR2HS U127 ( .I1(n178), .I2(wr_ptr[0]), .O(n276) );
  AO12 U128 ( .B1(N17), .B2(N16), .A1(n284), .O(n286) );
  MOAI1S U129 ( .A1(n157), .A2(n286), .B1(n285), .B2(N17), .O(n200) );
  OR2 U130 ( .I1(n157), .I2(n284), .O(n285) );
  INV1S U131 ( .I(N15), .O(n178) );
  INV1S U132 ( .I(wr_ptr[0]), .O(n187) );
  MOAI1S U133 ( .A1(n186), .A2(n2), .B1(N54), .B2(n2), .O(n272) );
  INV1S U134 ( .I(data_out[1]), .O(n186) );
  MOAI1S U135 ( .A1(n185), .A2(n2), .B1(N53), .B2(n2), .O(n271) );
  INV1S U136 ( .I(data_out[2]), .O(n185) );
  MOAI1S U137 ( .A1(n184), .A2(n2), .B1(N52), .B2(n2), .O(n270) );
  INV1S U138 ( .I(data_out[3]), .O(n184) );
  MOAI1S U139 ( .A1(n183), .A2(n2), .B1(N51), .B2(n2), .O(n269) );
  INV1S U140 ( .I(data_out[4]), .O(n183) );
  MOAI1S U141 ( .A1(n182), .A2(n2), .B1(N50), .B2(n2), .O(n268) );
  INV1S U142 ( .I(data_out[5]), .O(n182) );
  MOAI1S U143 ( .A1(n181), .A2(n2), .B1(N49), .B2(n2), .O(n267) );
  INV1S U144 ( .I(data_out[6]), .O(n181) );
  MOAI1S U145 ( .A1(n179), .A2(n2), .B1(N55), .B2(n2), .O(n265) );
  INV1S U146 ( .I(data_out[0]), .O(n179) );
  INV1S U147 ( .I(N16), .O(n157) );
  MOAI1S U148 ( .A1(n180), .A2(n2), .B1(N48), .B2(n2), .O(n266) );
  INV1S U149 ( .I(data_out[7]), .O(n180) );
  INV1S U150 ( .I(N17), .O(n156) );
  NR2P U151 ( .I1(N16), .I2(N17), .O(n151) );
  XOR2HS U152 ( .I1(N15), .I2(n2), .O(n198) );
  INV1S U153 ( .I(wr_ptr[2]), .O(n189) );
  AOI22S U154 ( .A1(buffer[24]), .A2(n4), .B1(buffer[8]), .B2(n1), .O(n7) );
  AOI22S U155 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n3), .O(n6)
         );
  AN2 U156 ( .I1(n7), .I2(n6), .O(n14) );
  AOI22S U157 ( .A1(buffer[16]), .A2(n4), .B1(buffer[0]), .B2(n1), .O(n10) );
  AOI22S U158 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n3), .O(n8)
         );
  ND2 U159 ( .I1(n10), .I2(n8), .O(n11) );
  MOAI1S U160 ( .A1(N15), .A2(n14), .B1(n11), .B2(N15), .O(N55) );
  AOI22S U161 ( .A1(buffer[25]), .A2(n4), .B1(buffer[9]), .B2(n1), .O(n1700)
         );
  AOI22S U162 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n3), .O(n1600) );
  AN2 U163 ( .I1(n1700), .I2(n1600), .O(n21) );
  AOI22S U164 ( .A1(buffer[17]), .A2(n4), .B1(buffer[1]), .B2(n1), .O(n19) );
  AOI22S U165 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n3), .O(n18)
         );
  ND2 U166 ( .I1(n19), .I2(n18), .O(n20) );
  MOAI1S U167 ( .A1(N15), .A2(n21), .B1(n20), .B2(N15), .O(N54) );
  AOI22S U168 ( .A1(buffer[26]), .A2(n4), .B1(buffer[10]), .B2(n1), .O(n23) );
  AOI22S U169 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n3), .O(n22)
         );
  AN2 U170 ( .I1(n23), .I2(n22), .O(n28) );
  AOI22S U171 ( .A1(buffer[18]), .A2(n4), .B1(buffer[2]), .B2(n1), .O(n26) );
  AOI22S U172 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n3), .O(n24)
         );
  ND2 U173 ( .I1(n26), .I2(n24), .O(n27) );
  MOAI1S U174 ( .A1(N15), .A2(n28), .B1(n27), .B2(N15), .O(N53) );
  AOI22S U175 ( .A1(buffer[27]), .A2(n4), .B1(buffer[11]), .B2(n1), .O(n30) );
  AOI22S U176 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n3), .O(n29)
         );
  AN2 U177 ( .I1(n30), .I2(n29), .O(n34) );
  AOI22S U178 ( .A1(buffer[19]), .A2(n4), .B1(buffer[3]), .B2(n1), .O(n32) );
  AOI22S U179 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n3), .O(n31)
         );
  ND2 U180 ( .I1(n32), .I2(n31), .O(n33) );
  MOAI1S U181 ( .A1(N15), .A2(n34), .B1(n33), .B2(N15), .O(N52) );
  AOI22S U182 ( .A1(buffer[28]), .A2(n4), .B1(buffer[12]), .B2(n1), .O(n43) );
  AOI22S U183 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n3), .O(n35)
         );
  AN2 U184 ( .I1(n43), .I2(n35), .O(n136) );
  AOI22S U185 ( .A1(buffer[20]), .A2(n4), .B1(buffer[4]), .B2(n1), .O(n67) );
  AOI22S U186 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n3), .O(n490)
         );
  ND2 U187 ( .I1(n67), .I2(n490), .O(n135) );
  MOAI1S U188 ( .A1(N15), .A2(n136), .B1(n135), .B2(N15), .O(N51) );
  AOI22S U189 ( .A1(buffer[29]), .A2(n4), .B1(buffer[13]), .B2(n1), .O(n138)
         );
  AOI22S U190 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n3), .O(n137)
         );
  AN2 U191 ( .I1(n138), .I2(n137), .O(n142) );
  AOI22S U192 ( .A1(buffer[21]), .A2(n4), .B1(buffer[5]), .B2(n1), .O(n140) );
  AOI22S U193 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n3), .O(n139)
         );
  ND2 U194 ( .I1(n140), .I2(n139), .O(n141) );
  MOAI1S U195 ( .A1(N15), .A2(n142), .B1(n141), .B2(N15), .O(N50) );
  AOI22S U196 ( .A1(buffer[30]), .A2(n4), .B1(buffer[14]), .B2(n1), .O(n144)
         );
  AOI22S U197 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n3), .O(n143)
         );
  AN2 U198 ( .I1(n144), .I2(n143), .O(n148) );
  AOI22S U199 ( .A1(buffer[22]), .A2(n4), .B1(buffer[6]), .B2(n1), .O(n146) );
  AOI22S U200 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n3), .O(n145)
         );
  ND2 U201 ( .I1(n146), .I2(n145), .O(n147) );
  MOAI1S U202 ( .A1(N15), .A2(n148), .B1(n147), .B2(N15), .O(N49) );
  AOI22S U203 ( .A1(buffer[23]), .A2(n4), .B1(buffer[7]), .B2(n1), .O(n150) );
  AOI22S U204 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n3), .O(n149)
         );
  AN2 U205 ( .I1(n150), .I2(n149), .O(n155) );
  AOI22S U206 ( .A1(buffer[31]), .A2(n4), .B1(buffer[15]), .B2(n1), .O(n153)
         );
  AOI22S U207 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n3), .O(n152)
         );
  ND2 U208 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U209 ( .A1(n155), .A2(n178), .B1(n154), .B2(n178), .O(N48) );
endmodule


module sync_fifo_3 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n11, n14, n1600, n1700, n18, n19, n20, n21, n22,
         n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n43, n490,
         n67, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n1601, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n1701, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  ND2 U114 ( .I1(n2), .I2(N15), .O(n284) );
  ND2 U121 ( .I1(n278), .I2(n277), .O(n282) );
  OR3 U123 ( .I1(n280), .I2(N16), .I3(n188), .O(n278) );
  QDFFRBN buffer_reg_3__6_ ( .D(n240), .CK(clk), .RB(n168), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n239), .CK(clk), .RB(n168), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n238), .CK(clk), .RB(n168), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n237), .CK(clk), .RB(n168), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n236), .CK(clk), .RB(n168), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n235), .CK(clk), .RB(n168), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n233), .CK(clk), .RB(n168), .Q(buffer[32]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n224), .CK(clk), .RB(n1701), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n223), .CK(clk), .RB(n171), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n222), .CK(clk), .RB(n171), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n221), .CK(clk), .RB(n171), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n220), .CK(clk), .RB(n171), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n219), .CK(clk), .RB(n171), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n217), .CK(clk), .RB(n171), .Q(buffer[16]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n234), .CK(clk), .RB(n168), .Q(buffer[39]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n218), .CK(clk), .RB(n171), .Q(buffer[23]) );
  QDFFRBN data_out_reg_7_ ( .D(n266), .CK(clk), .RB(n166), .Q(data_out[7]) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n273), .CK(clk), .RB(n167), .Q(wr_ptr[0]) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n198), .CK(clk), .RB(n166), .Q(N15) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n199), .CK(clk), .RB(n166), .Q(N16) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n275), .CK(clk), .RB(n167), .Q(wr_ptr[2]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n200), .CK(clk), .RB(n166), .Q(N17) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n274), .CK(clk), .RB(n167), .Q(wr_ptr[1]) );
  QDFFRBN data_out_reg_6_ ( .D(n267), .CK(clk), .RB(n166), .Q(data_out[6]) );
  QDFFRBN data_out_reg_3_ ( .D(n270), .CK(clk), .RB(n166), .Q(data_out[3]) );
  QDFFRBN data_out_reg_5_ ( .D(n268), .CK(clk), .RB(n166), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n269), .CK(clk), .RB(n166), .Q(data_out[4]) );
  QDFFRBN data_out_reg_2_ ( .D(n271), .CK(clk), .RB(n166), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n272), .CK(clk), .RB(n166), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n265), .CK(clk), .RB(n166), .Q(data_out[0]) );
  QDFFRBS buffer_reg_2__7_ ( .D(n242), .CK(clk), .RB(n167), .Q(buffer[47]) );
  QDFFRBS buffer_reg_6__7_ ( .D(n210), .CK(clk), .RB(n172), .Q(buffer[15]) );
  QDFFRBS buffer_reg_7__6_ ( .D(n208), .CK(clk), .RB(n172), .Q(buffer[6]) );
  QDFFRBS buffer_reg_7__5_ ( .D(n207), .CK(clk), .RB(n172), .Q(buffer[5]) );
  QDFFRBS buffer_reg_7__4_ ( .D(n206), .CK(clk), .RB(n172), .Q(buffer[4]) );
  QDFFRBS buffer_reg_7__3_ ( .D(n205), .CK(clk), .RB(n172), .Q(buffer[3]) );
  QDFFRBS buffer_reg_7__2_ ( .D(n204), .CK(clk), .RB(n172), .Q(buffer[2]) );
  QDFFRBS buffer_reg_7__1_ ( .D(n203), .CK(clk), .RB(n172), .Q(buffer[1]) );
  QDFFRBS buffer_reg_7__0_ ( .D(n201), .CK(clk), .RB(n176), .Q(buffer[0]) );
  QDFFRBS buffer_reg_0__7_ ( .D(n258), .CK(clk), .RB(n169), .Q(buffer[63]) );
  QDFFRBS buffer_reg_4__7_ ( .D(n226), .CK(clk), .RB(n1701), .Q(buffer[31]) );
  QDFFRBS buffer_reg_1__6_ ( .D(n256), .CK(clk), .RB(n169), .Q(buffer[54]) );
  QDFFRBS buffer_reg_1__5_ ( .D(n255), .CK(clk), .RB(n169), .Q(buffer[53]) );
  QDFFRBS buffer_reg_1__4_ ( .D(n254), .CK(clk), .RB(n169), .Q(buffer[52]) );
  QDFFRBS buffer_reg_1__3_ ( .D(n253), .CK(clk), .RB(n169), .Q(buffer[51]) );
  QDFFRBS buffer_reg_1__2_ ( .D(n252), .CK(clk), .RB(n169), .Q(buffer[50]) );
  QDFFRBS buffer_reg_1__1_ ( .D(n251), .CK(clk), .RB(n169), .Q(buffer[49]) );
  QDFFRBS buffer_reg_1__0_ ( .D(n249), .CK(clk), .RB(n1701), .Q(buffer[48]) );
  QDFFRBS buffer_reg_7__7_ ( .D(n202), .CK(clk), .RB(n172), .Q(buffer[7]) );
  QDFFRBS buffer_reg_6__6_ ( .D(n216), .CK(clk), .RB(n171), .Q(buffer[14]) );
  QDFFRBS buffer_reg_6__5_ ( .D(n215), .CK(clk), .RB(n171), .Q(buffer[13]) );
  QDFFRBS buffer_reg_6__4_ ( .D(n214), .CK(clk), .RB(n171), .Q(buffer[12]) );
  QDFFRBS buffer_reg_6__3_ ( .D(n213), .CK(clk), .RB(n171), .Q(buffer[11]) );
  QDFFRBS buffer_reg_6__2_ ( .D(n212), .CK(clk), .RB(n172), .Q(buffer[10]) );
  QDFFRBS buffer_reg_6__1_ ( .D(n211), .CK(clk), .RB(n172), .Q(buffer[9]) );
  QDFFRBS buffer_reg_6__0_ ( .D(n209), .CK(clk), .RB(n172), .Q(buffer[8]) );
  QDFFRBS buffer_reg_2__6_ ( .D(n248), .CK(clk), .RB(n167), .Q(buffer[46]) );
  QDFFRBS buffer_reg_2__5_ ( .D(n247), .CK(clk), .RB(n167), .Q(buffer[45]) );
  QDFFRBS buffer_reg_2__4_ ( .D(n246), .CK(clk), .RB(n167), .Q(buffer[44]) );
  QDFFRBS buffer_reg_2__3_ ( .D(n245), .CK(clk), .RB(n167), .Q(buffer[43]) );
  QDFFRBS buffer_reg_2__2_ ( .D(n244), .CK(clk), .RB(n167), .Q(buffer[42]) );
  QDFFRBS buffer_reg_2__1_ ( .D(n243), .CK(clk), .RB(n167), .Q(buffer[41]) );
  QDFFRBS buffer_reg_2__0_ ( .D(n241), .CK(clk), .RB(n167), .Q(buffer[40]) );
  QDFFRBS buffer_reg_1__7_ ( .D(n250), .CK(clk), .RB(n1701), .Q(buffer[55]) );
  QDFFRBS buffer_reg_4__6_ ( .D(n232), .CK(clk), .RB(n1701), .Q(buffer[30]) );
  QDFFRBS buffer_reg_4__5_ ( .D(n231), .CK(clk), .RB(n1701), .Q(buffer[29]) );
  QDFFRBS buffer_reg_4__4_ ( .D(n230), .CK(clk), .RB(n1701), .Q(buffer[28]) );
  QDFFRBS buffer_reg_4__3_ ( .D(n229), .CK(clk), .RB(n1701), .Q(buffer[27]) );
  QDFFRBS buffer_reg_4__2_ ( .D(n228), .CK(clk), .RB(n1701), .Q(buffer[26]) );
  QDFFRBS buffer_reg_4__1_ ( .D(n227), .CK(clk), .RB(n1701), .Q(buffer[25]) );
  QDFFRBS buffer_reg_4__0_ ( .D(n225), .CK(clk), .RB(n1701), .Q(buffer[24]) );
  QDFFRBS buffer_reg_0__6_ ( .D(n264), .CK(clk), .RB(n168), .Q(buffer[62]) );
  QDFFRBS buffer_reg_0__5_ ( .D(n263), .CK(clk), .RB(n168), .Q(buffer[61]) );
  QDFFRBS buffer_reg_0__4_ ( .D(n262), .CK(clk), .RB(n168), .Q(buffer[60]) );
  QDFFRBS buffer_reg_0__3_ ( .D(n261), .CK(clk), .RB(n169), .Q(buffer[59]) );
  QDFFRBS buffer_reg_0__2_ ( .D(n260), .CK(clk), .RB(n169), .Q(buffer[58]) );
  QDFFRBS buffer_reg_0__1_ ( .D(n259), .CK(clk), .RB(n169), .Q(buffer[57]) );
  QDFFRBS buffer_reg_0__0_ ( .D(n257), .CK(clk), .RB(n169), .Q(buffer[56]) );
  BUF2 U3 ( .I(n289), .O(n158) );
  BUF2 U4 ( .I(n292), .O(n161) );
  BUF2 U5 ( .I(n291), .O(n1601) );
  AN2 U6 ( .I1(n296), .I2(wr_ptr[0]), .O(n297) );
  NR2P U7 ( .I1(n156), .I2(n157), .O(n1) );
  AN2 U8 ( .I1(r_en), .I2(n283), .O(n2) );
  NR2P U9 ( .I1(n157), .I2(N17), .O(n3) );
  NR2P U10 ( .I1(n156), .I2(N16), .O(n4) );
  ND2P U11 ( .I1(n298), .I2(wr_ptr[2]), .O(n288) );
  ND2P U12 ( .I1(n298), .I2(n189), .O(n5) );
  BUF1 U13 ( .I(n294), .O(n163) );
  ND2S U14 ( .I1(n296), .I2(n187), .O(n295) );
  BUF1 U15 ( .I(n290), .O(n159) );
  ND3S U16 ( .I1(wr_ptr[2]), .I2(n188), .I3(n297), .O(n290) );
  ND3S U17 ( .I1(wr_ptr[1]), .I2(n189), .I3(n177), .O(n292) );
  BUF1CK U18 ( .I(n173), .O(n172) );
  BUF1CK U19 ( .I(n174), .O(n171) );
  BUF1CK U20 ( .I(n174), .O(n1701) );
  BUF1CK U21 ( .I(n175), .O(n169) );
  BUF1CK U22 ( .I(n175), .O(n168) );
  BUF1CK U23 ( .I(n176), .O(n167) );
  BUF1CK U24 ( .I(n176), .O(n166) );
  INV1S U25 ( .I(n164), .O(n173) );
  INV1S U26 ( .I(n164), .O(n174) );
  INV1S U27 ( .I(n164), .O(n175) );
  INV1S U28 ( .I(n295), .O(n177) );
  BUF1CK U29 ( .I(rst), .O(n164) );
  INV1S U30 ( .I(n165), .O(n176) );
  BUF1CK U31 ( .I(rst), .O(n165) );
  AN2 U32 ( .I1(w_en), .I2(n287), .O(n296) );
  ND3 U33 ( .I1(n188), .I2(n189), .I3(n177), .O(n294) );
  OAI12HS U34 ( .B1(n298), .B2(n189), .A1(n5), .O(n275) );
  BUF1CK U35 ( .I(n293), .O(n162) );
  ND3 U36 ( .I1(n188), .I2(n189), .I3(n297), .O(n293) );
  OAI12HS U37 ( .B1(n296), .B2(n187), .A1(n295), .O(n273) );
  INV1S U38 ( .I(n287), .O(full) );
  INV1S U39 ( .I(n283), .O(empty) );
  MOAI1S U40 ( .A1(n197), .A2(n288), .B1(buffer[0]), .B2(n288), .O(n201) );
  MOAI1S U41 ( .A1(n190), .A2(n288), .B1(buffer[7]), .B2(n288), .O(n202) );
  MOAI1S U42 ( .A1(n196), .A2(n288), .B1(buffer[1]), .B2(n288), .O(n203) );
  MOAI1S U43 ( .A1(n195), .A2(n288), .B1(buffer[2]), .B2(n288), .O(n204) );
  MOAI1S U44 ( .A1(n194), .A2(n288), .B1(buffer[3]), .B2(n288), .O(n205) );
  MOAI1S U45 ( .A1(n193), .A2(n288), .B1(buffer[4]), .B2(n288), .O(n206) );
  MOAI1S U46 ( .A1(n192), .A2(n288), .B1(buffer[5]), .B2(n288), .O(n207) );
  MOAI1S U47 ( .A1(n191), .A2(n288), .B1(buffer[6]), .B2(n288), .O(n208) );
  AN2 U48 ( .I1(n297), .I2(wr_ptr[1]), .O(n298) );
  MOAI1S U49 ( .A1(n197), .A2(n5), .B1(buffer[32]), .B2(n5), .O(n233) );
  MOAI1S U50 ( .A1(n190), .A2(n5), .B1(buffer[39]), .B2(n5), .O(n234) );
  MOAI1S U51 ( .A1(n196), .A2(n5), .B1(buffer[33]), .B2(n5), .O(n235) );
  MOAI1S U52 ( .A1(n195), .A2(n5), .B1(buffer[34]), .B2(n5), .O(n236) );
  MOAI1S U53 ( .A1(n194), .A2(n5), .B1(buffer[35]), .B2(n5), .O(n237) );
  MOAI1S U54 ( .A1(n193), .A2(n5), .B1(buffer[36]), .B2(n5), .O(n238) );
  MOAI1S U55 ( .A1(n192), .A2(n5), .B1(buffer[37]), .B2(n5), .O(n239) );
  MOAI1S U56 ( .A1(n191), .A2(n5), .B1(buffer[38]), .B2(n5), .O(n240) );
  MOAI1S U57 ( .A1(n197), .A2(n1601), .B1(buffer[24]), .B2(n1601), .O(n225) );
  MOAI1S U58 ( .A1(n190), .A2(n1601), .B1(buffer[31]), .B2(n1601), .O(n226) );
  MOAI1S U59 ( .A1(n196), .A2(n1601), .B1(buffer[25]), .B2(n1601), .O(n227) );
  MOAI1S U60 ( .A1(n195), .A2(n1601), .B1(buffer[26]), .B2(n1601), .O(n228) );
  MOAI1S U61 ( .A1(n194), .A2(n1601), .B1(buffer[27]), .B2(n1601), .O(n229) );
  MOAI1S U62 ( .A1(n193), .A2(n1601), .B1(buffer[28]), .B2(n1601), .O(n230) );
  MOAI1S U63 ( .A1(n192), .A2(n1601), .B1(buffer[29]), .B2(n1601), .O(n231) );
  MOAI1S U64 ( .A1(n191), .A2(n1601), .B1(buffer[30]), .B2(n1601), .O(n232) );
  ND3S U65 ( .I1(wr_ptr[2]), .I2(n188), .I3(n177), .O(n291) );
  MOAI1S U66 ( .A1(n197), .A2(n158), .B1(buffer[8]), .B2(n158), .O(n209) );
  MOAI1S U67 ( .A1(n190), .A2(n158), .B1(buffer[15]), .B2(n158), .O(n210) );
  MOAI1S U68 ( .A1(n196), .A2(n158), .B1(buffer[9]), .B2(n158), .O(n211) );
  MOAI1S U69 ( .A1(n195), .A2(n158), .B1(buffer[10]), .B2(n158), .O(n212) );
  MOAI1S U70 ( .A1(n194), .A2(n158), .B1(buffer[11]), .B2(n158), .O(n213) );
  MOAI1S U71 ( .A1(n193), .A2(n158), .B1(buffer[12]), .B2(n158), .O(n214) );
  MOAI1S U72 ( .A1(n192), .A2(n158), .B1(buffer[13]), .B2(n158), .O(n215) );
  MOAI1S U73 ( .A1(n191), .A2(n158), .B1(buffer[14]), .B2(n158), .O(n216) );
  MOAI1S U74 ( .A1(n197), .A2(n161), .B1(buffer[40]), .B2(n161), .O(n241) );
  MOAI1S U75 ( .A1(n190), .A2(n161), .B1(buffer[47]), .B2(n161), .O(n242) );
  MOAI1S U76 ( .A1(n196), .A2(n161), .B1(buffer[41]), .B2(n161), .O(n243) );
  MOAI1S U77 ( .A1(n195), .A2(n161), .B1(buffer[42]), .B2(n161), .O(n244) );
  MOAI1S U78 ( .A1(n194), .A2(n161), .B1(buffer[43]), .B2(n161), .O(n245) );
  MOAI1S U79 ( .A1(n193), .A2(n161), .B1(buffer[44]), .B2(n161), .O(n246) );
  MOAI1S U80 ( .A1(n192), .A2(n161), .B1(buffer[45]), .B2(n161), .O(n247) );
  MOAI1S U81 ( .A1(n191), .A2(n161), .B1(buffer[46]), .B2(n161), .O(n248) );
  ND3S U82 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n177), .O(n289) );
  MOAI1S U83 ( .A1(n163), .A2(n197), .B1(buffer[56]), .B2(n163), .O(n257) );
  MOAI1S U84 ( .A1(n163), .A2(n190), .B1(buffer[63]), .B2(n163), .O(n258) );
  MOAI1S U85 ( .A1(n163), .A2(n196), .B1(buffer[57]), .B2(n163), .O(n259) );
  MOAI1S U86 ( .A1(n163), .A2(n195), .B1(buffer[58]), .B2(n163), .O(n260) );
  MOAI1S U87 ( .A1(n163), .A2(n194), .B1(buffer[59]), .B2(n163), .O(n261) );
  MOAI1S U88 ( .A1(n163), .A2(n193), .B1(buffer[60]), .B2(n163), .O(n262) );
  MOAI1S U89 ( .A1(n163), .A2(n192), .B1(buffer[61]), .B2(n163), .O(n263) );
  MOAI1S U90 ( .A1(n163), .A2(n191), .B1(buffer[62]), .B2(n163), .O(n264) );
  MOAI1S U91 ( .A1(n197), .A2(n162), .B1(buffer[48]), .B2(n162), .O(n249) );
  MOAI1S U92 ( .A1(n190), .A2(n162), .B1(buffer[55]), .B2(n162), .O(n250) );
  MOAI1S U93 ( .A1(n196), .A2(n162), .B1(buffer[49]), .B2(n162), .O(n251) );
  MOAI1S U94 ( .A1(n195), .A2(n162), .B1(buffer[50]), .B2(n162), .O(n252) );
  MOAI1S U95 ( .A1(n194), .A2(n162), .B1(buffer[51]), .B2(n162), .O(n253) );
  MOAI1S U96 ( .A1(n193), .A2(n162), .B1(buffer[52]), .B2(n162), .O(n254) );
  MOAI1S U97 ( .A1(n192), .A2(n162), .B1(buffer[53]), .B2(n162), .O(n255) );
  MOAI1S U98 ( .A1(n191), .A2(n162), .B1(buffer[54]), .B2(n162), .O(n256) );
  MOAI1S U99 ( .A1(n197), .A2(n159), .B1(buffer[16]), .B2(n159), .O(n217) );
  MOAI1S U100 ( .A1(n190), .A2(n159), .B1(buffer[23]), .B2(n159), .O(n218) );
  MOAI1S U101 ( .A1(n196), .A2(n159), .B1(buffer[17]), .B2(n159), .O(n219) );
  MOAI1S U102 ( .A1(n195), .A2(n159), .B1(buffer[18]), .B2(n159), .O(n220) );
  MOAI1S U103 ( .A1(n194), .A2(n159), .B1(buffer[19]), .B2(n159), .O(n221) );
  MOAI1S U104 ( .A1(n193), .A2(n159), .B1(buffer[20]), .B2(n159), .O(n222) );
  MOAI1S U105 ( .A1(n192), .A2(n159), .B1(buffer[21]), .B2(n159), .O(n223) );
  MOAI1S U106 ( .A1(n191), .A2(n159), .B1(buffer[22]), .B2(n159), .O(n224) );
  XOR2HS U107 ( .I1(wr_ptr[1]), .I2(n297), .O(n274) );
  INV1S U108 ( .I(data_in[0]), .O(n197) );
  INV1S U109 ( .I(data_in[7]), .O(n190) );
  INV1S U110 ( .I(data_in[1]), .O(n196) );
  INV1S U111 ( .I(data_in[2]), .O(n195) );
  INV1S U112 ( .I(data_in[3]), .O(n194) );
  INV1S U113 ( .I(data_in[4]), .O(n193) );
  INV1S U115 ( .I(data_in[5]), .O(n192) );
  INV1S U116 ( .I(data_in[6]), .O(n191) );
  INV1S U117 ( .I(wr_ptr[1]), .O(n188) );
  XOR2HS U118 ( .I1(N16), .I2(n188), .O(n279) );
  AOI13HS U119 ( .B1(n282), .B2(n178), .B3(wr_ptr[0]), .A1(n281), .O(n287) );
  AN4B1S U120 ( .I1(n280), .I2(n187), .I3(n279), .B1(n178), .O(n281) );
  ND3 U122 ( .I1(N16), .I2(n188), .I3(n280), .O(n277) );
  XNR2HS U124 ( .I1(N17), .I2(wr_ptr[2]), .O(n280) );
  MOAI1S U125 ( .A1(N16), .A2(n286), .B1(n284), .B2(N16), .O(n199) );
  ND3 U126 ( .I1(n280), .I2(n279), .I3(n276), .O(n283) );
  XOR2HS U127 ( .I1(n178), .I2(wr_ptr[0]), .O(n276) );
  AO12 U128 ( .B1(N17), .B2(N16), .A1(n284), .O(n286) );
  MOAI1S U129 ( .A1(n157), .A2(n286), .B1(n285), .B2(N17), .O(n200) );
  OR2 U130 ( .I1(n157), .I2(n284), .O(n285) );
  INV1S U131 ( .I(N15), .O(n178) );
  INV1S U132 ( .I(wr_ptr[0]), .O(n187) );
  MOAI1S U133 ( .A1(n186), .A2(n2), .B1(N54), .B2(n2), .O(n272) );
  INV1S U134 ( .I(data_out[1]), .O(n186) );
  MOAI1S U135 ( .A1(n185), .A2(n2), .B1(N53), .B2(n2), .O(n271) );
  INV1S U136 ( .I(data_out[2]), .O(n185) );
  MOAI1S U137 ( .A1(n184), .A2(n2), .B1(N52), .B2(n2), .O(n270) );
  INV1S U138 ( .I(data_out[3]), .O(n184) );
  MOAI1S U139 ( .A1(n183), .A2(n2), .B1(N51), .B2(n2), .O(n269) );
  INV1S U140 ( .I(data_out[4]), .O(n183) );
  MOAI1S U141 ( .A1(n182), .A2(n2), .B1(N50), .B2(n2), .O(n268) );
  INV1S U142 ( .I(data_out[5]), .O(n182) );
  MOAI1S U143 ( .A1(n181), .A2(n2), .B1(N49), .B2(n2), .O(n267) );
  INV1S U144 ( .I(data_out[6]), .O(n181) );
  MOAI1S U145 ( .A1(n179), .A2(n2), .B1(N55), .B2(n2), .O(n265) );
  INV1S U146 ( .I(data_out[0]), .O(n179) );
  INV1S U147 ( .I(N16), .O(n157) );
  MOAI1S U148 ( .A1(n180), .A2(n2), .B1(N48), .B2(n2), .O(n266) );
  INV1S U149 ( .I(data_out[7]), .O(n180) );
  INV1S U150 ( .I(N17), .O(n156) );
  NR2P U151 ( .I1(N16), .I2(N17), .O(n151) );
  XOR2HS U152 ( .I1(N15), .I2(n2), .O(n198) );
  INV1S U153 ( .I(wr_ptr[2]), .O(n189) );
  AOI22S U154 ( .A1(buffer[24]), .A2(n4), .B1(buffer[8]), .B2(n1), .O(n7) );
  AOI22S U155 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n3), .O(n6)
         );
  AN2 U156 ( .I1(n7), .I2(n6), .O(n14) );
  AOI22S U157 ( .A1(buffer[16]), .A2(n4), .B1(buffer[0]), .B2(n1), .O(n10) );
  AOI22S U158 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n3), .O(n8)
         );
  ND2 U159 ( .I1(n10), .I2(n8), .O(n11) );
  MOAI1S U160 ( .A1(N15), .A2(n14), .B1(n11), .B2(N15), .O(N55) );
  AOI22S U161 ( .A1(buffer[25]), .A2(n4), .B1(buffer[9]), .B2(n1), .O(n1700)
         );
  AOI22S U162 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n3), .O(n1600) );
  AN2 U163 ( .I1(n1700), .I2(n1600), .O(n21) );
  AOI22S U164 ( .A1(buffer[17]), .A2(n4), .B1(buffer[1]), .B2(n1), .O(n19) );
  AOI22S U165 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n3), .O(n18)
         );
  ND2 U166 ( .I1(n19), .I2(n18), .O(n20) );
  MOAI1S U167 ( .A1(N15), .A2(n21), .B1(n20), .B2(N15), .O(N54) );
  AOI22S U168 ( .A1(buffer[26]), .A2(n4), .B1(buffer[10]), .B2(n1), .O(n23) );
  AOI22S U169 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n3), .O(n22)
         );
  AN2 U170 ( .I1(n23), .I2(n22), .O(n28) );
  AOI22S U171 ( .A1(buffer[18]), .A2(n4), .B1(buffer[2]), .B2(n1), .O(n26) );
  AOI22S U172 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n3), .O(n24)
         );
  ND2 U173 ( .I1(n26), .I2(n24), .O(n27) );
  MOAI1S U174 ( .A1(N15), .A2(n28), .B1(n27), .B2(N15), .O(N53) );
  AOI22S U175 ( .A1(buffer[27]), .A2(n4), .B1(buffer[11]), .B2(n1), .O(n30) );
  AOI22S U176 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n3), .O(n29)
         );
  AN2 U177 ( .I1(n30), .I2(n29), .O(n34) );
  AOI22S U178 ( .A1(buffer[19]), .A2(n4), .B1(buffer[3]), .B2(n1), .O(n32) );
  AOI22S U179 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n3), .O(n31)
         );
  ND2 U180 ( .I1(n32), .I2(n31), .O(n33) );
  MOAI1S U181 ( .A1(N15), .A2(n34), .B1(n33), .B2(N15), .O(N52) );
  AOI22S U182 ( .A1(buffer[28]), .A2(n4), .B1(buffer[12]), .B2(n1), .O(n43) );
  AOI22S U183 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n3), .O(n35)
         );
  AN2 U184 ( .I1(n43), .I2(n35), .O(n136) );
  AOI22S U185 ( .A1(buffer[20]), .A2(n4), .B1(buffer[4]), .B2(n1), .O(n67) );
  AOI22S U186 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n3), .O(n490)
         );
  ND2 U187 ( .I1(n67), .I2(n490), .O(n135) );
  MOAI1S U188 ( .A1(N15), .A2(n136), .B1(n135), .B2(N15), .O(N51) );
  AOI22S U189 ( .A1(buffer[29]), .A2(n4), .B1(buffer[13]), .B2(n1), .O(n138)
         );
  AOI22S U190 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n3), .O(n137)
         );
  AN2 U191 ( .I1(n138), .I2(n137), .O(n142) );
  AOI22S U192 ( .A1(buffer[21]), .A2(n4), .B1(buffer[5]), .B2(n1), .O(n140) );
  AOI22S U193 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n3), .O(n139)
         );
  ND2 U194 ( .I1(n140), .I2(n139), .O(n141) );
  MOAI1S U195 ( .A1(N15), .A2(n142), .B1(n141), .B2(N15), .O(N50) );
  AOI22S U196 ( .A1(buffer[30]), .A2(n4), .B1(buffer[14]), .B2(n1), .O(n144)
         );
  AOI22S U197 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n3), .O(n143)
         );
  AN2 U198 ( .I1(n144), .I2(n143), .O(n148) );
  AOI22S U199 ( .A1(buffer[22]), .A2(n4), .B1(buffer[6]), .B2(n1), .O(n146) );
  AOI22S U200 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n3), .O(n145)
         );
  ND2 U201 ( .I1(n146), .I2(n145), .O(n147) );
  MOAI1S U202 ( .A1(N15), .A2(n148), .B1(n147), .B2(N15), .O(N49) );
  AOI22S U203 ( .A1(buffer[23]), .A2(n4), .B1(buffer[7]), .B2(n1), .O(n150) );
  AOI22S U204 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n3), .O(n149)
         );
  AN2 U205 ( .I1(n150), .I2(n149), .O(n155) );
  AOI22S U206 ( .A1(buffer[31]), .A2(n4), .B1(buffer[15]), .B2(n1), .O(n153)
         );
  AOI22S U207 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n3), .O(n152)
         );
  ND2 U208 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U209 ( .A1(n155), .A2(n178), .B1(n154), .B2(n178), .O(N48) );
endmodule


module sync_fifo_2 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n11, n14, n1600, n1700, n18, n19, n20, n21, n22,
         n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n43, n490,
         n67, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n1601, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n1701, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  ND2 U114 ( .I1(n2), .I2(N15), .O(n283) );
  ND2 U121 ( .I1(n277), .I2(n276), .O(n281) );
  OR3 U123 ( .I1(n279), .I2(N16), .I3(n187), .O(n277) );
  QDFFRBN buffer_reg_3__6_ ( .D(n239), .CK(clk), .RB(n168), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n238), .CK(clk), .RB(n168), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n237), .CK(clk), .RB(n168), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n236), .CK(clk), .RB(n168), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n235), .CK(clk), .RB(n168), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n234), .CK(clk), .RB(n168), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n232), .CK(clk), .RB(n168), .Q(buffer[32]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n223), .CK(clk), .RB(n1701), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n222), .CK(clk), .RB(n171), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n221), .CK(clk), .RB(n171), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n220), .CK(clk), .RB(n171), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n219), .CK(clk), .RB(n171), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n218), .CK(clk), .RB(n171), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n216), .CK(clk), .RB(n171), .Q(buffer[16]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n233), .CK(clk), .RB(n168), .Q(buffer[39]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n217), .CK(clk), .RB(n171), .Q(buffer[23]) );
  QDFFRBN data_out_reg_7_ ( .D(n265), .CK(clk), .RB(n166), .Q(data_out[7]) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n272), .CK(clk), .RB(n167), .Q(wr_ptr[0]) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n197), .CK(clk), .RB(n166), .Q(N15) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n198), .CK(clk), .RB(n166), .Q(N16) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n274), .CK(clk), .RB(n167), .Q(wr_ptr[2]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n199), .CK(clk), .RB(n166), .Q(N17) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n273), .CK(clk), .RB(n167), .Q(wr_ptr[1]) );
  QDFFRBN data_out_reg_6_ ( .D(n266), .CK(clk), .RB(n166), .Q(data_out[6]) );
  QDFFRBN data_out_reg_3_ ( .D(n269), .CK(clk), .RB(n166), .Q(data_out[3]) );
  QDFFRBN data_out_reg_5_ ( .D(n267), .CK(clk), .RB(n166), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n268), .CK(clk), .RB(n166), .Q(data_out[4]) );
  QDFFRBN data_out_reg_2_ ( .D(n270), .CK(clk), .RB(n166), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n271), .CK(clk), .RB(n166), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n264), .CK(clk), .RB(n166), .Q(data_out[0]) );
  QDFFRBS buffer_reg_2__7_ ( .D(n241), .CK(clk), .RB(n167), .Q(buffer[47]) );
  QDFFRBS buffer_reg_6__7_ ( .D(n209), .CK(clk), .RB(n172), .Q(buffer[15]) );
  QDFFRBS buffer_reg_7__6_ ( .D(n207), .CK(clk), .RB(n172), .Q(buffer[6]) );
  QDFFRBS buffer_reg_7__5_ ( .D(n206), .CK(clk), .RB(n172), .Q(buffer[5]) );
  QDFFRBS buffer_reg_7__4_ ( .D(n205), .CK(clk), .RB(n172), .Q(buffer[4]) );
  QDFFRBS buffer_reg_7__3_ ( .D(n204), .CK(clk), .RB(n172), .Q(buffer[3]) );
  QDFFRBS buffer_reg_7__2_ ( .D(n203), .CK(clk), .RB(n172), .Q(buffer[2]) );
  QDFFRBS buffer_reg_7__1_ ( .D(n202), .CK(clk), .RB(n172), .Q(buffer[1]) );
  QDFFRBS buffer_reg_7__0_ ( .D(n200), .CK(clk), .RB(n175), .Q(buffer[0]) );
  QDFFRBS buffer_reg_0__7_ ( .D(n257), .CK(clk), .RB(n169), .Q(buffer[63]) );
  QDFFRBS buffer_reg_4__7_ ( .D(n225), .CK(clk), .RB(n1701), .Q(buffer[31]) );
  QDFFRBS buffer_reg_1__6_ ( .D(n255), .CK(clk), .RB(n169), .Q(buffer[54]) );
  QDFFRBS buffer_reg_1__5_ ( .D(n254), .CK(clk), .RB(n169), .Q(buffer[53]) );
  QDFFRBS buffer_reg_1__4_ ( .D(n253), .CK(clk), .RB(n169), .Q(buffer[52]) );
  QDFFRBS buffer_reg_1__3_ ( .D(n252), .CK(clk), .RB(n169), .Q(buffer[51]) );
  QDFFRBS buffer_reg_1__2_ ( .D(n251), .CK(clk), .RB(n169), .Q(buffer[50]) );
  QDFFRBS buffer_reg_1__1_ ( .D(n250), .CK(clk), .RB(n169), .Q(buffer[49]) );
  QDFFRBS buffer_reg_1__0_ ( .D(n248), .CK(clk), .RB(n1701), .Q(buffer[48]) );
  QDFFRBS buffer_reg_7__7_ ( .D(n201), .CK(clk), .RB(n172), .Q(buffer[7]) );
  QDFFRBS buffer_reg_6__6_ ( .D(n215), .CK(clk), .RB(n171), .Q(buffer[14]) );
  QDFFRBS buffer_reg_6__5_ ( .D(n214), .CK(clk), .RB(n171), .Q(buffer[13]) );
  QDFFRBS buffer_reg_6__4_ ( .D(n213), .CK(clk), .RB(n171), .Q(buffer[12]) );
  QDFFRBS buffer_reg_6__3_ ( .D(n212), .CK(clk), .RB(n171), .Q(buffer[11]) );
  QDFFRBS buffer_reg_6__2_ ( .D(n211), .CK(clk), .RB(n172), .Q(buffer[10]) );
  QDFFRBS buffer_reg_6__1_ ( .D(n210), .CK(clk), .RB(n172), .Q(buffer[9]) );
  QDFFRBS buffer_reg_6__0_ ( .D(n208), .CK(clk), .RB(n172), .Q(buffer[8]) );
  QDFFRBS buffer_reg_2__6_ ( .D(n247), .CK(clk), .RB(n167), .Q(buffer[46]) );
  QDFFRBS buffer_reg_2__5_ ( .D(n246), .CK(clk), .RB(n167), .Q(buffer[45]) );
  QDFFRBS buffer_reg_2__4_ ( .D(n245), .CK(clk), .RB(n167), .Q(buffer[44]) );
  QDFFRBS buffer_reg_2__3_ ( .D(n244), .CK(clk), .RB(n167), .Q(buffer[43]) );
  QDFFRBS buffer_reg_2__2_ ( .D(n243), .CK(clk), .RB(n167), .Q(buffer[42]) );
  QDFFRBS buffer_reg_2__1_ ( .D(n242), .CK(clk), .RB(n167), .Q(buffer[41]) );
  QDFFRBS buffer_reg_2__0_ ( .D(n240), .CK(clk), .RB(n167), .Q(buffer[40]) );
  QDFFRBS buffer_reg_1__7_ ( .D(n249), .CK(clk), .RB(n1701), .Q(buffer[55]) );
  QDFFRBS buffer_reg_4__6_ ( .D(n231), .CK(clk), .RB(n1701), .Q(buffer[30]) );
  QDFFRBS buffer_reg_4__5_ ( .D(n230), .CK(clk), .RB(n1701), .Q(buffer[29]) );
  QDFFRBS buffer_reg_4__4_ ( .D(n229), .CK(clk), .RB(n1701), .Q(buffer[28]) );
  QDFFRBS buffer_reg_4__3_ ( .D(n228), .CK(clk), .RB(n1701), .Q(buffer[27]) );
  QDFFRBS buffer_reg_4__2_ ( .D(n227), .CK(clk), .RB(n1701), .Q(buffer[26]) );
  QDFFRBS buffer_reg_4__1_ ( .D(n226), .CK(clk), .RB(n1701), .Q(buffer[25]) );
  QDFFRBS buffer_reg_4__0_ ( .D(n224), .CK(clk), .RB(n1701), .Q(buffer[24]) );
  QDFFRBS buffer_reg_0__6_ ( .D(n263), .CK(clk), .RB(n168), .Q(buffer[62]) );
  QDFFRBS buffer_reg_0__5_ ( .D(n262), .CK(clk), .RB(n168), .Q(buffer[61]) );
  QDFFRBS buffer_reg_0__4_ ( .D(n261), .CK(clk), .RB(n168), .Q(buffer[60]) );
  QDFFRBS buffer_reg_0__3_ ( .D(n260), .CK(clk), .RB(n169), .Q(buffer[59]) );
  QDFFRBS buffer_reg_0__2_ ( .D(n259), .CK(clk), .RB(n169), .Q(buffer[58]) );
  QDFFRBS buffer_reg_0__1_ ( .D(n258), .CK(clk), .RB(n169), .Q(buffer[57]) );
  QDFFRBS buffer_reg_0__0_ ( .D(n256), .CK(clk), .RB(n169), .Q(buffer[56]) );
  BUF2 U3 ( .I(n288), .O(n158) );
  BUF2 U4 ( .I(n290), .O(n1601) );
  BUF2 U5 ( .I(n291), .O(n161) );
  AN2 U6 ( .I1(n295), .I2(wr_ptr[0]), .O(n296) );
  NR2P U7 ( .I1(n156), .I2(n157), .O(n1) );
  AN2 U8 ( .I1(r_en), .I2(n282), .O(n2) );
  NR2P U9 ( .I1(n157), .I2(N17), .O(n3) );
  NR2P U10 ( .I1(n156), .I2(N16), .O(n4) );
  ND2P U11 ( .I1(n297), .I2(wr_ptr[2]), .O(n287) );
  ND2P U12 ( .I1(n297), .I2(n188), .O(n5) );
  BUF1 U13 ( .I(n293), .O(n163) );
  ND2S U14 ( .I1(n295), .I2(n186), .O(n294) );
  BUF1 U15 ( .I(n289), .O(n159) );
  ND3S U16 ( .I1(wr_ptr[2]), .I2(n187), .I3(n296), .O(n289) );
  ND3S U17 ( .I1(wr_ptr[1]), .I2(n188), .I3(n176), .O(n291) );
  BUF1CK U18 ( .I(n173), .O(n172) );
  BUF1CK U19 ( .I(n173), .O(n171) );
  BUF1CK U20 ( .I(n173), .O(n1701) );
  BUF1CK U21 ( .I(n174), .O(n169) );
  BUF1CK U22 ( .I(n174), .O(n168) );
  BUF1CK U23 ( .I(n175), .O(n167) );
  BUF1CK U24 ( .I(n175), .O(n166) );
  INV1S U25 ( .I(n164), .O(n173) );
  INV1S U26 ( .I(n164), .O(n174) );
  INV1S U27 ( .I(n294), .O(n176) );
  BUF1CK U28 ( .I(rst), .O(n164) );
  INV1S U29 ( .I(n165), .O(n175) );
  BUF1CK U30 ( .I(rst), .O(n165) );
  AN2 U31 ( .I1(w_en), .I2(n286), .O(n295) );
  ND3 U32 ( .I1(n187), .I2(n188), .I3(n176), .O(n293) );
  OAI12HS U33 ( .B1(n297), .B2(n188), .A1(n5), .O(n274) );
  BUF1CK U34 ( .I(n292), .O(n162) );
  ND3 U35 ( .I1(n187), .I2(n188), .I3(n296), .O(n292) );
  OAI12HS U36 ( .B1(n295), .B2(n186), .A1(n294), .O(n272) );
  INV1S U37 ( .I(n286), .O(full) );
  INV1S U38 ( .I(n282), .O(empty) );
  MOAI1S U39 ( .A1(n196), .A2(n287), .B1(buffer[0]), .B2(n287), .O(n200) );
  MOAI1S U40 ( .A1(n189), .A2(n287), .B1(buffer[7]), .B2(n287), .O(n201) );
  MOAI1S U41 ( .A1(n195), .A2(n287), .B1(buffer[1]), .B2(n287), .O(n202) );
  MOAI1S U42 ( .A1(n194), .A2(n287), .B1(buffer[2]), .B2(n287), .O(n203) );
  MOAI1S U43 ( .A1(n193), .A2(n287), .B1(buffer[3]), .B2(n287), .O(n204) );
  MOAI1S U44 ( .A1(n192), .A2(n287), .B1(buffer[4]), .B2(n287), .O(n205) );
  MOAI1S U45 ( .A1(n191), .A2(n287), .B1(buffer[5]), .B2(n287), .O(n206) );
  MOAI1S U46 ( .A1(n190), .A2(n287), .B1(buffer[6]), .B2(n287), .O(n207) );
  AN2 U47 ( .I1(n296), .I2(wr_ptr[1]), .O(n297) );
  MOAI1S U48 ( .A1(n196), .A2(n5), .B1(buffer[32]), .B2(n5), .O(n232) );
  MOAI1S U49 ( .A1(n189), .A2(n5), .B1(buffer[39]), .B2(n5), .O(n233) );
  MOAI1S U50 ( .A1(n195), .A2(n5), .B1(buffer[33]), .B2(n5), .O(n234) );
  MOAI1S U51 ( .A1(n194), .A2(n5), .B1(buffer[34]), .B2(n5), .O(n235) );
  MOAI1S U52 ( .A1(n193), .A2(n5), .B1(buffer[35]), .B2(n5), .O(n236) );
  MOAI1S U53 ( .A1(n192), .A2(n5), .B1(buffer[36]), .B2(n5), .O(n237) );
  MOAI1S U54 ( .A1(n191), .A2(n5), .B1(buffer[37]), .B2(n5), .O(n238) );
  MOAI1S U55 ( .A1(n190), .A2(n5), .B1(buffer[38]), .B2(n5), .O(n239) );
  MOAI1S U56 ( .A1(n196), .A2(n1601), .B1(buffer[24]), .B2(n1601), .O(n224) );
  MOAI1S U57 ( .A1(n189), .A2(n1601), .B1(buffer[31]), .B2(n1601), .O(n225) );
  MOAI1S U58 ( .A1(n195), .A2(n1601), .B1(buffer[25]), .B2(n1601), .O(n226) );
  MOAI1S U59 ( .A1(n194), .A2(n1601), .B1(buffer[26]), .B2(n1601), .O(n227) );
  MOAI1S U60 ( .A1(n193), .A2(n1601), .B1(buffer[27]), .B2(n1601), .O(n228) );
  MOAI1S U61 ( .A1(n192), .A2(n1601), .B1(buffer[28]), .B2(n1601), .O(n229) );
  MOAI1S U62 ( .A1(n191), .A2(n1601), .B1(buffer[29]), .B2(n1601), .O(n230) );
  MOAI1S U63 ( .A1(n190), .A2(n1601), .B1(buffer[30]), .B2(n1601), .O(n231) );
  ND3S U64 ( .I1(wr_ptr[2]), .I2(n187), .I3(n176), .O(n290) );
  MOAI1S U65 ( .A1(n196), .A2(n158), .B1(buffer[8]), .B2(n158), .O(n208) );
  MOAI1S U66 ( .A1(n189), .A2(n158), .B1(buffer[15]), .B2(n158), .O(n209) );
  MOAI1S U67 ( .A1(n195), .A2(n158), .B1(buffer[9]), .B2(n158), .O(n210) );
  MOAI1S U68 ( .A1(n194), .A2(n158), .B1(buffer[10]), .B2(n158), .O(n211) );
  MOAI1S U69 ( .A1(n193), .A2(n158), .B1(buffer[11]), .B2(n158), .O(n212) );
  MOAI1S U70 ( .A1(n192), .A2(n158), .B1(buffer[12]), .B2(n158), .O(n213) );
  MOAI1S U71 ( .A1(n191), .A2(n158), .B1(buffer[13]), .B2(n158), .O(n214) );
  MOAI1S U72 ( .A1(n190), .A2(n158), .B1(buffer[14]), .B2(n158), .O(n215) );
  MOAI1S U73 ( .A1(n196), .A2(n161), .B1(buffer[40]), .B2(n161), .O(n240) );
  MOAI1S U74 ( .A1(n189), .A2(n161), .B1(buffer[47]), .B2(n161), .O(n241) );
  MOAI1S U75 ( .A1(n195), .A2(n161), .B1(buffer[41]), .B2(n161), .O(n242) );
  MOAI1S U76 ( .A1(n194), .A2(n161), .B1(buffer[42]), .B2(n161), .O(n243) );
  MOAI1S U77 ( .A1(n193), .A2(n161), .B1(buffer[43]), .B2(n161), .O(n244) );
  MOAI1S U78 ( .A1(n192), .A2(n161), .B1(buffer[44]), .B2(n161), .O(n245) );
  MOAI1S U79 ( .A1(n191), .A2(n161), .B1(buffer[45]), .B2(n161), .O(n246) );
  MOAI1S U80 ( .A1(n190), .A2(n161), .B1(buffer[46]), .B2(n161), .O(n247) );
  ND3S U81 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n176), .O(n288) );
  MOAI1S U82 ( .A1(n163), .A2(n196), .B1(buffer[56]), .B2(n163), .O(n256) );
  MOAI1S U83 ( .A1(n163), .A2(n189), .B1(buffer[63]), .B2(n163), .O(n257) );
  MOAI1S U84 ( .A1(n163), .A2(n195), .B1(buffer[57]), .B2(n163), .O(n258) );
  MOAI1S U85 ( .A1(n163), .A2(n194), .B1(buffer[58]), .B2(n163), .O(n259) );
  MOAI1S U86 ( .A1(n163), .A2(n193), .B1(buffer[59]), .B2(n163), .O(n260) );
  MOAI1S U87 ( .A1(n163), .A2(n192), .B1(buffer[60]), .B2(n163), .O(n261) );
  MOAI1S U88 ( .A1(n163), .A2(n191), .B1(buffer[61]), .B2(n163), .O(n262) );
  MOAI1S U89 ( .A1(n163), .A2(n190), .B1(buffer[62]), .B2(n163), .O(n263) );
  MOAI1S U90 ( .A1(n196), .A2(n162), .B1(buffer[48]), .B2(n162), .O(n248) );
  MOAI1S U91 ( .A1(n189), .A2(n162), .B1(buffer[55]), .B2(n162), .O(n249) );
  MOAI1S U92 ( .A1(n195), .A2(n162), .B1(buffer[49]), .B2(n162), .O(n250) );
  MOAI1S U93 ( .A1(n194), .A2(n162), .B1(buffer[50]), .B2(n162), .O(n251) );
  MOAI1S U94 ( .A1(n193), .A2(n162), .B1(buffer[51]), .B2(n162), .O(n252) );
  MOAI1S U95 ( .A1(n192), .A2(n162), .B1(buffer[52]), .B2(n162), .O(n253) );
  MOAI1S U96 ( .A1(n191), .A2(n162), .B1(buffer[53]), .B2(n162), .O(n254) );
  MOAI1S U97 ( .A1(n190), .A2(n162), .B1(buffer[54]), .B2(n162), .O(n255) );
  MOAI1S U98 ( .A1(n196), .A2(n159), .B1(buffer[16]), .B2(n159), .O(n216) );
  MOAI1S U99 ( .A1(n189), .A2(n159), .B1(buffer[23]), .B2(n159), .O(n217) );
  MOAI1S U100 ( .A1(n195), .A2(n159), .B1(buffer[17]), .B2(n159), .O(n218) );
  MOAI1S U101 ( .A1(n194), .A2(n159), .B1(buffer[18]), .B2(n159), .O(n219) );
  MOAI1S U102 ( .A1(n193), .A2(n159), .B1(buffer[19]), .B2(n159), .O(n220) );
  MOAI1S U103 ( .A1(n192), .A2(n159), .B1(buffer[20]), .B2(n159), .O(n221) );
  MOAI1S U104 ( .A1(n191), .A2(n159), .B1(buffer[21]), .B2(n159), .O(n222) );
  MOAI1S U105 ( .A1(n190), .A2(n159), .B1(buffer[22]), .B2(n159), .O(n223) );
  XOR2HS U106 ( .I1(wr_ptr[1]), .I2(n296), .O(n273) );
  INV1S U107 ( .I(data_in[0]), .O(n196) );
  INV1S U108 ( .I(data_in[7]), .O(n189) );
  INV1S U109 ( .I(data_in[1]), .O(n195) );
  INV1S U110 ( .I(data_in[2]), .O(n194) );
  INV1S U111 ( .I(data_in[3]), .O(n193) );
  INV1S U112 ( .I(data_in[4]), .O(n192) );
  INV1S U113 ( .I(data_in[5]), .O(n191) );
  INV1S U115 ( .I(data_in[6]), .O(n190) );
  INV1S U116 ( .I(wr_ptr[1]), .O(n187) );
  XOR2HS U117 ( .I1(N16), .I2(n187), .O(n278) );
  AOI13HS U118 ( .B1(n281), .B2(n177), .B3(wr_ptr[0]), .A1(n280), .O(n286) );
  AN4B1S U119 ( .I1(n279), .I2(n186), .I3(n278), .B1(n177), .O(n280) );
  ND3 U120 ( .I1(N16), .I2(n187), .I3(n279), .O(n276) );
  XNR2HS U122 ( .I1(N17), .I2(wr_ptr[2]), .O(n279) );
  MOAI1S U124 ( .A1(N16), .A2(n285), .B1(n283), .B2(N16), .O(n198) );
  ND3 U125 ( .I1(n279), .I2(n278), .I3(n275), .O(n282) );
  XOR2HS U126 ( .I1(n177), .I2(wr_ptr[0]), .O(n275) );
  AO12 U127 ( .B1(N17), .B2(N16), .A1(n283), .O(n285) );
  MOAI1S U128 ( .A1(n157), .A2(n285), .B1(n284), .B2(N17), .O(n199) );
  OR2 U129 ( .I1(n157), .I2(n283), .O(n284) );
  INV1S U130 ( .I(N15), .O(n177) );
  INV1S U131 ( .I(wr_ptr[0]), .O(n186) );
  MOAI1S U132 ( .A1(n185), .A2(n2), .B1(N54), .B2(n2), .O(n271) );
  INV1S U133 ( .I(data_out[1]), .O(n185) );
  MOAI1S U134 ( .A1(n184), .A2(n2), .B1(N53), .B2(n2), .O(n270) );
  INV1S U135 ( .I(data_out[2]), .O(n184) );
  MOAI1S U136 ( .A1(n183), .A2(n2), .B1(N52), .B2(n2), .O(n269) );
  INV1S U137 ( .I(data_out[3]), .O(n183) );
  MOAI1S U138 ( .A1(n182), .A2(n2), .B1(N51), .B2(n2), .O(n268) );
  INV1S U139 ( .I(data_out[4]), .O(n182) );
  MOAI1S U140 ( .A1(n181), .A2(n2), .B1(N50), .B2(n2), .O(n267) );
  INV1S U141 ( .I(data_out[5]), .O(n181) );
  MOAI1S U142 ( .A1(n180), .A2(n2), .B1(N49), .B2(n2), .O(n266) );
  INV1S U143 ( .I(data_out[6]), .O(n180) );
  MOAI1S U144 ( .A1(n178), .A2(n2), .B1(N55), .B2(n2), .O(n264) );
  INV1S U145 ( .I(data_out[0]), .O(n178) );
  INV1S U146 ( .I(N16), .O(n157) );
  MOAI1S U147 ( .A1(n179), .A2(n2), .B1(N48), .B2(n2), .O(n265) );
  INV1S U148 ( .I(data_out[7]), .O(n179) );
  INV1S U149 ( .I(N17), .O(n156) );
  NR2P U150 ( .I1(N16), .I2(N17), .O(n151) );
  XOR2HS U151 ( .I1(N15), .I2(n2), .O(n197) );
  INV1S U152 ( .I(wr_ptr[2]), .O(n188) );
  AOI22S U153 ( .A1(buffer[24]), .A2(n4), .B1(buffer[8]), .B2(n1), .O(n7) );
  AOI22S U154 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n3), .O(n6)
         );
  AN2 U155 ( .I1(n7), .I2(n6), .O(n14) );
  AOI22S U156 ( .A1(buffer[16]), .A2(n4), .B1(buffer[0]), .B2(n1), .O(n10) );
  AOI22S U157 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n3), .O(n8)
         );
  ND2 U158 ( .I1(n10), .I2(n8), .O(n11) );
  MOAI1S U159 ( .A1(N15), .A2(n14), .B1(n11), .B2(N15), .O(N55) );
  AOI22S U160 ( .A1(buffer[25]), .A2(n4), .B1(buffer[9]), .B2(n1), .O(n1700)
         );
  AOI22S U161 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n3), .O(n1600) );
  AN2 U162 ( .I1(n1700), .I2(n1600), .O(n21) );
  AOI22S U163 ( .A1(buffer[17]), .A2(n4), .B1(buffer[1]), .B2(n1), .O(n19) );
  AOI22S U164 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n3), .O(n18)
         );
  ND2 U165 ( .I1(n19), .I2(n18), .O(n20) );
  MOAI1S U166 ( .A1(N15), .A2(n21), .B1(n20), .B2(N15), .O(N54) );
  AOI22S U167 ( .A1(buffer[26]), .A2(n4), .B1(buffer[10]), .B2(n1), .O(n23) );
  AOI22S U168 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n3), .O(n22)
         );
  AN2 U169 ( .I1(n23), .I2(n22), .O(n28) );
  AOI22S U170 ( .A1(buffer[18]), .A2(n4), .B1(buffer[2]), .B2(n1), .O(n26) );
  AOI22S U171 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n3), .O(n24)
         );
  ND2 U172 ( .I1(n26), .I2(n24), .O(n27) );
  MOAI1S U173 ( .A1(N15), .A2(n28), .B1(n27), .B2(N15), .O(N53) );
  AOI22S U174 ( .A1(buffer[27]), .A2(n4), .B1(buffer[11]), .B2(n1), .O(n30) );
  AOI22S U175 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n3), .O(n29)
         );
  AN2 U176 ( .I1(n30), .I2(n29), .O(n34) );
  AOI22S U177 ( .A1(buffer[19]), .A2(n4), .B1(buffer[3]), .B2(n1), .O(n32) );
  AOI22S U178 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n3), .O(n31)
         );
  ND2 U179 ( .I1(n32), .I2(n31), .O(n33) );
  MOAI1S U180 ( .A1(N15), .A2(n34), .B1(n33), .B2(N15), .O(N52) );
  AOI22S U181 ( .A1(buffer[28]), .A2(n4), .B1(buffer[12]), .B2(n1), .O(n43) );
  AOI22S U182 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n3), .O(n35)
         );
  AN2 U183 ( .I1(n43), .I2(n35), .O(n136) );
  AOI22S U184 ( .A1(buffer[20]), .A2(n4), .B1(buffer[4]), .B2(n1), .O(n67) );
  AOI22S U185 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n3), .O(n490)
         );
  ND2 U186 ( .I1(n67), .I2(n490), .O(n135) );
  MOAI1S U187 ( .A1(N15), .A2(n136), .B1(n135), .B2(N15), .O(N51) );
  AOI22S U188 ( .A1(buffer[29]), .A2(n4), .B1(buffer[13]), .B2(n1), .O(n138)
         );
  AOI22S U189 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n3), .O(n137)
         );
  AN2 U190 ( .I1(n138), .I2(n137), .O(n142) );
  AOI22S U191 ( .A1(buffer[21]), .A2(n4), .B1(buffer[5]), .B2(n1), .O(n140) );
  AOI22S U192 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n3), .O(n139)
         );
  ND2 U193 ( .I1(n140), .I2(n139), .O(n141) );
  MOAI1S U194 ( .A1(N15), .A2(n142), .B1(n141), .B2(N15), .O(N50) );
  AOI22S U195 ( .A1(buffer[30]), .A2(n4), .B1(buffer[14]), .B2(n1), .O(n144)
         );
  AOI22S U196 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n3), .O(n143)
         );
  AN2 U197 ( .I1(n144), .I2(n143), .O(n148) );
  AOI22S U198 ( .A1(buffer[22]), .A2(n4), .B1(buffer[6]), .B2(n1), .O(n146) );
  AOI22S U199 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n3), .O(n145)
         );
  ND2 U200 ( .I1(n146), .I2(n145), .O(n147) );
  MOAI1S U201 ( .A1(N15), .A2(n148), .B1(n147), .B2(N15), .O(N49) );
  AOI22S U202 ( .A1(buffer[23]), .A2(n4), .B1(buffer[7]), .B2(n1), .O(n150) );
  AOI22S U203 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n3), .O(n149)
         );
  AN2 U204 ( .I1(n150), .I2(n149), .O(n155) );
  AOI22S U205 ( .A1(buffer[31]), .A2(n4), .B1(buffer[15]), .B2(n1), .O(n153)
         );
  AOI22S U206 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n3), .O(n152)
         );
  ND2 U207 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U208 ( .A1(n155), .A2(n177), .B1(n154), .B2(n177), .O(N48) );
endmodule


module sync_fifo_1 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n11, n14, n1600, n1700, n18, n19, n20, n21, n22,
         n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n43, n490,
         n67, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n1601, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n1701, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  ND2 U114 ( .I1(n2), .I2(N15), .O(n283) );
  ND2 U121 ( .I1(n277), .I2(n276), .O(n281) );
  OR3 U123 ( .I1(n279), .I2(N16), .I3(n187), .O(n277) );
  QDFFRBN buffer_reg_1__6_ ( .D(n255), .CK(clk), .RB(n169), .Q(buffer[54]) );
  QDFFRBN buffer_reg_1__5_ ( .D(n254), .CK(clk), .RB(n169), .Q(buffer[53]) );
  QDFFRBN buffer_reg_1__4_ ( .D(n253), .CK(clk), .RB(n169), .Q(buffer[52]) );
  QDFFRBN buffer_reg_1__3_ ( .D(n252), .CK(clk), .RB(n169), .Q(buffer[51]) );
  QDFFRBN buffer_reg_1__2_ ( .D(n251), .CK(clk), .RB(n169), .Q(buffer[50]) );
  QDFFRBN buffer_reg_1__1_ ( .D(n250), .CK(clk), .RB(n169), .Q(buffer[49]) );
  QDFFRBN buffer_reg_1__0_ ( .D(n248), .CK(clk), .RB(n1701), .Q(buffer[48]) );
  QDFFRBN buffer_reg_1__7_ ( .D(n249), .CK(clk), .RB(n1701), .Q(buffer[55]) );
  QDFFRBN data_out_reg_7_ ( .D(n265), .CK(clk), .RB(n166), .Q(data_out[7]) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n272), .CK(clk), .RB(n167), .Q(wr_ptr[0]) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n197), .CK(clk), .RB(n166), .Q(N15) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n198), .CK(clk), .RB(n166), .Q(N16) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n274), .CK(clk), .RB(n167), .Q(wr_ptr[2]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n199), .CK(clk), .RB(n166), .Q(N17) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n273), .CK(clk), .RB(n167), .Q(wr_ptr[1]) );
  QDFFRBN data_out_reg_6_ ( .D(n266), .CK(clk), .RB(n166), .Q(data_out[6]) );
  QDFFRBN data_out_reg_3_ ( .D(n269), .CK(clk), .RB(n166), .Q(data_out[3]) );
  QDFFRBN data_out_reg_5_ ( .D(n267), .CK(clk), .RB(n166), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n268), .CK(clk), .RB(n166), .Q(data_out[4]) );
  QDFFRBN data_out_reg_2_ ( .D(n270), .CK(clk), .RB(n166), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n271), .CK(clk), .RB(n166), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n264), .CK(clk), .RB(n166), .Q(data_out[0]) );
  QDFFRBS buffer_reg_2__7_ ( .D(n241), .CK(clk), .RB(n167), .Q(buffer[47]) );
  QDFFRBS buffer_reg_6__7_ ( .D(n209), .CK(clk), .RB(n172), .Q(buffer[15]) );
  QDFFRBS buffer_reg_3__6_ ( .D(n239), .CK(clk), .RB(n168), .Q(buffer[38]) );
  QDFFRBS buffer_reg_3__5_ ( .D(n238), .CK(clk), .RB(n168), .Q(buffer[37]) );
  QDFFRBS buffer_reg_3__4_ ( .D(n237), .CK(clk), .RB(n168), .Q(buffer[36]) );
  QDFFRBS buffer_reg_3__3_ ( .D(n236), .CK(clk), .RB(n168), .Q(buffer[35]) );
  QDFFRBS buffer_reg_3__2_ ( .D(n235), .CK(clk), .RB(n168), .Q(buffer[34]) );
  QDFFRBS buffer_reg_3__1_ ( .D(n234), .CK(clk), .RB(n168), .Q(buffer[33]) );
  QDFFRBS buffer_reg_3__0_ ( .D(n232), .CK(clk), .RB(n168), .Q(buffer[32]) );
  QDFFRBS buffer_reg_7__6_ ( .D(n207), .CK(clk), .RB(n172), .Q(buffer[6]) );
  QDFFRBS buffer_reg_7__5_ ( .D(n206), .CK(clk), .RB(n172), .Q(buffer[5]) );
  QDFFRBS buffer_reg_7__4_ ( .D(n205), .CK(clk), .RB(n172), .Q(buffer[4]) );
  QDFFRBS buffer_reg_7__3_ ( .D(n204), .CK(clk), .RB(n172), .Q(buffer[3]) );
  QDFFRBS buffer_reg_7__2_ ( .D(n203), .CK(clk), .RB(n172), .Q(buffer[2]) );
  QDFFRBS buffer_reg_7__1_ ( .D(n202), .CK(clk), .RB(n172), .Q(buffer[1]) );
  QDFFRBS buffer_reg_7__0_ ( .D(n200), .CK(clk), .RB(n175), .Q(buffer[0]) );
  QDFFRBS buffer_reg_0__7_ ( .D(n257), .CK(clk), .RB(n169), .Q(buffer[63]) );
  QDFFRBS buffer_reg_4__7_ ( .D(n225), .CK(clk), .RB(n1701), .Q(buffer[31]) );
  QDFFRBS buffer_reg_5__6_ ( .D(n223), .CK(clk), .RB(n1701), .Q(buffer[22]) );
  QDFFRBS buffer_reg_5__5_ ( .D(n222), .CK(clk), .RB(n171), .Q(buffer[21]) );
  QDFFRBS buffer_reg_5__4_ ( .D(n221), .CK(clk), .RB(n171), .Q(buffer[20]) );
  QDFFRBS buffer_reg_5__3_ ( .D(n220), .CK(clk), .RB(n171), .Q(buffer[19]) );
  QDFFRBS buffer_reg_5__2_ ( .D(n219), .CK(clk), .RB(n171), .Q(buffer[18]) );
  QDFFRBS buffer_reg_5__1_ ( .D(n218), .CK(clk), .RB(n171), .Q(buffer[17]) );
  QDFFRBS buffer_reg_5__0_ ( .D(n216), .CK(clk), .RB(n171), .Q(buffer[16]) );
  QDFFRBS buffer_reg_7__7_ ( .D(n201), .CK(clk), .RB(n172), .Q(buffer[7]) );
  QDFFRBS buffer_reg_3__7_ ( .D(n233), .CK(clk), .RB(n168), .Q(buffer[39]) );
  QDFFRBS buffer_reg_6__6_ ( .D(n215), .CK(clk), .RB(n171), .Q(buffer[14]) );
  QDFFRBS buffer_reg_6__5_ ( .D(n214), .CK(clk), .RB(n171), .Q(buffer[13]) );
  QDFFRBS buffer_reg_6__4_ ( .D(n213), .CK(clk), .RB(n171), .Q(buffer[12]) );
  QDFFRBS buffer_reg_6__3_ ( .D(n212), .CK(clk), .RB(n171), .Q(buffer[11]) );
  QDFFRBS buffer_reg_6__2_ ( .D(n211), .CK(clk), .RB(n172), .Q(buffer[10]) );
  QDFFRBS buffer_reg_6__1_ ( .D(n210), .CK(clk), .RB(n172), .Q(buffer[9]) );
  QDFFRBS buffer_reg_6__0_ ( .D(n208), .CK(clk), .RB(n172), .Q(buffer[8]) );
  QDFFRBS buffer_reg_2__6_ ( .D(n247), .CK(clk), .RB(n167), .Q(buffer[46]) );
  QDFFRBS buffer_reg_2__5_ ( .D(n246), .CK(clk), .RB(n167), .Q(buffer[45]) );
  QDFFRBS buffer_reg_2__4_ ( .D(n245), .CK(clk), .RB(n167), .Q(buffer[44]) );
  QDFFRBS buffer_reg_2__3_ ( .D(n244), .CK(clk), .RB(n167), .Q(buffer[43]) );
  QDFFRBS buffer_reg_2__2_ ( .D(n243), .CK(clk), .RB(n167), .Q(buffer[42]) );
  QDFFRBS buffer_reg_2__1_ ( .D(n242), .CK(clk), .RB(n167), .Q(buffer[41]) );
  QDFFRBS buffer_reg_2__0_ ( .D(n240), .CK(clk), .RB(n167), .Q(buffer[40]) );
  QDFFRBS buffer_reg_5__7_ ( .D(n217), .CK(clk), .RB(n171), .Q(buffer[23]) );
  QDFFRBS buffer_reg_4__6_ ( .D(n231), .CK(clk), .RB(n1701), .Q(buffer[30]) );
  QDFFRBS buffer_reg_4__5_ ( .D(n230), .CK(clk), .RB(n1701), .Q(buffer[29]) );
  QDFFRBS buffer_reg_4__4_ ( .D(n229), .CK(clk), .RB(n1701), .Q(buffer[28]) );
  QDFFRBS buffer_reg_4__3_ ( .D(n228), .CK(clk), .RB(n1701), .Q(buffer[27]) );
  QDFFRBS buffer_reg_4__2_ ( .D(n227), .CK(clk), .RB(n1701), .Q(buffer[26]) );
  QDFFRBS buffer_reg_4__1_ ( .D(n226), .CK(clk), .RB(n1701), .Q(buffer[25]) );
  QDFFRBS buffer_reg_4__0_ ( .D(n224), .CK(clk), .RB(n1701), .Q(buffer[24]) );
  QDFFRBS buffer_reg_0__6_ ( .D(n263), .CK(clk), .RB(n168), .Q(buffer[62]) );
  QDFFRBS buffer_reg_0__5_ ( .D(n262), .CK(clk), .RB(n168), .Q(buffer[61]) );
  QDFFRBS buffer_reg_0__4_ ( .D(n261), .CK(clk), .RB(n168), .Q(buffer[60]) );
  QDFFRBS buffer_reg_0__3_ ( .D(n260), .CK(clk), .RB(n169), .Q(buffer[59]) );
  QDFFRBS buffer_reg_0__2_ ( .D(n259), .CK(clk), .RB(n169), .Q(buffer[58]) );
  QDFFRBS buffer_reg_0__1_ ( .D(n258), .CK(clk), .RB(n169), .Q(buffer[57]) );
  QDFFRBS buffer_reg_0__0_ ( .D(n256), .CK(clk), .RB(n169), .Q(buffer[56]) );
  ND2T U3 ( .I1(n297), .I2(n188), .O(n5) );
  BUF2 U4 ( .I(n288), .O(n158) );
  BUF2 U5 ( .I(n291), .O(n161) );
  BUF2 U6 ( .I(n290), .O(n1601) );
  ND2P U7 ( .I1(n297), .I2(wr_ptr[2]), .O(n287) );
  AN2 U8 ( .I1(n296), .I2(wr_ptr[1]), .O(n297) );
  NR2P U9 ( .I1(n156), .I2(n157), .O(n1) );
  AN2 U10 ( .I1(r_en), .I2(n282), .O(n2) );
  NR2P U11 ( .I1(n157), .I2(N17), .O(n3) );
  NR2P U12 ( .I1(n156), .I2(N16), .O(n4) );
  ND3S U13 ( .I1(wr_ptr[2]), .I2(n187), .I3(n296), .O(n289) );
  BUF1 U14 ( .I(n293), .O(n163) );
  ND2S U15 ( .I1(n295), .I2(n186), .O(n294) );
  BUF1 U16 ( .I(n292), .O(n162) );
  BUF1 U17 ( .I(n289), .O(n159) );
  ND3S U18 ( .I1(wr_ptr[1]), .I2(n188), .I3(n176), .O(n291) );
  BUF1CK U19 ( .I(n173), .O(n172) );
  BUF1CK U20 ( .I(n173), .O(n171) );
  BUF1CK U21 ( .I(n173), .O(n1701) );
  BUF1CK U22 ( .I(n174), .O(n169) );
  BUF1CK U23 ( .I(n174), .O(n168) );
  BUF1CK U24 ( .I(n175), .O(n167) );
  BUF1CK U25 ( .I(n175), .O(n166) );
  INV1S U26 ( .I(n164), .O(n173) );
  INV1S U27 ( .I(n164), .O(n174) );
  INV1S U28 ( .I(n294), .O(n176) );
  BUF1CK U29 ( .I(rst), .O(n164) );
  INV1S U30 ( .I(n165), .O(n175) );
  BUF1CK U31 ( .I(rst), .O(n165) );
  AN2 U32 ( .I1(w_en), .I2(n286), .O(n295) );
  ND3 U33 ( .I1(n187), .I2(n188), .I3(n176), .O(n293) );
  OAI12HS U34 ( .B1(n297), .B2(n188), .A1(n5), .O(n274) );
  ND3 U35 ( .I1(n187), .I2(n188), .I3(n296), .O(n292) );
  OAI12HS U36 ( .B1(n295), .B2(n186), .A1(n294), .O(n272) );
  INV1S U37 ( .I(n286), .O(full) );
  INV1S U38 ( .I(n282), .O(empty) );
  MOAI1S U39 ( .A1(n196), .A2(n287), .B1(buffer[0]), .B2(n287), .O(n200) );
  MOAI1S U40 ( .A1(n189), .A2(n287), .B1(buffer[7]), .B2(n287), .O(n201) );
  MOAI1S U41 ( .A1(n195), .A2(n287), .B1(buffer[1]), .B2(n287), .O(n202) );
  MOAI1S U42 ( .A1(n194), .A2(n287), .B1(buffer[2]), .B2(n287), .O(n203) );
  MOAI1S U43 ( .A1(n193), .A2(n287), .B1(buffer[3]), .B2(n287), .O(n204) );
  MOAI1S U44 ( .A1(n192), .A2(n287), .B1(buffer[4]), .B2(n287), .O(n205) );
  MOAI1S U45 ( .A1(n191), .A2(n287), .B1(buffer[5]), .B2(n287), .O(n206) );
  MOAI1S U46 ( .A1(n190), .A2(n287), .B1(buffer[6]), .B2(n287), .O(n207) );
  AN2 U47 ( .I1(n295), .I2(wr_ptr[0]), .O(n296) );
  MOAI1S U48 ( .A1(n196), .A2(n5), .B1(buffer[32]), .B2(n5), .O(n232) );
  MOAI1S U49 ( .A1(n189), .A2(n5), .B1(buffer[39]), .B2(n5), .O(n233) );
  MOAI1S U50 ( .A1(n195), .A2(n5), .B1(buffer[33]), .B2(n5), .O(n234) );
  MOAI1S U51 ( .A1(n194), .A2(n5), .B1(buffer[34]), .B2(n5), .O(n235) );
  MOAI1S U52 ( .A1(n193), .A2(n5), .B1(buffer[35]), .B2(n5), .O(n236) );
  MOAI1S U53 ( .A1(n192), .A2(n5), .B1(buffer[36]), .B2(n5), .O(n237) );
  MOAI1S U54 ( .A1(n191), .A2(n5), .B1(buffer[37]), .B2(n5), .O(n238) );
  MOAI1S U55 ( .A1(n190), .A2(n5), .B1(buffer[38]), .B2(n5), .O(n239) );
  MOAI1S U56 ( .A1(n196), .A2(n1601), .B1(buffer[24]), .B2(n1601), .O(n224) );
  MOAI1S U57 ( .A1(n189), .A2(n1601), .B1(buffer[31]), .B2(n1601), .O(n225) );
  MOAI1S U58 ( .A1(n195), .A2(n1601), .B1(buffer[25]), .B2(n1601), .O(n226) );
  MOAI1S U59 ( .A1(n194), .A2(n1601), .B1(buffer[26]), .B2(n1601), .O(n227) );
  MOAI1S U60 ( .A1(n193), .A2(n1601), .B1(buffer[27]), .B2(n1601), .O(n228) );
  MOAI1S U61 ( .A1(n192), .A2(n1601), .B1(buffer[28]), .B2(n1601), .O(n229) );
  MOAI1S U62 ( .A1(n191), .A2(n1601), .B1(buffer[29]), .B2(n1601), .O(n230) );
  MOAI1S U63 ( .A1(n190), .A2(n1601), .B1(buffer[30]), .B2(n1601), .O(n231) );
  ND3S U64 ( .I1(wr_ptr[2]), .I2(n187), .I3(n176), .O(n290) );
  MOAI1S U65 ( .A1(n196), .A2(n158), .B1(buffer[8]), .B2(n158), .O(n208) );
  MOAI1S U66 ( .A1(n189), .A2(n158), .B1(buffer[15]), .B2(n158), .O(n209) );
  MOAI1S U67 ( .A1(n195), .A2(n158), .B1(buffer[9]), .B2(n158), .O(n210) );
  MOAI1S U68 ( .A1(n194), .A2(n158), .B1(buffer[10]), .B2(n158), .O(n211) );
  MOAI1S U69 ( .A1(n193), .A2(n158), .B1(buffer[11]), .B2(n158), .O(n212) );
  MOAI1S U70 ( .A1(n192), .A2(n158), .B1(buffer[12]), .B2(n158), .O(n213) );
  MOAI1S U71 ( .A1(n191), .A2(n158), .B1(buffer[13]), .B2(n158), .O(n214) );
  MOAI1S U72 ( .A1(n190), .A2(n158), .B1(buffer[14]), .B2(n158), .O(n215) );
  MOAI1S U73 ( .A1(n196), .A2(n161), .B1(buffer[40]), .B2(n161), .O(n240) );
  MOAI1S U74 ( .A1(n189), .A2(n161), .B1(buffer[47]), .B2(n161), .O(n241) );
  MOAI1S U75 ( .A1(n195), .A2(n161), .B1(buffer[41]), .B2(n161), .O(n242) );
  MOAI1S U76 ( .A1(n194), .A2(n161), .B1(buffer[42]), .B2(n161), .O(n243) );
  MOAI1S U77 ( .A1(n193), .A2(n161), .B1(buffer[43]), .B2(n161), .O(n244) );
  MOAI1S U78 ( .A1(n192), .A2(n161), .B1(buffer[44]), .B2(n161), .O(n245) );
  MOAI1S U79 ( .A1(n191), .A2(n161), .B1(buffer[45]), .B2(n161), .O(n246) );
  MOAI1S U80 ( .A1(n190), .A2(n161), .B1(buffer[46]), .B2(n161), .O(n247) );
  ND3S U81 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n176), .O(n288) );
  MOAI1S U82 ( .A1(n163), .A2(n196), .B1(buffer[56]), .B2(n163), .O(n256) );
  MOAI1S U83 ( .A1(n163), .A2(n189), .B1(buffer[63]), .B2(n163), .O(n257) );
  MOAI1S U84 ( .A1(n163), .A2(n195), .B1(buffer[57]), .B2(n163), .O(n258) );
  MOAI1S U85 ( .A1(n163), .A2(n194), .B1(buffer[58]), .B2(n163), .O(n259) );
  MOAI1S U86 ( .A1(n163), .A2(n193), .B1(buffer[59]), .B2(n163), .O(n260) );
  MOAI1S U87 ( .A1(n163), .A2(n192), .B1(buffer[60]), .B2(n163), .O(n261) );
  MOAI1S U88 ( .A1(n163), .A2(n191), .B1(buffer[61]), .B2(n163), .O(n262) );
  MOAI1S U89 ( .A1(n163), .A2(n190), .B1(buffer[62]), .B2(n163), .O(n263) );
  MOAI1S U90 ( .A1(n196), .A2(n162), .B1(buffer[48]), .B2(n162), .O(n248) );
  MOAI1S U91 ( .A1(n189), .A2(n162), .B1(buffer[55]), .B2(n162), .O(n249) );
  MOAI1S U92 ( .A1(n195), .A2(n162), .B1(buffer[49]), .B2(n162), .O(n250) );
  MOAI1S U93 ( .A1(n194), .A2(n162), .B1(buffer[50]), .B2(n162), .O(n251) );
  MOAI1S U94 ( .A1(n193), .A2(n162), .B1(buffer[51]), .B2(n162), .O(n252) );
  MOAI1S U95 ( .A1(n192), .A2(n162), .B1(buffer[52]), .B2(n162), .O(n253) );
  MOAI1S U96 ( .A1(n191), .A2(n162), .B1(buffer[53]), .B2(n162), .O(n254) );
  MOAI1S U97 ( .A1(n190), .A2(n162), .B1(buffer[54]), .B2(n162), .O(n255) );
  MOAI1S U98 ( .A1(n196), .A2(n159), .B1(buffer[16]), .B2(n159), .O(n216) );
  MOAI1S U99 ( .A1(n189), .A2(n159), .B1(buffer[23]), .B2(n159), .O(n217) );
  MOAI1S U100 ( .A1(n195), .A2(n159), .B1(buffer[17]), .B2(n159), .O(n218) );
  MOAI1S U101 ( .A1(n194), .A2(n159), .B1(buffer[18]), .B2(n159), .O(n219) );
  MOAI1S U102 ( .A1(n193), .A2(n159), .B1(buffer[19]), .B2(n159), .O(n220) );
  MOAI1S U103 ( .A1(n192), .A2(n159), .B1(buffer[20]), .B2(n159), .O(n221) );
  MOAI1S U104 ( .A1(n191), .A2(n159), .B1(buffer[21]), .B2(n159), .O(n222) );
  MOAI1S U105 ( .A1(n190), .A2(n159), .B1(buffer[22]), .B2(n159), .O(n223) );
  XOR2HS U106 ( .I1(wr_ptr[1]), .I2(n296), .O(n273) );
  INV1S U107 ( .I(data_in[0]), .O(n196) );
  INV1S U108 ( .I(data_in[7]), .O(n189) );
  INV1S U109 ( .I(data_in[1]), .O(n195) );
  INV1S U110 ( .I(data_in[2]), .O(n194) );
  INV1S U111 ( .I(data_in[3]), .O(n193) );
  INV1S U112 ( .I(data_in[4]), .O(n192) );
  INV1S U113 ( .I(data_in[5]), .O(n191) );
  INV1S U115 ( .I(data_in[6]), .O(n190) );
  INV1S U116 ( .I(wr_ptr[1]), .O(n187) );
  XOR2HS U117 ( .I1(N16), .I2(n187), .O(n278) );
  AOI13HS U118 ( .B1(n281), .B2(n177), .B3(wr_ptr[0]), .A1(n280), .O(n286) );
  AN4B1S U119 ( .I1(n279), .I2(n186), .I3(n278), .B1(n177), .O(n280) );
  ND3 U120 ( .I1(N16), .I2(n187), .I3(n279), .O(n276) );
  XNR2HS U122 ( .I1(N17), .I2(wr_ptr[2]), .O(n279) );
  MOAI1S U124 ( .A1(N16), .A2(n285), .B1(n283), .B2(N16), .O(n198) );
  ND3 U125 ( .I1(n279), .I2(n278), .I3(n275), .O(n282) );
  XOR2HS U126 ( .I1(n177), .I2(wr_ptr[0]), .O(n275) );
  AO12 U127 ( .B1(N17), .B2(N16), .A1(n283), .O(n285) );
  MOAI1S U128 ( .A1(n157), .A2(n285), .B1(n284), .B2(N17), .O(n199) );
  OR2 U129 ( .I1(n157), .I2(n283), .O(n284) );
  INV1S U130 ( .I(N15), .O(n177) );
  INV1S U131 ( .I(wr_ptr[0]), .O(n186) );
  MOAI1S U132 ( .A1(n185), .A2(n2), .B1(N54), .B2(n2), .O(n271) );
  INV1S U133 ( .I(data_out[1]), .O(n185) );
  MOAI1S U134 ( .A1(n184), .A2(n2), .B1(N53), .B2(n2), .O(n270) );
  INV1S U135 ( .I(data_out[2]), .O(n184) );
  MOAI1S U136 ( .A1(n183), .A2(n2), .B1(N52), .B2(n2), .O(n269) );
  INV1S U137 ( .I(data_out[3]), .O(n183) );
  MOAI1S U138 ( .A1(n182), .A2(n2), .B1(N51), .B2(n2), .O(n268) );
  INV1S U139 ( .I(data_out[4]), .O(n182) );
  MOAI1S U140 ( .A1(n181), .A2(n2), .B1(N50), .B2(n2), .O(n267) );
  INV1S U141 ( .I(data_out[5]), .O(n181) );
  MOAI1S U142 ( .A1(n180), .A2(n2), .B1(N49), .B2(n2), .O(n266) );
  INV1S U143 ( .I(data_out[6]), .O(n180) );
  MOAI1S U144 ( .A1(n178), .A2(n2), .B1(N55), .B2(n2), .O(n264) );
  INV1S U145 ( .I(data_out[0]), .O(n178) );
  INV1S U146 ( .I(N16), .O(n157) );
  MOAI1S U147 ( .A1(n179), .A2(n2), .B1(N48), .B2(n2), .O(n265) );
  INV1S U148 ( .I(data_out[7]), .O(n179) );
  INV1S U149 ( .I(N17), .O(n156) );
  NR2P U150 ( .I1(N16), .I2(N17), .O(n151) );
  XOR2HS U151 ( .I1(N15), .I2(n2), .O(n197) );
  INV1S U152 ( .I(wr_ptr[2]), .O(n188) );
  AOI22S U153 ( .A1(buffer[24]), .A2(n4), .B1(buffer[8]), .B2(n1), .O(n7) );
  AOI22S U154 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n3), .O(n6)
         );
  AN2 U155 ( .I1(n7), .I2(n6), .O(n14) );
  AOI22S U156 ( .A1(buffer[16]), .A2(n4), .B1(buffer[0]), .B2(n1), .O(n10) );
  AOI22S U157 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n3), .O(n8)
         );
  ND2 U158 ( .I1(n10), .I2(n8), .O(n11) );
  MOAI1S U159 ( .A1(N15), .A2(n14), .B1(n11), .B2(N15), .O(N55) );
  AOI22S U160 ( .A1(buffer[25]), .A2(n4), .B1(buffer[9]), .B2(n1), .O(n1700)
         );
  AOI22S U161 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n3), .O(n1600) );
  AN2 U162 ( .I1(n1700), .I2(n1600), .O(n21) );
  AOI22S U163 ( .A1(buffer[17]), .A2(n4), .B1(buffer[1]), .B2(n1), .O(n19) );
  AOI22S U164 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n3), .O(n18)
         );
  ND2 U165 ( .I1(n19), .I2(n18), .O(n20) );
  MOAI1S U166 ( .A1(N15), .A2(n21), .B1(n20), .B2(N15), .O(N54) );
  AOI22S U167 ( .A1(buffer[26]), .A2(n4), .B1(buffer[10]), .B2(n1), .O(n23) );
  AOI22S U168 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n3), .O(n22)
         );
  AN2 U169 ( .I1(n23), .I2(n22), .O(n28) );
  AOI22S U170 ( .A1(buffer[18]), .A2(n4), .B1(buffer[2]), .B2(n1), .O(n26) );
  AOI22S U171 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n3), .O(n24)
         );
  ND2 U172 ( .I1(n26), .I2(n24), .O(n27) );
  MOAI1S U173 ( .A1(N15), .A2(n28), .B1(n27), .B2(N15), .O(N53) );
  AOI22S U174 ( .A1(buffer[27]), .A2(n4), .B1(buffer[11]), .B2(n1), .O(n30) );
  AOI22S U175 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n3), .O(n29)
         );
  AN2 U176 ( .I1(n30), .I2(n29), .O(n34) );
  AOI22S U177 ( .A1(buffer[19]), .A2(n4), .B1(buffer[3]), .B2(n1), .O(n32) );
  AOI22S U178 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n3), .O(n31)
         );
  ND2 U179 ( .I1(n32), .I2(n31), .O(n33) );
  MOAI1S U180 ( .A1(N15), .A2(n34), .B1(n33), .B2(N15), .O(N52) );
  AOI22S U181 ( .A1(buffer[28]), .A2(n4), .B1(buffer[12]), .B2(n1), .O(n43) );
  AOI22S U182 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n3), .O(n35)
         );
  AN2 U183 ( .I1(n43), .I2(n35), .O(n136) );
  AOI22S U184 ( .A1(buffer[20]), .A2(n4), .B1(buffer[4]), .B2(n1), .O(n67) );
  AOI22S U185 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n3), .O(n490)
         );
  ND2 U186 ( .I1(n67), .I2(n490), .O(n135) );
  MOAI1S U187 ( .A1(N15), .A2(n136), .B1(n135), .B2(N15), .O(N51) );
  AOI22S U188 ( .A1(buffer[29]), .A2(n4), .B1(buffer[13]), .B2(n1), .O(n138)
         );
  AOI22S U189 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n3), .O(n137)
         );
  AN2 U190 ( .I1(n138), .I2(n137), .O(n142) );
  AOI22S U191 ( .A1(buffer[21]), .A2(n4), .B1(buffer[5]), .B2(n1), .O(n140) );
  AOI22S U192 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n3), .O(n139)
         );
  ND2 U193 ( .I1(n140), .I2(n139), .O(n141) );
  MOAI1S U194 ( .A1(N15), .A2(n142), .B1(n141), .B2(N15), .O(N50) );
  AOI22S U195 ( .A1(buffer[30]), .A2(n4), .B1(buffer[14]), .B2(n1), .O(n144)
         );
  AOI22S U196 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n3), .O(n143)
         );
  AN2 U197 ( .I1(n144), .I2(n143), .O(n148) );
  AOI22S U198 ( .A1(buffer[22]), .A2(n4), .B1(buffer[6]), .B2(n1), .O(n146) );
  AOI22S U199 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n3), .O(n145)
         );
  ND2 U200 ( .I1(n146), .I2(n145), .O(n147) );
  MOAI1S U201 ( .A1(N15), .A2(n148), .B1(n147), .B2(N15), .O(N49) );
  AOI22S U202 ( .A1(buffer[23]), .A2(n4), .B1(buffer[7]), .B2(n1), .O(n150) );
  AOI22S U203 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n3), .O(n149)
         );
  AN2 U204 ( .I1(n150), .I2(n149), .O(n155) );
  AOI22S U205 ( .A1(buffer[31]), .A2(n4), .B1(buffer[15]), .B2(n1), .O(n153)
         );
  AOI22S U206 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n3), .O(n152)
         );
  ND2 U207 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U208 ( .A1(n155), .A2(n177), .B1(n154), .B2(n177), .O(N48) );
endmodule


module sync_fifo_0 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n11, n14, n1600, n1700, n18, n19, n20, n21, n22,
         n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n43, n490,
         n67, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n1601, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n1701, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  ND2 U114 ( .I1(n2), .I2(N15), .O(n283) );
  ND2 U121 ( .I1(n277), .I2(n276), .O(n281) );
  OR3 U123 ( .I1(n279), .I2(N16), .I3(n187), .O(n277) );
  QDFFRBN buffer_reg_3__6_ ( .D(n239), .CK(clk), .RB(n168), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n238), .CK(clk), .RB(n168), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n237), .CK(clk), .RB(n168), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n236), .CK(clk), .RB(n168), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n235), .CK(clk), .RB(n168), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n234), .CK(clk), .RB(n168), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n232), .CK(clk), .RB(n168), .Q(buffer[32]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n223), .CK(clk), .RB(n1701), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n222), .CK(clk), .RB(n171), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n221), .CK(clk), .RB(n171), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n220), .CK(clk), .RB(n171), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n219), .CK(clk), .RB(n171), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n218), .CK(clk), .RB(n171), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n216), .CK(clk), .RB(n171), .Q(buffer[16]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n233), .CK(clk), .RB(n168), .Q(buffer[39]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n217), .CK(clk), .RB(n171), .Q(buffer[23]) );
  QDFFRBN data_out_reg_7_ ( .D(n265), .CK(clk), .RB(n166), .Q(data_out[7]) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n272), .CK(clk), .RB(n167), .Q(wr_ptr[0]) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n197), .CK(clk), .RB(n166), .Q(N15) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n198), .CK(clk), .RB(n166), .Q(N16) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n274), .CK(clk), .RB(n167), .Q(wr_ptr[2]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n199), .CK(clk), .RB(n166), .Q(N17) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n273), .CK(clk), .RB(n167), .Q(wr_ptr[1]) );
  QDFFRBN data_out_reg_6_ ( .D(n266), .CK(clk), .RB(n166), .Q(data_out[6]) );
  QDFFRBN data_out_reg_3_ ( .D(n269), .CK(clk), .RB(n166), .Q(data_out[3]) );
  QDFFRBN data_out_reg_5_ ( .D(n267), .CK(clk), .RB(n166), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n268), .CK(clk), .RB(n166), .Q(data_out[4]) );
  QDFFRBN data_out_reg_2_ ( .D(n270), .CK(clk), .RB(n166), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n271), .CK(clk), .RB(n166), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n264), .CK(clk), .RB(n166), .Q(data_out[0]) );
  QDFFRBS buffer_reg_2__7_ ( .D(n241), .CK(clk), .RB(n167), .Q(buffer[47]) );
  QDFFRBS buffer_reg_6__7_ ( .D(n209), .CK(clk), .RB(n172), .Q(buffer[15]) );
  QDFFRBS buffer_reg_7__6_ ( .D(n207), .CK(clk), .RB(n172), .Q(buffer[6]) );
  QDFFRBS buffer_reg_7__5_ ( .D(n206), .CK(clk), .RB(n172), .Q(buffer[5]) );
  QDFFRBS buffer_reg_7__4_ ( .D(n205), .CK(clk), .RB(n172), .Q(buffer[4]) );
  QDFFRBS buffer_reg_7__3_ ( .D(n204), .CK(clk), .RB(n172), .Q(buffer[3]) );
  QDFFRBS buffer_reg_7__2_ ( .D(n203), .CK(clk), .RB(n172), .Q(buffer[2]) );
  QDFFRBS buffer_reg_7__1_ ( .D(n202), .CK(clk), .RB(n172), .Q(buffer[1]) );
  QDFFRBS buffer_reg_7__0_ ( .D(n200), .CK(clk), .RB(n175), .Q(buffer[0]) );
  QDFFRBS buffer_reg_0__7_ ( .D(n257), .CK(clk), .RB(n169), .Q(buffer[63]) );
  QDFFRBS buffer_reg_4__7_ ( .D(n225), .CK(clk), .RB(n1701), .Q(buffer[31]) );
  QDFFRBS buffer_reg_1__6_ ( .D(n255), .CK(clk), .RB(n169), .Q(buffer[54]) );
  QDFFRBS buffer_reg_1__5_ ( .D(n254), .CK(clk), .RB(n169), .Q(buffer[53]) );
  QDFFRBS buffer_reg_1__4_ ( .D(n253), .CK(clk), .RB(n169), .Q(buffer[52]) );
  QDFFRBS buffer_reg_1__3_ ( .D(n252), .CK(clk), .RB(n169), .Q(buffer[51]) );
  QDFFRBS buffer_reg_1__2_ ( .D(n251), .CK(clk), .RB(n169), .Q(buffer[50]) );
  QDFFRBS buffer_reg_1__1_ ( .D(n250), .CK(clk), .RB(n169), .Q(buffer[49]) );
  QDFFRBS buffer_reg_1__0_ ( .D(n248), .CK(clk), .RB(n1701), .Q(buffer[48]) );
  QDFFRBS buffer_reg_7__7_ ( .D(n201), .CK(clk), .RB(n172), .Q(buffer[7]) );
  QDFFRBS buffer_reg_6__6_ ( .D(n215), .CK(clk), .RB(n171), .Q(buffer[14]) );
  QDFFRBS buffer_reg_6__5_ ( .D(n214), .CK(clk), .RB(n171), .Q(buffer[13]) );
  QDFFRBS buffer_reg_6__4_ ( .D(n213), .CK(clk), .RB(n171), .Q(buffer[12]) );
  QDFFRBS buffer_reg_6__3_ ( .D(n212), .CK(clk), .RB(n171), .Q(buffer[11]) );
  QDFFRBS buffer_reg_6__2_ ( .D(n211), .CK(clk), .RB(n172), .Q(buffer[10]) );
  QDFFRBS buffer_reg_6__1_ ( .D(n210), .CK(clk), .RB(n172), .Q(buffer[9]) );
  QDFFRBS buffer_reg_6__0_ ( .D(n208), .CK(clk), .RB(n172), .Q(buffer[8]) );
  QDFFRBS buffer_reg_2__6_ ( .D(n247), .CK(clk), .RB(n167), .Q(buffer[46]) );
  QDFFRBS buffer_reg_2__5_ ( .D(n246), .CK(clk), .RB(n167), .Q(buffer[45]) );
  QDFFRBS buffer_reg_2__4_ ( .D(n245), .CK(clk), .RB(n167), .Q(buffer[44]) );
  QDFFRBS buffer_reg_2__3_ ( .D(n244), .CK(clk), .RB(n167), .Q(buffer[43]) );
  QDFFRBS buffer_reg_2__2_ ( .D(n243), .CK(clk), .RB(n167), .Q(buffer[42]) );
  QDFFRBS buffer_reg_2__1_ ( .D(n242), .CK(clk), .RB(n167), .Q(buffer[41]) );
  QDFFRBS buffer_reg_2__0_ ( .D(n240), .CK(clk), .RB(n167), .Q(buffer[40]) );
  QDFFRBS buffer_reg_1__7_ ( .D(n249), .CK(clk), .RB(n1701), .Q(buffer[55]) );
  QDFFRBS buffer_reg_4__6_ ( .D(n231), .CK(clk), .RB(n1701), .Q(buffer[30]) );
  QDFFRBS buffer_reg_4__5_ ( .D(n230), .CK(clk), .RB(n1701), .Q(buffer[29]) );
  QDFFRBS buffer_reg_4__4_ ( .D(n229), .CK(clk), .RB(n1701), .Q(buffer[28]) );
  QDFFRBS buffer_reg_4__3_ ( .D(n228), .CK(clk), .RB(n1701), .Q(buffer[27]) );
  QDFFRBS buffer_reg_4__2_ ( .D(n227), .CK(clk), .RB(n1701), .Q(buffer[26]) );
  QDFFRBS buffer_reg_4__1_ ( .D(n226), .CK(clk), .RB(n1701), .Q(buffer[25]) );
  QDFFRBS buffer_reg_4__0_ ( .D(n224), .CK(clk), .RB(n1701), .Q(buffer[24]) );
  QDFFRBS buffer_reg_0__6_ ( .D(n263), .CK(clk), .RB(n168), .Q(buffer[62]) );
  QDFFRBS buffer_reg_0__5_ ( .D(n262), .CK(clk), .RB(n168), .Q(buffer[61]) );
  QDFFRBS buffer_reg_0__4_ ( .D(n261), .CK(clk), .RB(n168), .Q(buffer[60]) );
  QDFFRBS buffer_reg_0__3_ ( .D(n260), .CK(clk), .RB(n169), .Q(buffer[59]) );
  QDFFRBS buffer_reg_0__2_ ( .D(n259), .CK(clk), .RB(n169), .Q(buffer[58]) );
  QDFFRBS buffer_reg_0__1_ ( .D(n258), .CK(clk), .RB(n169), .Q(buffer[57]) );
  QDFFRBS buffer_reg_0__0_ ( .D(n256), .CK(clk), .RB(n169), .Q(buffer[56]) );
  BUF2 U3 ( .I(n288), .O(n158) );
  BUF2 U4 ( .I(n291), .O(n161) );
  BUF2 U5 ( .I(n290), .O(n1601) );
  AN2 U6 ( .I1(n295), .I2(wr_ptr[0]), .O(n296) );
  NR2P U7 ( .I1(n156), .I2(n157), .O(n1) );
  AN2 U8 ( .I1(r_en), .I2(n282), .O(n2) );
  NR2P U9 ( .I1(n157), .I2(N17), .O(n3) );
  NR2P U10 ( .I1(n156), .I2(N16), .O(n4) );
  ND2P U11 ( .I1(n297), .I2(wr_ptr[2]), .O(n287) );
  ND2P U12 ( .I1(n297), .I2(n188), .O(n5) );
  BUF1 U13 ( .I(n293), .O(n163) );
  ND2S U14 ( .I1(n295), .I2(n186), .O(n294) );
  BUF1 U15 ( .I(n289), .O(n159) );
  ND3S U16 ( .I1(wr_ptr[2]), .I2(n187), .I3(n296), .O(n289) );
  ND3S U17 ( .I1(wr_ptr[1]), .I2(n188), .I3(n176), .O(n291) );
  BUF1CK U18 ( .I(n173), .O(n172) );
  BUF1CK U19 ( .I(n173), .O(n171) );
  BUF1CK U20 ( .I(n173), .O(n1701) );
  BUF1CK U21 ( .I(n174), .O(n169) );
  BUF1CK U22 ( .I(n174), .O(n168) );
  BUF1CK U23 ( .I(n175), .O(n167) );
  BUF1CK U24 ( .I(n175), .O(n166) );
  INV1S U25 ( .I(n164), .O(n173) );
  INV1S U26 ( .I(n164), .O(n174) );
  INV1S U27 ( .I(n294), .O(n176) );
  BUF1CK U28 ( .I(rst), .O(n164) );
  INV1S U29 ( .I(n165), .O(n175) );
  BUF1CK U30 ( .I(rst), .O(n165) );
  AN2 U31 ( .I1(w_en), .I2(n286), .O(n295) );
  ND3 U32 ( .I1(n187), .I2(n188), .I3(n176), .O(n293) );
  OAI12HS U33 ( .B1(n297), .B2(n188), .A1(n5), .O(n274) );
  BUF1CK U34 ( .I(n292), .O(n162) );
  ND3 U35 ( .I1(n187), .I2(n188), .I3(n296), .O(n292) );
  OAI12HS U36 ( .B1(n295), .B2(n186), .A1(n294), .O(n272) );
  INV1S U37 ( .I(n286), .O(full) );
  INV1S U38 ( .I(n282), .O(empty) );
  MOAI1S U39 ( .A1(n196), .A2(n287), .B1(buffer[0]), .B2(n287), .O(n200) );
  MOAI1S U40 ( .A1(n189), .A2(n287), .B1(buffer[7]), .B2(n287), .O(n201) );
  MOAI1S U41 ( .A1(n195), .A2(n287), .B1(buffer[1]), .B2(n287), .O(n202) );
  MOAI1S U42 ( .A1(n194), .A2(n287), .B1(buffer[2]), .B2(n287), .O(n203) );
  MOAI1S U43 ( .A1(n193), .A2(n287), .B1(buffer[3]), .B2(n287), .O(n204) );
  MOAI1S U44 ( .A1(n192), .A2(n287), .B1(buffer[4]), .B2(n287), .O(n205) );
  MOAI1S U45 ( .A1(n191), .A2(n287), .B1(buffer[5]), .B2(n287), .O(n206) );
  MOAI1S U46 ( .A1(n190), .A2(n287), .B1(buffer[6]), .B2(n287), .O(n207) );
  AN2 U47 ( .I1(n296), .I2(wr_ptr[1]), .O(n297) );
  MOAI1S U48 ( .A1(n196), .A2(n5), .B1(buffer[32]), .B2(n5), .O(n232) );
  MOAI1S U49 ( .A1(n189), .A2(n5), .B1(buffer[39]), .B2(n5), .O(n233) );
  MOAI1S U50 ( .A1(n195), .A2(n5), .B1(buffer[33]), .B2(n5), .O(n234) );
  MOAI1S U51 ( .A1(n194), .A2(n5), .B1(buffer[34]), .B2(n5), .O(n235) );
  MOAI1S U52 ( .A1(n193), .A2(n5), .B1(buffer[35]), .B2(n5), .O(n236) );
  MOAI1S U53 ( .A1(n192), .A2(n5), .B1(buffer[36]), .B2(n5), .O(n237) );
  MOAI1S U54 ( .A1(n191), .A2(n5), .B1(buffer[37]), .B2(n5), .O(n238) );
  MOAI1S U55 ( .A1(n190), .A2(n5), .B1(buffer[38]), .B2(n5), .O(n239) );
  MOAI1S U56 ( .A1(n196), .A2(n1601), .B1(buffer[24]), .B2(n1601), .O(n224) );
  MOAI1S U57 ( .A1(n189), .A2(n1601), .B1(buffer[31]), .B2(n1601), .O(n225) );
  MOAI1S U58 ( .A1(n195), .A2(n1601), .B1(buffer[25]), .B2(n1601), .O(n226) );
  MOAI1S U59 ( .A1(n194), .A2(n1601), .B1(buffer[26]), .B2(n1601), .O(n227) );
  MOAI1S U60 ( .A1(n193), .A2(n1601), .B1(buffer[27]), .B2(n1601), .O(n228) );
  MOAI1S U61 ( .A1(n192), .A2(n1601), .B1(buffer[28]), .B2(n1601), .O(n229) );
  MOAI1S U62 ( .A1(n191), .A2(n1601), .B1(buffer[29]), .B2(n1601), .O(n230) );
  MOAI1S U63 ( .A1(n190), .A2(n1601), .B1(buffer[30]), .B2(n1601), .O(n231) );
  ND3S U64 ( .I1(wr_ptr[2]), .I2(n187), .I3(n176), .O(n290) );
  MOAI1S U65 ( .A1(n196), .A2(n158), .B1(buffer[8]), .B2(n158), .O(n208) );
  MOAI1S U66 ( .A1(n189), .A2(n158), .B1(buffer[15]), .B2(n158), .O(n209) );
  MOAI1S U67 ( .A1(n195), .A2(n158), .B1(buffer[9]), .B2(n158), .O(n210) );
  MOAI1S U68 ( .A1(n194), .A2(n158), .B1(buffer[10]), .B2(n158), .O(n211) );
  MOAI1S U69 ( .A1(n193), .A2(n158), .B1(buffer[11]), .B2(n158), .O(n212) );
  MOAI1S U70 ( .A1(n192), .A2(n158), .B1(buffer[12]), .B2(n158), .O(n213) );
  MOAI1S U71 ( .A1(n191), .A2(n158), .B1(buffer[13]), .B2(n158), .O(n214) );
  MOAI1S U72 ( .A1(n190), .A2(n158), .B1(buffer[14]), .B2(n158), .O(n215) );
  MOAI1S U73 ( .A1(n196), .A2(n161), .B1(buffer[40]), .B2(n161), .O(n240) );
  MOAI1S U74 ( .A1(n189), .A2(n161), .B1(buffer[47]), .B2(n161), .O(n241) );
  MOAI1S U75 ( .A1(n195), .A2(n161), .B1(buffer[41]), .B2(n161), .O(n242) );
  MOAI1S U76 ( .A1(n194), .A2(n161), .B1(buffer[42]), .B2(n161), .O(n243) );
  MOAI1S U77 ( .A1(n193), .A2(n161), .B1(buffer[43]), .B2(n161), .O(n244) );
  MOAI1S U78 ( .A1(n192), .A2(n161), .B1(buffer[44]), .B2(n161), .O(n245) );
  MOAI1S U79 ( .A1(n191), .A2(n161), .B1(buffer[45]), .B2(n161), .O(n246) );
  MOAI1S U80 ( .A1(n190), .A2(n161), .B1(buffer[46]), .B2(n161), .O(n247) );
  ND3S U81 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n176), .O(n288) );
  MOAI1S U82 ( .A1(n163), .A2(n196), .B1(buffer[56]), .B2(n163), .O(n256) );
  MOAI1S U83 ( .A1(n163), .A2(n189), .B1(buffer[63]), .B2(n163), .O(n257) );
  MOAI1S U84 ( .A1(n163), .A2(n195), .B1(buffer[57]), .B2(n163), .O(n258) );
  MOAI1S U85 ( .A1(n163), .A2(n194), .B1(buffer[58]), .B2(n163), .O(n259) );
  MOAI1S U86 ( .A1(n163), .A2(n193), .B1(buffer[59]), .B2(n163), .O(n260) );
  MOAI1S U87 ( .A1(n163), .A2(n192), .B1(buffer[60]), .B2(n163), .O(n261) );
  MOAI1S U88 ( .A1(n163), .A2(n191), .B1(buffer[61]), .B2(n163), .O(n262) );
  MOAI1S U89 ( .A1(n163), .A2(n190), .B1(buffer[62]), .B2(n163), .O(n263) );
  MOAI1S U90 ( .A1(n196), .A2(n162), .B1(buffer[48]), .B2(n162), .O(n248) );
  MOAI1S U91 ( .A1(n189), .A2(n162), .B1(buffer[55]), .B2(n162), .O(n249) );
  MOAI1S U92 ( .A1(n195), .A2(n162), .B1(buffer[49]), .B2(n162), .O(n250) );
  MOAI1S U93 ( .A1(n194), .A2(n162), .B1(buffer[50]), .B2(n162), .O(n251) );
  MOAI1S U94 ( .A1(n193), .A2(n162), .B1(buffer[51]), .B2(n162), .O(n252) );
  MOAI1S U95 ( .A1(n192), .A2(n162), .B1(buffer[52]), .B2(n162), .O(n253) );
  MOAI1S U96 ( .A1(n191), .A2(n162), .B1(buffer[53]), .B2(n162), .O(n254) );
  MOAI1S U97 ( .A1(n190), .A2(n162), .B1(buffer[54]), .B2(n162), .O(n255) );
  MOAI1S U98 ( .A1(n196), .A2(n159), .B1(buffer[16]), .B2(n159), .O(n216) );
  MOAI1S U99 ( .A1(n189), .A2(n159), .B1(buffer[23]), .B2(n159), .O(n217) );
  MOAI1S U100 ( .A1(n195), .A2(n159), .B1(buffer[17]), .B2(n159), .O(n218) );
  MOAI1S U101 ( .A1(n194), .A2(n159), .B1(buffer[18]), .B2(n159), .O(n219) );
  MOAI1S U102 ( .A1(n193), .A2(n159), .B1(buffer[19]), .B2(n159), .O(n220) );
  MOAI1S U103 ( .A1(n192), .A2(n159), .B1(buffer[20]), .B2(n159), .O(n221) );
  MOAI1S U104 ( .A1(n191), .A2(n159), .B1(buffer[21]), .B2(n159), .O(n222) );
  MOAI1S U105 ( .A1(n190), .A2(n159), .B1(buffer[22]), .B2(n159), .O(n223) );
  XOR2HS U106 ( .I1(wr_ptr[1]), .I2(n296), .O(n273) );
  INV1S U107 ( .I(data_in[0]), .O(n196) );
  INV1S U108 ( .I(data_in[7]), .O(n189) );
  INV1S U109 ( .I(data_in[1]), .O(n195) );
  INV1S U110 ( .I(data_in[2]), .O(n194) );
  INV1S U111 ( .I(data_in[3]), .O(n193) );
  INV1S U112 ( .I(data_in[4]), .O(n192) );
  INV1S U113 ( .I(data_in[5]), .O(n191) );
  INV1S U115 ( .I(data_in[6]), .O(n190) );
  INV1S U116 ( .I(wr_ptr[1]), .O(n187) );
  XOR2HS U117 ( .I1(N16), .I2(n187), .O(n278) );
  AOI13HS U118 ( .B1(n281), .B2(n177), .B3(wr_ptr[0]), .A1(n280), .O(n286) );
  AN4B1S U119 ( .I1(n279), .I2(n186), .I3(n278), .B1(n177), .O(n280) );
  ND3 U120 ( .I1(N16), .I2(n187), .I3(n279), .O(n276) );
  XNR2HS U122 ( .I1(N17), .I2(wr_ptr[2]), .O(n279) );
  MOAI1S U124 ( .A1(N16), .A2(n285), .B1(n283), .B2(N16), .O(n198) );
  ND3 U125 ( .I1(n279), .I2(n278), .I3(n275), .O(n282) );
  XOR2HS U126 ( .I1(n177), .I2(wr_ptr[0]), .O(n275) );
  AO12 U127 ( .B1(N17), .B2(N16), .A1(n283), .O(n285) );
  MOAI1S U128 ( .A1(n157), .A2(n285), .B1(n284), .B2(N17), .O(n199) );
  OR2 U129 ( .I1(n157), .I2(n283), .O(n284) );
  INV1S U130 ( .I(N15), .O(n177) );
  INV1S U131 ( .I(wr_ptr[0]), .O(n186) );
  MOAI1S U132 ( .A1(n185), .A2(n2), .B1(N54), .B2(n2), .O(n271) );
  INV1S U133 ( .I(data_out[1]), .O(n185) );
  MOAI1S U134 ( .A1(n184), .A2(n2), .B1(N53), .B2(n2), .O(n270) );
  INV1S U135 ( .I(data_out[2]), .O(n184) );
  MOAI1S U136 ( .A1(n183), .A2(n2), .B1(N52), .B2(n2), .O(n269) );
  INV1S U137 ( .I(data_out[3]), .O(n183) );
  MOAI1S U138 ( .A1(n182), .A2(n2), .B1(N51), .B2(n2), .O(n268) );
  INV1S U139 ( .I(data_out[4]), .O(n182) );
  MOAI1S U140 ( .A1(n181), .A2(n2), .B1(N50), .B2(n2), .O(n267) );
  INV1S U141 ( .I(data_out[5]), .O(n181) );
  MOAI1S U142 ( .A1(n180), .A2(n2), .B1(N49), .B2(n2), .O(n266) );
  INV1S U143 ( .I(data_out[6]), .O(n180) );
  MOAI1S U144 ( .A1(n178), .A2(n2), .B1(N55), .B2(n2), .O(n264) );
  INV1S U145 ( .I(data_out[0]), .O(n178) );
  INV1S U146 ( .I(N16), .O(n157) );
  MOAI1S U147 ( .A1(n179), .A2(n2), .B1(N48), .B2(n2), .O(n265) );
  INV1S U148 ( .I(data_out[7]), .O(n179) );
  INV1S U149 ( .I(N17), .O(n156) );
  NR2P U150 ( .I1(N16), .I2(N17), .O(n151) );
  XOR2HS U151 ( .I1(N15), .I2(n2), .O(n197) );
  INV1S U152 ( .I(wr_ptr[2]), .O(n188) );
  AOI22S U153 ( .A1(buffer[24]), .A2(n4), .B1(buffer[8]), .B2(n1), .O(n7) );
  AOI22S U154 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n3), .O(n6)
         );
  AN2 U155 ( .I1(n7), .I2(n6), .O(n14) );
  AOI22S U156 ( .A1(buffer[16]), .A2(n4), .B1(buffer[0]), .B2(n1), .O(n10) );
  AOI22S U157 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n3), .O(n8)
         );
  ND2 U158 ( .I1(n10), .I2(n8), .O(n11) );
  MOAI1S U159 ( .A1(N15), .A2(n14), .B1(n11), .B2(N15), .O(N55) );
  AOI22S U160 ( .A1(buffer[25]), .A2(n4), .B1(buffer[9]), .B2(n1), .O(n1700)
         );
  AOI22S U161 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n3), .O(n1600) );
  AN2 U162 ( .I1(n1700), .I2(n1600), .O(n21) );
  AOI22S U163 ( .A1(buffer[17]), .A2(n4), .B1(buffer[1]), .B2(n1), .O(n19) );
  AOI22S U164 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n3), .O(n18)
         );
  ND2 U165 ( .I1(n19), .I2(n18), .O(n20) );
  MOAI1S U166 ( .A1(N15), .A2(n21), .B1(n20), .B2(N15), .O(N54) );
  AOI22S U167 ( .A1(buffer[26]), .A2(n4), .B1(buffer[10]), .B2(n1), .O(n23) );
  AOI22S U168 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n3), .O(n22)
         );
  AN2 U169 ( .I1(n23), .I2(n22), .O(n28) );
  AOI22S U170 ( .A1(buffer[18]), .A2(n4), .B1(buffer[2]), .B2(n1), .O(n26) );
  AOI22S U171 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n3), .O(n24)
         );
  ND2 U172 ( .I1(n26), .I2(n24), .O(n27) );
  MOAI1S U173 ( .A1(N15), .A2(n28), .B1(n27), .B2(N15), .O(N53) );
  AOI22S U174 ( .A1(buffer[27]), .A2(n4), .B1(buffer[11]), .B2(n1), .O(n30) );
  AOI22S U175 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n3), .O(n29)
         );
  AN2 U176 ( .I1(n30), .I2(n29), .O(n34) );
  AOI22S U177 ( .A1(buffer[19]), .A2(n4), .B1(buffer[3]), .B2(n1), .O(n32) );
  AOI22S U178 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n3), .O(n31)
         );
  ND2 U179 ( .I1(n32), .I2(n31), .O(n33) );
  MOAI1S U180 ( .A1(N15), .A2(n34), .B1(n33), .B2(N15), .O(N52) );
  AOI22S U181 ( .A1(buffer[28]), .A2(n4), .B1(buffer[12]), .B2(n1), .O(n43) );
  AOI22S U182 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n3), .O(n35)
         );
  AN2 U183 ( .I1(n43), .I2(n35), .O(n136) );
  AOI22S U184 ( .A1(buffer[20]), .A2(n4), .B1(buffer[4]), .B2(n1), .O(n67) );
  AOI22S U185 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n3), .O(n490)
         );
  ND2 U186 ( .I1(n67), .I2(n490), .O(n135) );
  MOAI1S U187 ( .A1(N15), .A2(n136), .B1(n135), .B2(N15), .O(N51) );
  AOI22S U188 ( .A1(buffer[29]), .A2(n4), .B1(buffer[13]), .B2(n1), .O(n138)
         );
  AOI22S U189 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n3), .O(n137)
         );
  AN2 U190 ( .I1(n138), .I2(n137), .O(n142) );
  AOI22S U191 ( .A1(buffer[21]), .A2(n4), .B1(buffer[5]), .B2(n1), .O(n140) );
  AOI22S U192 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n3), .O(n139)
         );
  ND2 U193 ( .I1(n140), .I2(n139), .O(n141) );
  MOAI1S U194 ( .A1(N15), .A2(n142), .B1(n141), .B2(N15), .O(N50) );
  AOI22S U195 ( .A1(buffer[30]), .A2(n4), .B1(buffer[14]), .B2(n1), .O(n144)
         );
  AOI22S U196 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n3), .O(n143)
         );
  AN2 U197 ( .I1(n144), .I2(n143), .O(n148) );
  AOI22S U198 ( .A1(buffer[22]), .A2(n4), .B1(buffer[6]), .B2(n1), .O(n146) );
  AOI22S U199 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n3), .O(n145)
         );
  ND2 U200 ( .I1(n146), .I2(n145), .O(n147) );
  MOAI1S U201 ( .A1(N15), .A2(n148), .B1(n147), .B2(N15), .O(N49) );
  AOI22S U202 ( .A1(buffer[23]), .A2(n4), .B1(buffer[7]), .B2(n1), .O(n150) );
  AOI22S U203 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n3), .O(n149)
         );
  AN2 U204 ( .I1(n150), .I2(n149), .O(n155) );
  AOI22S U205 ( .A1(buffer[31]), .A2(n4), .B1(buffer[15]), .B2(n1), .O(n153)
         );
  AOI22S U206 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n3), .O(n152)
         );
  ND2 U207 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U208 ( .A1(n155), .A2(n177), .B1(n154), .B2(n177), .O(N48) );
endmodule


module mac_15_DW_mult_uns_0_DW_mult_uns_15 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n131) );
  INV1S U85 ( .I(b[2]), .O(n142) );
  INV1S U86 ( .I(b[1]), .O(n143) );
  INV1S U87 ( .I(a[1]), .O(n137) );
  INV1S U88 ( .I(b[0]), .O(n138) );
  INV1S U89 ( .I(a[2]), .O(n136) );
  INV1S U90 ( .I(b[4]), .O(n140) );
  INV1S U91 ( .I(b[3]), .O(n141) );
  INV1S U92 ( .I(a[4]), .O(n134) );
  INV1S U93 ( .I(a[5]), .O(n133) );
  INV1S U94 ( .I(a[3]), .O(n135) );
  INV1S U95 ( .I(b[5]), .O(n139) );
  INV1S U96 ( .I(a[6]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n132), .I2(n143), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n138), .I2(n131), .O(product_0_) );
  NR2 U111 ( .I1(n143), .I2(n131), .O(n78) );
  NR2 U112 ( .I1(n142), .I2(n131), .O(n77) );
  NR2 U113 ( .I1(n141), .I2(n131), .O(n76) );
  NR2 U114 ( .I1(n140), .I2(n131), .O(n75) );
  NR2 U115 ( .I1(n139), .I2(n131), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n138), .I2(n137), .O(n71) );
  NR2 U118 ( .I1(n143), .I2(n137), .O(n70) );
  NR2 U119 ( .I1(n142), .I2(n137), .O(n69) );
  NR2 U120 ( .I1(n141), .I2(n137), .O(n68) );
  NR2 U121 ( .I1(n140), .I2(n137), .O(n67) );
  NR2 U122 ( .I1(n139), .I2(n137), .O(n66) );
  NR2 U123 ( .I1(n138), .I2(n136), .O(n64) );
  NR2 U124 ( .I1(n143), .I2(n136), .O(n63) );
  NR2 U125 ( .I1(n136), .I2(n142), .O(n62) );
  NR2 U126 ( .I1(n141), .I2(n136), .O(n61) );
  NR2 U127 ( .I1(n136), .I2(n140), .O(n60) );
  NR2 U128 ( .I1(n138), .I2(n135), .O(n58) );
  NR2 U129 ( .I1(n143), .I2(n135), .O(n57) );
  NR2 U130 ( .I1(n135), .I2(n142), .O(n56) );
  NR2 U131 ( .I1(n141), .I2(n135), .O(n55) );
  NR2 U132 ( .I1(n138), .I2(n134), .O(n53) );
  NR2 U133 ( .I1(n143), .I2(n134), .O(n52) );
  NR2 U134 ( .I1(n134), .I2(n142), .O(n51) );
  NR2 U135 ( .I1(n138), .I2(n133), .O(n49) );
  NR2 U136 ( .I1(n143), .I2(n133), .O(n48) );
  NR2 U137 ( .I1(n132), .I2(n138), .O(n46) );
endmodule


module mac_15_DW01_add_0_DW01_add_21 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_15 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40, n50;

  mac_15_DW_mult_uns_0_DW_mult_uns_15 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_15_DW01_add_0_DW01_add_21 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n40), .Q(left_out[0]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n40), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  INV1S U5 ( .I(n17), .O(n40) );
  BUF1CK U6 ( .I(reset), .O(n17) );
  TIE0 U7 ( .O(n50) );
endmodule


module mac_14_DW_mult_uns_0_DW_mult_uns_11 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n131) );
  INV1S U85 ( .I(a[1]), .O(n137) );
  INV1S U86 ( .I(a[2]), .O(n136) );
  INV1S U87 ( .I(a[4]), .O(n134) );
  INV1S U88 ( .I(a[5]), .O(n133) );
  INV1S U89 ( .I(a[3]), .O(n135) );
  INV1S U90 ( .I(a[6]), .O(n132) );
  INV1S U91 ( .I(b[2]), .O(n141) );
  INV1S U92 ( .I(b[1]), .O(n142) );
  INV1S U93 ( .I(b[0]), .O(n143) );
  INV1S U94 ( .I(b[4]), .O(n139) );
  INV1S U95 ( .I(b[3]), .O(n140) );
  INV1S U96 ( .I(b[5]), .O(n138) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n132), .I2(n142), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n143), .I2(n131), .O(product_0_) );
  NR2 U111 ( .I1(n142), .I2(n131), .O(n78) );
  NR2 U112 ( .I1(n141), .I2(n131), .O(n77) );
  NR2 U113 ( .I1(n140), .I2(n131), .O(n76) );
  NR2 U114 ( .I1(n139), .I2(n131), .O(n75) );
  NR2 U115 ( .I1(n138), .I2(n131), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n137), .O(n71) );
  NR2 U118 ( .I1(n142), .I2(n137), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n137), .O(n69) );
  NR2 U120 ( .I1(n140), .I2(n137), .O(n68) );
  NR2 U121 ( .I1(n139), .I2(n137), .O(n67) );
  NR2 U122 ( .I1(n138), .I2(n137), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n136), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n136), .O(n63) );
  NR2 U125 ( .I1(n136), .I2(n141), .O(n62) );
  NR2 U126 ( .I1(n140), .I2(n136), .O(n61) );
  NR2 U127 ( .I1(n136), .I2(n139), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n135), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n135), .O(n57) );
  NR2 U130 ( .I1(n135), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n140), .I2(n135), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n134), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n134), .O(n52) );
  NR2 U134 ( .I1(n134), .I2(n141), .O(n51) );
  NR2 U135 ( .I1(n143), .I2(n133), .O(n49) );
  NR2 U136 ( .I1(n142), .I2(n133), .O(n48) );
  NR2 U137 ( .I1(n132), .I2(n143), .O(n46) );
endmodule


module mac_14_DW01_add_0_DW01_add_17 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_14 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_14_DW_mult_uns_0_DW_mult_uns_11 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_14_DW01_add_0_DW01_add_17 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n20), .Q(left_out[0]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n30), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_13_DW_mult_uns_0_DW_mult_uns_10 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n137) );
  INV1S U85 ( .I(a[1]), .O(n143) );
  INV1S U86 ( .I(a[2]), .O(n142) );
  INV1S U87 ( .I(a[4]), .O(n140) );
  INV1S U88 ( .I(a[5]), .O(n139) );
  INV1S U89 ( .I(a[3]), .O(n141) );
  INV1S U90 ( .I(a[6]), .O(n138) );
  INV1S U91 ( .I(b[2]), .O(n134) );
  INV1S U92 ( .I(b[1]), .O(n135) );
  INV1S U93 ( .I(b[0]), .O(n136) );
  INV1S U94 ( .I(b[4]), .O(n132) );
  INV1S U95 ( .I(b[3]), .O(n133) );
  INV1S U96 ( .I(b[5]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n138), .I2(n135), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n136), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n135), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n134), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n133), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n132), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n131), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n135), .I2(n143), .O(n70) );
  NR2 U119 ( .I1(n134), .I2(n143), .O(n69) );
  NR2 U120 ( .I1(n133), .I2(n143), .O(n68) );
  NR2 U121 ( .I1(n132), .I2(n143), .O(n67) );
  NR2 U122 ( .I1(n131), .I2(n143), .O(n66) );
  NR2 U123 ( .I1(n136), .I2(n142), .O(n64) );
  NR2 U124 ( .I1(n135), .I2(n142), .O(n63) );
  NR2 U125 ( .I1(n142), .I2(n134), .O(n62) );
  NR2 U126 ( .I1(n133), .I2(n142), .O(n61) );
  NR2 U127 ( .I1(n142), .I2(n132), .O(n60) );
  NR2 U128 ( .I1(n136), .I2(n141), .O(n58) );
  NR2 U129 ( .I1(n135), .I2(n141), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n133), .I2(n141), .O(n55) );
  NR2 U132 ( .I1(n136), .I2(n140), .O(n53) );
  NR2 U133 ( .I1(n135), .I2(n140), .O(n52) );
  NR2 U134 ( .I1(n140), .I2(n134), .O(n51) );
  NR2 U135 ( .I1(n136), .I2(n139), .O(n49) );
  NR2 U136 ( .I1(n135), .I2(n139), .O(n48) );
  NR2 U137 ( .I1(n138), .I2(n136), .O(n46) );
endmodule


module mac_13_DW01_add_0_DW01_add_16 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_13 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_13_DW_mult_uns_0_DW_mult_uns_10 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_13_DW01_add_0_DW01_add_16 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n20), .Q(left_out[0]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n30), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_12_DW_mult_uns_0_DW_mult_uns_9 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n137) );
  INV1S U85 ( .I(a[1]), .O(n143) );
  INV1S U86 ( .I(a[2]), .O(n142) );
  INV1S U87 ( .I(a[4]), .O(n140) );
  INV1S U88 ( .I(a[5]), .O(n139) );
  INV1S U89 ( .I(a[3]), .O(n141) );
  INV1S U90 ( .I(a[6]), .O(n138) );
  INV1S U91 ( .I(b[2]), .O(n134) );
  INV1S U92 ( .I(b[1]), .O(n135) );
  INV1S U93 ( .I(b[0]), .O(n136) );
  INV1S U94 ( .I(b[4]), .O(n132) );
  INV1S U95 ( .I(b[3]), .O(n133) );
  INV1S U96 ( .I(b[5]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n138), .I2(n135), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n136), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n135), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n134), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n133), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n132), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n131), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n135), .I2(n143), .O(n70) );
  NR2 U119 ( .I1(n134), .I2(n143), .O(n69) );
  NR2 U120 ( .I1(n133), .I2(n143), .O(n68) );
  NR2 U121 ( .I1(n132), .I2(n143), .O(n67) );
  NR2 U122 ( .I1(n131), .I2(n143), .O(n66) );
  NR2 U123 ( .I1(n136), .I2(n142), .O(n64) );
  NR2 U124 ( .I1(n135), .I2(n142), .O(n63) );
  NR2 U125 ( .I1(n142), .I2(n134), .O(n62) );
  NR2 U126 ( .I1(n133), .I2(n142), .O(n61) );
  NR2 U127 ( .I1(n142), .I2(n132), .O(n60) );
  NR2 U128 ( .I1(n136), .I2(n141), .O(n58) );
  NR2 U129 ( .I1(n135), .I2(n141), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n133), .I2(n141), .O(n55) );
  NR2 U132 ( .I1(n136), .I2(n140), .O(n53) );
  NR2 U133 ( .I1(n135), .I2(n140), .O(n52) );
  NR2 U134 ( .I1(n140), .I2(n134), .O(n51) );
  NR2 U135 ( .I1(n136), .I2(n139), .O(n49) );
  NR2 U136 ( .I1(n135), .I2(n139), .O(n48) );
  NR2 U137 ( .I1(n138), .I2(n136), .O(n46) );
endmodule


module mac_12_DW01_add_0_DW01_add_15 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_12 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_12_DW_mult_uns_0_DW_mult_uns_9 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_12_DW01_add_0_DW01_add_15 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n20), .Q(left_out[1]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n30), .Q(left_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_11_DW_mult_uns_0_DW_mult_uns_14 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(b[2]), .O(n135) );
  INV1S U85 ( .I(b[1]), .O(n136) );
  INV1S U86 ( .I(b[0]), .O(n131) );
  INV1S U87 ( .I(b[4]), .O(n133) );
  INV1S U88 ( .I(b[3]), .O(n134) );
  INV1S U89 ( .I(b[5]), .O(n132) );
  INV1S U90 ( .I(a[0]), .O(n143) );
  INV1S U91 ( .I(a[1]), .O(n142) );
  INV1S U92 ( .I(a[2]), .O(n141) );
  INV1S U93 ( .I(a[4]), .O(n139) );
  INV1S U94 ( .I(a[5]), .O(n138) );
  INV1S U95 ( .I(a[3]), .O(n140) );
  INV1S U96 ( .I(a[6]), .O(n137) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n137), .I2(n136), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n131), .I2(n143), .O(product_0_) );
  NR2 U111 ( .I1(n136), .I2(n143), .O(n78) );
  NR2 U112 ( .I1(n135), .I2(n143), .O(n77) );
  NR2 U113 ( .I1(n134), .I2(n143), .O(n76) );
  NR2 U114 ( .I1(n133), .I2(n143), .O(n75) );
  NR2 U115 ( .I1(n132), .I2(n143), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n131), .I2(n142), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n142), .O(n70) );
  NR2 U119 ( .I1(n135), .I2(n142), .O(n69) );
  NR2 U120 ( .I1(n134), .I2(n142), .O(n68) );
  NR2 U121 ( .I1(n133), .I2(n142), .O(n67) );
  NR2 U122 ( .I1(n132), .I2(n142), .O(n66) );
  NR2 U123 ( .I1(n131), .I2(n141), .O(n64) );
  NR2 U124 ( .I1(n136), .I2(n141), .O(n63) );
  NR2 U125 ( .I1(n141), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n134), .I2(n141), .O(n61) );
  NR2 U127 ( .I1(n141), .I2(n133), .O(n60) );
  NR2 U128 ( .I1(n131), .I2(n140), .O(n58) );
  NR2 U129 ( .I1(n136), .I2(n140), .O(n57) );
  NR2 U130 ( .I1(n140), .I2(n135), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n140), .O(n55) );
  NR2 U132 ( .I1(n131), .I2(n139), .O(n53) );
  NR2 U133 ( .I1(n136), .I2(n139), .O(n52) );
  NR2 U134 ( .I1(n139), .I2(n135), .O(n51) );
  NR2 U135 ( .I1(n131), .I2(n138), .O(n49) );
  NR2 U136 ( .I1(n136), .I2(n138), .O(n48) );
  NR2 U137 ( .I1(n137), .I2(n131), .O(n46) );
endmodule


module mac_11_DW01_add_0_DW01_add_20 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_11 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_11_DW_mult_uns_0_DW_mult_uns_14 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_11_DW01_add_0_DW01_add_20 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n20), .Q(left_out[0]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n30), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_10_DW_mult_uns_0_DW_mult_uns_8 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n137) );
  INV1S U85 ( .I(b[2]), .O(n141) );
  INV1S U86 ( .I(b[1]), .O(n142) );
  INV1S U87 ( .I(a[1]), .O(n136) );
  INV1S U88 ( .I(b[0]), .O(n143) );
  INV1S U89 ( .I(a[2]), .O(n135) );
  INV1S U90 ( .I(b[4]), .O(n139) );
  INV1S U91 ( .I(b[3]), .O(n140) );
  INV1S U92 ( .I(a[4]), .O(n133) );
  INV1S U93 ( .I(a[5]), .O(n132) );
  INV1S U94 ( .I(a[3]), .O(n134) );
  INV1S U95 ( .I(b[5]), .O(n138) );
  INV1S U96 ( .I(a[6]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n131), .I2(n142), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n143), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n142), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n141), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n140), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n139), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n138), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n142), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n140), .I2(n136), .O(n68) );
  NR2 U121 ( .I1(n139), .I2(n136), .O(n67) );
  NR2 U122 ( .I1(n138), .I2(n136), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n141), .O(n62) );
  NR2 U126 ( .I1(n140), .I2(n135), .O(n61) );
  NR2 U127 ( .I1(n135), .I2(n139), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n140), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n133), .I2(n141), .O(n51) );
  NR2 U135 ( .I1(n143), .I2(n132), .O(n49) );
  NR2 U136 ( .I1(n142), .I2(n132), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n143), .O(n46) );
endmodule


module mac_10_DW01_add_0_DW01_add_14 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_10 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_10_DW_mult_uns_0_DW_mult_uns_8 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_10_DW01_add_0_DW01_add_14 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n20), .Q(left_out[0]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n30), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_9_DW_mult_uns_0_DW_mult_uns_7 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n137) );
  INV1S U85 ( .I(b[2]), .O(n141) );
  INV1S U86 ( .I(b[1]), .O(n142) );
  INV1S U87 ( .I(a[1]), .O(n136) );
  INV1S U88 ( .I(b[0]), .O(n143) );
  INV1S U89 ( .I(a[2]), .O(n135) );
  INV1S U90 ( .I(b[4]), .O(n139) );
  INV1S U91 ( .I(b[3]), .O(n140) );
  INV1S U92 ( .I(a[4]), .O(n133) );
  INV1S U93 ( .I(a[5]), .O(n132) );
  INV1S U94 ( .I(a[3]), .O(n134) );
  INV1S U95 ( .I(b[5]), .O(n138) );
  INV1S U96 ( .I(a[6]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n131), .I2(n142), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n143), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n142), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n141), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n140), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n139), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n138), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n142), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n140), .I2(n136), .O(n68) );
  NR2 U121 ( .I1(n139), .I2(n136), .O(n67) );
  NR2 U122 ( .I1(n138), .I2(n136), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n141), .O(n62) );
  NR2 U126 ( .I1(n140), .I2(n135), .O(n61) );
  NR2 U127 ( .I1(n135), .I2(n139), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n140), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n133), .I2(n141), .O(n51) );
  NR2 U135 ( .I1(n143), .I2(n132), .O(n49) );
  NR2 U136 ( .I1(n142), .I2(n132), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n143), .O(n46) );
endmodule


module mac_9_DW01_add_0_DW01_add_13 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_9 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_9_DW_mult_uns_0_DW_mult_uns_7 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_9_DW01_add_0_DW01_add_13 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n20), .Q(left_out[0]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n30), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_8_DW_mult_uns_0_DW_mult_uns_6 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n137) );
  INV1S U85 ( .I(b[2]), .O(n141) );
  INV1S U86 ( .I(b[1]), .O(n142) );
  INV1S U87 ( .I(a[1]), .O(n136) );
  INV1S U88 ( .I(b[0]), .O(n143) );
  INV1S U89 ( .I(a[2]), .O(n135) );
  INV1S U90 ( .I(b[4]), .O(n139) );
  INV1S U91 ( .I(b[3]), .O(n140) );
  INV1S U92 ( .I(a[4]), .O(n133) );
  INV1S U93 ( .I(a[5]), .O(n132) );
  INV1S U94 ( .I(a[3]), .O(n134) );
  INV1S U95 ( .I(b[5]), .O(n138) );
  INV1S U96 ( .I(a[6]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n131), .I2(n142), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n143), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n142), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n141), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n140), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n139), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n138), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n142), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n140), .I2(n136), .O(n68) );
  NR2 U121 ( .I1(n139), .I2(n136), .O(n67) );
  NR2 U122 ( .I1(n138), .I2(n136), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n141), .O(n62) );
  NR2 U126 ( .I1(n140), .I2(n135), .O(n61) );
  NR2 U127 ( .I1(n135), .I2(n139), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n140), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n133), .I2(n141), .O(n51) );
  NR2 U135 ( .I1(n143), .I2(n132), .O(n49) );
  NR2 U136 ( .I1(n142), .I2(n132), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n143), .O(n46) );
endmodule


module mac_8_DW01_add_0_DW01_add_12 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_8 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_8_DW_mult_uns_0_DW_mult_uns_6 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_8_DW01_add_0_DW01_add_12 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n20), .Q(left_out[1]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n30), .Q(left_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_7_DW_mult_uns_0_DW_mult_uns_13 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(b[2]), .O(n142) );
  INV1S U85 ( .I(b[1]), .O(n143) );
  INV1S U86 ( .I(b[0]), .O(n138) );
  INV1S U87 ( .I(b[4]), .O(n140) );
  INV1S U88 ( .I(b[3]), .O(n141) );
  INV1S U89 ( .I(b[5]), .O(n139) );
  INV1S U90 ( .I(a[0]), .O(n137) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(a[2]), .O(n135) );
  INV1S U93 ( .I(a[4]), .O(n133) );
  INV1S U94 ( .I(a[5]), .O(n132) );
  INV1S U95 ( .I(a[3]), .O(n134) );
  INV1S U96 ( .I(a[6]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n131), .I2(n143), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n138), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n143), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n142), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n141), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n140), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n139), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n138), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n143), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n142), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n141), .I2(n136), .O(n68) );
  NR2 U121 ( .I1(n140), .I2(n136), .O(n67) );
  NR2 U122 ( .I1(n139), .I2(n136), .O(n66) );
  NR2 U123 ( .I1(n138), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n143), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n142), .O(n62) );
  NR2 U126 ( .I1(n141), .I2(n135), .O(n61) );
  NR2 U127 ( .I1(n135), .I2(n140), .O(n60) );
  NR2 U128 ( .I1(n138), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n143), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n142), .O(n56) );
  NR2 U131 ( .I1(n141), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n138), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n143), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n133), .I2(n142), .O(n51) );
  NR2 U135 ( .I1(n138), .I2(n132), .O(n49) );
  NR2 U136 ( .I1(n143), .I2(n132), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n138), .O(n46) );
endmodule


module mac_7_DW01_add_0_DW01_add_19 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_7 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_7_DW_mult_uns_0_DW_mult_uns_13 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_7_DW01_add_0_DW01_add_19 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n20), .Q(left_out[0]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n30), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_6_DW_mult_uns_0_DW_mult_uns_5 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n137) );
  INV1S U85 ( .I(b[2]), .O(n141) );
  INV1S U86 ( .I(b[1]), .O(n142) );
  INV1S U87 ( .I(a[1]), .O(n136) );
  INV1S U88 ( .I(b[0]), .O(n143) );
  INV1S U89 ( .I(a[2]), .O(n135) );
  INV1S U90 ( .I(b[4]), .O(n139) );
  INV1S U91 ( .I(b[3]), .O(n140) );
  INV1S U92 ( .I(a[4]), .O(n133) );
  INV1S U93 ( .I(a[5]), .O(n132) );
  INV1S U94 ( .I(a[3]), .O(n134) );
  INV1S U95 ( .I(b[5]), .O(n138) );
  INV1S U96 ( .I(a[6]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n131), .I2(n142), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n143), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n142), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n141), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n140), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n139), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n138), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n142), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n140), .I2(n136), .O(n68) );
  NR2 U121 ( .I1(n139), .I2(n136), .O(n67) );
  NR2 U122 ( .I1(n138), .I2(n136), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n141), .O(n62) );
  NR2 U126 ( .I1(n140), .I2(n135), .O(n61) );
  NR2 U127 ( .I1(n135), .I2(n139), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n140), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n133), .I2(n141), .O(n51) );
  NR2 U135 ( .I1(n143), .I2(n132), .O(n49) );
  NR2 U136 ( .I1(n142), .I2(n132), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n143), .O(n46) );
endmodule


module mac_6_DW01_add_0_DW01_add_11 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_6 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_6_DW_mult_uns_0_DW_mult_uns_5 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_6_DW01_add_0_DW01_add_11 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n20), .Q(left_out[0]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n30), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_5_DW_mult_uns_0_DW_mult_uns_4 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n137) );
  INV1S U85 ( .I(b[2]), .O(n141) );
  INV1S U86 ( .I(b[1]), .O(n142) );
  INV1S U87 ( .I(a[1]), .O(n136) );
  INV1S U88 ( .I(b[0]), .O(n143) );
  INV1S U89 ( .I(a[2]), .O(n135) );
  INV1S U90 ( .I(b[4]), .O(n139) );
  INV1S U91 ( .I(b[3]), .O(n140) );
  INV1S U92 ( .I(a[4]), .O(n133) );
  INV1S U93 ( .I(a[5]), .O(n132) );
  INV1S U94 ( .I(a[3]), .O(n134) );
  INV1S U95 ( .I(b[5]), .O(n138) );
  INV1S U96 ( .I(a[6]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n131), .I2(n142), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n143), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n142), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n141), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n140), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n139), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n138), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n142), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n140), .I2(n136), .O(n68) );
  NR2 U121 ( .I1(n139), .I2(n136), .O(n67) );
  NR2 U122 ( .I1(n138), .I2(n136), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n141), .O(n62) );
  NR2 U126 ( .I1(n140), .I2(n135), .O(n61) );
  NR2 U127 ( .I1(n135), .I2(n139), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n140), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n133), .I2(n141), .O(n51) );
  NR2 U135 ( .I1(n143), .I2(n132), .O(n49) );
  NR2 U136 ( .I1(n142), .I2(n132), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n143), .O(n46) );
endmodule


module mac_5_DW01_add_0_DW01_add_10 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_5 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_5_DW_mult_uns_0_DW_mult_uns_4 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_5_DW01_add_0_DW01_add_10 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n20), .Q(left_out[0]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n30), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_4_DW_mult_uns_0_DW_mult_uns_3 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n137) );
  INV1S U85 ( .I(b[2]), .O(n141) );
  INV1S U86 ( .I(b[1]), .O(n142) );
  INV1S U87 ( .I(a[1]), .O(n136) );
  INV1S U88 ( .I(b[0]), .O(n143) );
  INV1S U89 ( .I(a[2]), .O(n135) );
  INV1S U90 ( .I(b[4]), .O(n139) );
  INV1S U91 ( .I(b[3]), .O(n140) );
  INV1S U92 ( .I(a[4]), .O(n133) );
  INV1S U93 ( .I(a[5]), .O(n132) );
  INV1S U94 ( .I(a[3]), .O(n134) );
  INV1S U95 ( .I(b[5]), .O(n138) );
  INV1S U96 ( .I(a[6]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n131), .I2(n142), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n143), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n142), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n141), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n140), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n139), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n138), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n142), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n140), .I2(n136), .O(n68) );
  NR2 U121 ( .I1(n139), .I2(n136), .O(n67) );
  NR2 U122 ( .I1(n138), .I2(n136), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n141), .O(n62) );
  NR2 U126 ( .I1(n140), .I2(n135), .O(n61) );
  NR2 U127 ( .I1(n135), .I2(n139), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n140), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n133), .I2(n141), .O(n51) );
  NR2 U135 ( .I1(n143), .I2(n132), .O(n49) );
  NR2 U136 ( .I1(n142), .I2(n132), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n143), .O(n46) );
endmodule


module mac_4_DW01_add_0_DW01_add_9 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_4 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_4_DW_mult_uns_0_DW_mult_uns_3 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_4_DW01_add_0_DW01_add_9 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, N3, 
        N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n20), .Q(left_out[1]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n30), .Q(left_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_3_DW_mult_uns_0_DW_mult_uns_12 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(b[2]), .O(n142) );
  INV1S U85 ( .I(b[1]), .O(n143) );
  INV1S U86 ( .I(b[0]), .O(n138) );
  INV1S U87 ( .I(b[4]), .O(n140) );
  INV1S U88 ( .I(b[3]), .O(n141) );
  INV1S U89 ( .I(b[5]), .O(n139) );
  INV1S U90 ( .I(a[0]), .O(n137) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(a[2]), .O(n135) );
  INV1S U93 ( .I(a[4]), .O(n133) );
  INV1S U94 ( .I(a[5]), .O(n132) );
  INV1S U95 ( .I(a[3]), .O(n134) );
  INV1S U96 ( .I(a[6]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n131), .I2(n143), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n138), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n143), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n142), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n141), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n140), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n139), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n138), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n143), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n142), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n141), .I2(n136), .O(n68) );
  NR2 U121 ( .I1(n140), .I2(n136), .O(n67) );
  NR2 U122 ( .I1(n139), .I2(n136), .O(n66) );
  NR2 U123 ( .I1(n138), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n143), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n142), .O(n62) );
  NR2 U126 ( .I1(n141), .I2(n135), .O(n61) );
  NR2 U127 ( .I1(n135), .I2(n140), .O(n60) );
  NR2 U128 ( .I1(n138), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n143), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n142), .O(n56) );
  NR2 U131 ( .I1(n141), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n138), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n143), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n133), .I2(n142), .O(n51) );
  NR2 U135 ( .I1(n138), .I2(n132), .O(n49) );
  NR2 U136 ( .I1(n143), .I2(n132), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n138), .O(n46) );
endmodule


module mac_3_DW01_add_0_DW01_add_18 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_3 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_3_DW_mult_uns_0_DW_mult_uns_12 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_3_DW01_add_0_DW01_add_18 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n20), .Q(left_out[0]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n30), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_2_DW_mult_uns_0_DW_mult_uns_2 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n137) );
  INV1S U85 ( .I(b[2]), .O(n141) );
  INV1S U86 ( .I(b[1]), .O(n142) );
  INV1S U87 ( .I(a[1]), .O(n136) );
  INV1S U88 ( .I(b[0]), .O(n143) );
  INV1S U89 ( .I(a[2]), .O(n135) );
  INV1S U90 ( .I(b[4]), .O(n139) );
  INV1S U91 ( .I(b[3]), .O(n140) );
  INV1S U92 ( .I(a[4]), .O(n133) );
  INV1S U93 ( .I(a[5]), .O(n132) );
  INV1S U94 ( .I(a[3]), .O(n134) );
  INV1S U95 ( .I(b[5]), .O(n138) );
  INV1S U96 ( .I(a[6]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n131), .I2(n142), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n143), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n142), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n141), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n140), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n139), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n138), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n142), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n140), .I2(n136), .O(n68) );
  NR2 U121 ( .I1(n139), .I2(n136), .O(n67) );
  NR2 U122 ( .I1(n138), .I2(n136), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n141), .O(n62) );
  NR2 U126 ( .I1(n140), .I2(n135), .O(n61) );
  NR2 U127 ( .I1(n135), .I2(n139), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n140), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n133), .I2(n141), .O(n51) );
  NR2 U135 ( .I1(n143), .I2(n132), .O(n49) );
  NR2 U136 ( .I1(n142), .I2(n132), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n143), .O(n46) );
endmodule


module mac_2_DW01_add_0_DW01_add_8 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_2 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_2_DW_mult_uns_0_DW_mult_uns_2 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_2_DW01_add_0_DW01_add_8 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, N3, 
        N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n20), .Q(left_out[0]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n30), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_1_DW_mult_uns_0_DW_mult_uns_1 ( a, b, product_7_, product_6_, 
        product_5_, product_4_, product_3_, product_2_, product_1_, product_0_
 );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n137) );
  INV1S U85 ( .I(b[2]), .O(n141) );
  INV1S U86 ( .I(b[1]), .O(n142) );
  INV1S U87 ( .I(a[1]), .O(n136) );
  INV1S U88 ( .I(b[0]), .O(n143) );
  INV1S U89 ( .I(a[2]), .O(n135) );
  INV1S U90 ( .I(b[4]), .O(n139) );
  INV1S U91 ( .I(b[3]), .O(n140) );
  INV1S U92 ( .I(a[4]), .O(n133) );
  INV1S U93 ( .I(a[5]), .O(n132) );
  INV1S U94 ( .I(a[3]), .O(n134) );
  INV1S U95 ( .I(b[5]), .O(n138) );
  INV1S U96 ( .I(a[6]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n131), .I2(n142), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n143), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n142), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n141), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n140), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n139), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n138), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n142), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n140), .I2(n136), .O(n68) );
  NR2 U121 ( .I1(n139), .I2(n136), .O(n67) );
  NR2 U122 ( .I1(n138), .I2(n136), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n141), .O(n62) );
  NR2 U126 ( .I1(n140), .I2(n135), .O(n61) );
  NR2 U127 ( .I1(n135), .I2(n139), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n140), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n133), .I2(n141), .O(n51) );
  NR2 U135 ( .I1(n143), .I2(n132), .O(n49) );
  NR2 U136 ( .I1(n142), .I2(n132), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n143), .O(n46) );
endmodule


module mac_1_DW01_add_0_DW01_add_7 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_1 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_1_DW_mult_uns_0_DW_mult_uns_1 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_1_DW01_add_0_DW01_add_7 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, N3, 
        N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n20), .Q(left_out[0]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n30), .Q(left_out[1]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module mac_0_DW_mult_uns_0 ( a, b, product_7_, product_6_, product_5_, 
        product_4_, product_3_, product_2_, product_1_, product_0_ );
  input [7:0] a;
  input [7:0] b;
  output product_7_, product_6_, product_5_, product_4_, product_3_,
         product_2_, product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155;

  FA1S U3 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product_6_) );
  FA1S U4 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product_5_) );
  FA1S U5 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product_4_) );
  FA1S U6 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product_3_) );
  FA1S U7 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product_2_) );
  HA1 U8 ( .A(n71), .B(n78), .C(n7), .S(product_1_) );
  FA1S U15 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  FA1S U16 ( .A(n23), .B(n28), .CI(n21), .CO(n16), .S(n17) );
  FA1S U17 ( .A(n60), .B(n55), .CI(n30), .CO(n18), .S(n19) );
  FA1S U18 ( .A(n73), .B(n51), .CI(n66), .CO(n20), .S(n21) );
  HA1 U19 ( .A(n48), .B(n46), .C(n22), .S(n23) );
  FA1S U20 ( .A(n34), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  FA1S U21 ( .A(n67), .B(n36), .CI(n31), .CO(n26), .S(n27) );
  FA1S U22 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  HA1 U23 ( .A(n52), .B(n49), .C(n30), .S(n31) );
  FA1S U24 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  FA1S U25 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  HA1 U26 ( .A(n57), .B(n53), .C(n36), .S(n37) );
  FA1S U27 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  HA1 U28 ( .A(n63), .B(n58), .C(n40), .S(n41) );
  HA1 U29 ( .A(n77), .B(n70), .C(n42), .S(n43) );
  INV1S U84 ( .I(a[0]), .O(n137) );
  INV1S U85 ( .I(b[2]), .O(n141) );
  INV1S U86 ( .I(b[1]), .O(n142) );
  INV1S U87 ( .I(a[1]), .O(n136) );
  INV1S U88 ( .I(b[0]), .O(n143) );
  INV1S U89 ( .I(a[2]), .O(n135) );
  INV1S U90 ( .I(b[4]), .O(n139) );
  INV1S U91 ( .I(b[3]), .O(n140) );
  INV1S U92 ( .I(a[4]), .O(n133) );
  INV1S U93 ( .I(a[5]), .O(n132) );
  INV1S U94 ( .I(a[3]), .O(n134) );
  INV1S U95 ( .I(b[5]), .O(n138) );
  INV1S U96 ( .I(a[6]), .O(n131) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XOR2HS U98 ( .I1(n148), .I2(n149), .O(n147) );
  NR2 U99 ( .I1(n131), .I2(n142), .O(n149) );
  ND2 U100 ( .I1(b[0]), .I2(a[7]), .O(n148) );
  XNR4 U101 ( .I1(n16), .I2(n14), .I3(n22), .I4(n2), .O(n146) );
  XOR4 U102 ( .I1(n150), .I2(n151), .I3(n152), .I4(n153), .O(n145) );
  ND2 U103 ( .I1(b[3]), .I2(a[4]), .O(n153) );
  ND2 U104 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n151) );
  ND2 U106 ( .I1(b[4]), .I2(a[3]), .O(n150) );
  XOR4 U107 ( .I1(n20), .I2(n18), .I3(n154), .I4(n155), .O(n144) );
  ND2 U108 ( .I1(b[7]), .I2(a[0]), .O(n155) );
  ND2 U109 ( .I1(b[2]), .I2(a[5]), .O(n154) );
  NR2 U110 ( .I1(n143), .I2(n137), .O(product_0_) );
  NR2 U111 ( .I1(n142), .I2(n137), .O(n78) );
  NR2 U112 ( .I1(n141), .I2(n137), .O(n77) );
  NR2 U113 ( .I1(n140), .I2(n137), .O(n76) );
  NR2 U114 ( .I1(n139), .I2(n137), .O(n75) );
  NR2 U115 ( .I1(n138), .I2(n137), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n142), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n140), .I2(n136), .O(n68) );
  NR2 U121 ( .I1(n139), .I2(n136), .O(n67) );
  NR2 U122 ( .I1(n138), .I2(n136), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n141), .O(n62) );
  NR2 U126 ( .I1(n140), .I2(n135), .O(n61) );
  NR2 U127 ( .I1(n135), .I2(n139), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n140), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n133), .I2(n141), .O(n51) );
  NR2 U135 ( .I1(n143), .I2(n132), .O(n49) );
  NR2 U136 ( .I1(n142), .I2(n132), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n143), .O(n46) );
endmodule


module mac_0_DW01_add_0_DW01_add_6 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR3 U1_7 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module mac_0 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20, n30, n40;

  mac_0_DW_mult_uns_0 mult_20 ( .a(up_in), .b(left_in), .product_7_(N8), 
        .product_6_(N7), .product_5_(N6), .product_4_(N5), .product_3_(N4), 
        .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_0_DW01_add_0_DW01_add_6 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, N3, 
        N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n20), .Q(mat_out[7]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n20), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n20), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n20), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n20), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n20), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n20), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n20), .Q(mat_out[0]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n20), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n20), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n20), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n30), .Q(up_out[4]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n30), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n30), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n30), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n30), .Q(up_out[0]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n30), .Q(left_out[7]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n30), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n30), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n30), .Q(left_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n30), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n30), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n20), .Q(left_out[1]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n30), .Q(left_out[0]) );
  INV1S U3 ( .I(n17), .O(n30) );
  INV1S U4 ( .I(n17), .O(n20) );
  BUF1CK U5 ( .I(reset), .O(n17) );
  TIE0 U6 ( .O(n40) );
endmodule


module tpu_DW01_add_0_DW01_add_2 ( A, SUM, B_4_, B_3_, B_2_, B_1_, B_0_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_4_, B_3_, B_2_, B_1_, B_0_;
  wire   n1, n2, n3;
  wire   [5:2] carry;

  FA1S U1_2 ( .A(A[2]), .B(B_2_), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_1 ( .A(A[1]), .B(B_1_), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  AN2 U1 ( .I1(B_0_), .I2(A[0]), .O(n1) );
  AN2 U2 ( .I1(A[5]), .I2(carry[5]), .O(n2) );
  XNR2HS U3 ( .I1(A[7]), .I2(n3), .O(SUM[7]) );
  XOR2HS U4 ( .I1(A[6]), .I2(n2), .O(SUM[6]) );
  XOR2HS U5 ( .I1(A[5]), .I2(carry[5]), .O(SUM[5]) );
  XOR2HS U6 ( .I1(B_0_), .I2(A[0]), .O(SUM[0]) );
  ND2 U7 ( .I1(A[6]), .I2(n2), .O(n3) );
endmodule


module tpu_DW01_inc_0_DW01_inc_5 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HA1 U1_1_6 ( .A(A[6]), .B(carry[6]), .C(carry[7]), .S(SUM[6]) );
  HA1 U1_1_5 ( .A(A[5]), .B(carry[5]), .C(carry[6]), .S(SUM[5]) );
  HA1 U1_1_4 ( .A(A[4]), .B(carry[4]), .C(carry[5]), .S(SUM[4]) );
  HA1 U1_1_3 ( .A(A[3]), .B(carry[3]), .C(carry[4]), .S(SUM[3]) );
  HA1 U1_1_2 ( .A(A[2]), .B(carry[2]), .C(carry[3]), .S(SUM[2]) );
  HA1 U1_1_1 ( .A(A[1]), .B(A[0]), .C(carry[2]), .S(SUM[1]) );
  XOR2HS U1 ( .I1(carry[7]), .I2(A[7]), .O(SUM[7]) );
  INV1S U2 ( .I(A[0]), .O(SUM[0]) );
endmodule


module tpu_DW01_inc_1_DW01_inc_6 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HA1 U1_1_6 ( .A(A[6]), .B(carry[6]), .C(carry[7]), .S(SUM[6]) );
  HA1 U1_1_5 ( .A(A[5]), .B(carry[5]), .C(carry[6]), .S(SUM[5]) );
  HA1 U1_1_4 ( .A(A[4]), .B(carry[4]), .C(carry[5]), .S(SUM[4]) );
  HA1 U1_1_3 ( .A(A[3]), .B(carry[3]), .C(carry[4]), .S(SUM[3]) );
  HA1 U1_1_2 ( .A(A[2]), .B(carry[2]), .C(carry[3]), .S(SUM[2]) );
  HA1 U1_1_1 ( .A(A[1]), .B(A[0]), .C(carry[2]), .S(SUM[1]) );
  XOR2HS U1 ( .I1(carry[7]), .I2(A[7]), .O(SUM[7]) );
  INV1S U2 ( .I(A[0]), .O(SUM[0]) );
endmodule


module tpu_DW01_inc_2_DW01_inc_7 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HA1 U1_1_6 ( .A(A[6]), .B(carry[6]), .C(carry[7]), .S(SUM[6]) );
  HA1 U1_1_5 ( .A(A[5]), .B(carry[5]), .C(carry[6]), .S(SUM[5]) );
  HA1 U1_1_4 ( .A(A[4]), .B(carry[4]), .C(carry[5]), .S(SUM[4]) );
  HA1 U1_1_3 ( .A(A[3]), .B(carry[3]), .C(carry[4]), .S(SUM[3]) );
  HA1 U1_1_2 ( .A(A[2]), .B(carry[2]), .C(carry[3]), .S(SUM[2]) );
  HA1 U1_1_1 ( .A(A[1]), .B(A[0]), .C(carry[2]), .S(SUM[1]) );
  XOR2HS U1 ( .I1(carry[7]), .I2(A[7]), .O(SUM[7]) );
  INV1S U2 ( .I(A[0]), .O(SUM[0]) );
endmodule


module tpu ( clk, rst, m, k, n, done, wr_en_a, wr_en_b, wr_en_c, addr_a, 
        addr_b, addr_c, in_a, in_b, in_c, out_a, out_b );
  input [3:0] m;
  input [3:0] k;
  input [3:0] n;
  output [7:0] addr_a;
  output [7:0] addr_b;
  output [7:0] addr_c;
  output [31:0] in_a;
  output [31:0] in_b;
  output [31:0] in_c;
  input [31:0] out_a;
  input [31:0] out_b;
  input clk, rst;
  output done, wr_en_a, wr_en_b, wr_en_c;
  wire   N40, N41, N42, sys_rst, N44, N45, N46, N47, rd_a_4, rd_a_3, rd_a_2,
         rd_a_1, N57, N58, N59, rd_b_4, rd_b_3, rd_b_2, rd_b_1, N70, N71, N72,
         N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N129, N142, N143, N144, N145, N151, N152, N153, N154, N155,
         N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, N175, N176, N177, N178, N179, N180, N181, N182, N183, N184,
         N185, N186, N187, N188, N189, N190, N223, N224, N225, N226, N227,
         N228, N229, N230, N296, N297, N298, N299, N300, N301, N302, N303,
         N304, N305, N306, N307, N308, N309, N310, N311, N312, N313, N314,
         N315, N316, N317, N318, N319, N320, N321, N322, N323, N324, N325,
         N326, N327, n54, n55, n56, n580, n590, n61, n63, n64, n66, n67, n720,
         n73, n75, n76, n77, n79, n80, n81, n82, n83, n85, n86, n87, n88, n89,
         n90, n91, n93, n940, n950, n960, n970, n980, n1000, n1030, n1040,
         n1060, n1070, n1080, n1090, n1210, n1230, n1240, n1250, n1270, n1280,
         n131, n133, n134, n135, n136, n137, n138, n139, n140, n1420, n1430,
         n1450, n146, n147, n148, n149, n150, n1510, n1520, n1530, n1540,
         n1550, n1560, n1570, n1580, n1590, n1600, n1610, n1620, n1630, n1640,
         n1650, n1660, n1670, n168, n169, n170, n171, n172, n173, n174, n1750,
         n1760, n1770, n1780, n1790, n1800, n1810, n1820, n1830, n1840, n1850,
         n1860, n1870, n1880, n1890, n1900, n191, n192, n193, n194, n195, n196,
         n197, add_268_carry_2_, add_268_carry_3_, add_35_carry_2_,
         add_35_carry_3_, n1020, n1050, n1100, n1110, n1120, n1130, n1140,
         n1150, n1160, n1170, n1180, n1190, n1200, n1220, n1260, n1290, n130,
         n132, n141, n1440, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n2230, n2240, n2250, n2260, n2270,
         n2280, n2290, n2300, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n2960, n2970, n2980, n2990, n3000, n3010, n3020, n3030,
         n3040, n3050, n3060, n3070, n3080, n3090, n3100, n3110, n3120, n3130,
         n3140, n3150, n3160, n3170, n3180, n3190, n3200, n3210, n3220, n3230,
         n3240, n3250, n3260, n3270, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25,
         SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27,
         SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29,
         SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31,
         SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33,
         SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35,
         SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37,
         SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39,
         SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41,
         SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43,
         SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45,
         SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47,
         SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49,
         SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51,
         SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53,
         SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55,
         SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57,
         SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59,
         SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61,
         SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63,
         SYNOPSYS_UNCONNECTED_64;
  wire   [4:2] cnt;
  wire   [2:0] state;
  wire   [7:0] dataout_a_1;
  wire   [7:0] dataout_a_2;
  wire   [7:0] dataout_a_3;
  wire   [7:0] dataout_a_4;
  wire   [7:0] dataout_b_1;
  wire   [7:0] dataout_b_2;
  wire   [7:0] dataout_b_3;
  wire   [7:0] dataout_b_4;
  wire   [2:0] next_state;
  wire   [127:0] from_top__net;
  wire   [127:0] from_left_net;
  wire   [127:0] multi_out_net;
  wire   [7:0] last_addr_c;
  wire   [1:0] cnt_m;
  wire   [7:0] last_addr_b;
  wire   [1:0] cnt_n;
  wire   [7:1] add_317_carry;
  wire   [4:2] r474_carry;

  DFFSBN systolic_array_rst_reg ( .D(n1450), .CK(clk), .SB(n282), .Q(sys_rst), 
        .QB(n1420) );
  ND2 U12 ( .I1(n3160), .I2(n63), .O(n67) );
  OA222 U14 ( .A1(n73), .A2(n348), .B1(n75), .B2(n76), .C1(n77), .C2(n346), 
        .O(n720) );
  ND2 U18 ( .I1(n345), .I2(n346), .O(n76) );
  ND2 U23 ( .I1(n[2]), .I2(n80), .O(n79) );
  ND2 U74 ( .I1(n3160), .I2(n344), .O(n1000) );
  ND2 U76 ( .I1(cnt_m[0]), .I2(n347), .O(n1070) );
  ND2 U108 ( .I1(N151), .I2(n3210), .O(n1030) );
  ND2 U110 ( .I1(n3160), .I2(n1080), .O(n1060) );
  XOR3 U112 ( .I1(cnt_m[1]), .I2(n1230), .I3(n1240), .O(n980) );
  ND2 U115 ( .I1(m[2]), .I2(n970), .O(n1250) );
  ND2 U135 ( .I1(n341), .I2(n66), .O(n1280) );
  ND2 U213 ( .I1(n342), .I2(n3190), .O(n66) );
  sync_fifo_7 fifo_a_1 ( .clk(clk), .rst(n295), .data_in(out_a[31:24]), .w_en(
        n197), .r_en(n269), .data_out(dataout_a_1) );
  sync_fifo_6 fifo_a_2 ( .clk(clk), .rst(n2970), .data_in(out_a[23:16]), 
        .w_en(n197), .r_en(rd_a_2), .data_out(dataout_a_2) );
  sync_fifo_5 fifo_a_3 ( .clk(clk), .rst(n2970), .data_in(out_a[15:8]), .w_en(
        n197), .r_en(rd_a_3), .data_out(dataout_a_3) );
  sync_fifo_4 fifo_a_4 ( .clk(clk), .rst(n2960), .data_in(out_a[7:0]), .w_en(
        n197), .r_en(rd_a_4), .data_out(dataout_a_4) );
  sync_fifo_3 fifo_b_1 ( .clk(clk), .rst(n295), .data_in(out_b[31:24]), .w_en(
        n197), .r_en(n270), .data_out(dataout_b_1) );
  sync_fifo_2 fifo_b_2 ( .clk(clk), .rst(n2960), .data_in(out_b[23:16]), 
        .w_en(n197), .r_en(rd_b_2), .data_out(dataout_b_2) );
  sync_fifo_1 fifo_b_3 ( .clk(clk), .rst(n2960), .data_in(out_b[15:8]), .w_en(
        n197), .r_en(rd_b_3), .data_out(dataout_b_3) );
  sync_fifo_0 fifo_b_4 ( .clk(clk), .rst(n295), .data_in(out_b[7:0]), .w_en(
        n197), .r_en(rd_b_4), .data_out(dataout_b_4) );
  mac_15 sys_row_0__sys_col_0__ul_mac ( .clk(clk), .reset(n2970), .up_in(
        from_top__net[127:120]), .left_in(from_left_net[127:120]), .up_out(
        from_top__net[95:88]), .left_out(from_left_net[95:88]), .mat_out(
        multi_out_net[127:120]) );
  mac_14 sys_row_0__sys_col_1__ul_mac ( .clk(clk), .reset(n2980), .up_in(
        from_top__net[119:112]), .left_in(from_left_net[95:88]), .up_out(
        from_top__net[87:80]), .left_out(from_left_net[63:56]), .mat_out(
        multi_out_net[119:112]) );
  mac_13 sys_row_0__sys_col_2__ul_mac ( .clk(clk), .reset(n2980), .up_in(
        from_top__net[111:104]), .left_in(from_left_net[63:56]), .up_out(
        from_top__net[79:72]), .left_out(from_left_net[31:24]), .mat_out(
        multi_out_net[111:104]) );
  mac_12 sys_row_0__sys_col_3__ul_mac ( .clk(clk), .reset(n3010), .up_in(
        from_top__net[103:96]), .left_in(from_left_net[31:24]), .up_out(
        from_top__net[71:64]), .left_out({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}), .mat_out(multi_out_net[103:96]) );
  mac_11 sys_row_1__sys_col_0__ul_mac ( .clk(clk), .reset(n3010), .up_in(
        from_top__net[95:88]), .left_in(from_left_net[119:112]), .up_out(
        from_top__net[63:56]), .left_out(from_left_net[87:80]), .mat_out(
        multi_out_net[95:88]) );
  mac_10 sys_row_1__sys_col_1__ul_mac ( .clk(clk), .reset(n3010), .up_in(
        from_top__net[87:80]), .left_in(from_left_net[87:80]), .up_out(
        from_top__net[55:48]), .left_out(from_left_net[55:48]), .mat_out(
        multi_out_net[87:80]) );
  mac_9 sys_row_1__sys_col_2__ul_mac ( .clk(clk), .reset(n3000), .up_in(
        from_top__net[79:72]), .left_in(from_left_net[55:48]), .up_out(
        from_top__net[47:40]), .left_out(from_left_net[23:16]), .mat_out(
        multi_out_net[79:72]) );
  mac_8 sys_row_1__sys_col_3__ul_mac ( .clk(clk), .reset(n3000), .up_in(
        from_top__net[71:64]), .left_in(from_left_net[23:16]), .up_out(
        from_top__net[39:32]), .left_out({SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}), .mat_out(multi_out_net[71:64]) );
  mac_7 sys_row_2__sys_col_0__ul_mac ( .clk(clk), .reset(n3000), .up_in(
        from_top__net[63:56]), .left_in(from_left_net[111:104]), .up_out(
        from_top__net[31:24]), .left_out(from_left_net[79:72]), .mat_out(
        multi_out_net[63:56]) );
  mac_6 sys_row_2__sys_col_1__ul_mac ( .clk(clk), .reset(n3000), .up_in(
        from_top__net[55:48]), .left_in(from_left_net[79:72]), .up_out(
        from_top__net[23:16]), .left_out(from_left_net[47:40]), .mat_out(
        multi_out_net[55:48]) );
  mac_5 sys_row_2__sys_col_2__ul_mac ( .clk(clk), .reset(n2990), .up_in(
        from_top__net[47:40]), .left_in(from_left_net[47:40]), .up_out(
        from_top__net[15:8]), .left_out(from_left_net[15:8]), .mat_out(
        multi_out_net[47:40]) );
  mac_4 sys_row_2__sys_col_3__ul_mac ( .clk(clk), .reset(n2990), .up_in(
        from_top__net[39:32]), .left_in(from_left_net[15:8]), .up_out(
        from_top__net[7:0]), .left_out({SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24}), .mat_out(multi_out_net[39:32]) );
  mac_3 sys_row_3__sys_col_0__ul_mac ( .clk(clk), .reset(n2990), .up_in(
        from_top__net[31:24]), .left_in(from_left_net[103:96]), .up_out({
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32}), .left_out(
        from_left_net[71:64]), .mat_out(multi_out_net[31:24]) );
  mac_2 sys_row_3__sys_col_1__ul_mac ( .clk(clk), .reset(n2990), .up_in(
        from_top__net[23:16]), .left_in(from_left_net[71:64]), .up_out({
        SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, 
        SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, 
        SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, 
        SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40}), .left_out(
        from_left_net[39:32]), .mat_out(multi_out_net[23:16]) );
  mac_1 sys_row_3__sys_col_2__ul_mac ( .clk(clk), .reset(n2980), .up_in(
        from_top__net[15:8]), .left_in(from_left_net[39:32]), .up_out({
        SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, 
        SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, 
        SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, 
        SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48}), .left_out(
        from_left_net[7:0]), .mat_out(multi_out_net[15:8]) );
  mac_0 sys_row_3__sys_col_3__ul_mac ( .clk(clk), .reset(n2980), .up_in(
        from_top__net[7:0]), .left_in(from_left_net[7:0]), .up_out({
        SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, 
        SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52, 
        SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54, 
        SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56}), .left_out({
        SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58, 
        SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60, 
        SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62, 
        SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64}), .mat_out(
        multi_out_net[7:0]) );
  tpu_DW01_add_0_DW01_add_2 add_341 ( .A(last_addr_c), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223}), .B_4_(cnt[4]), .B_3_(cnt[3]), .B_2_(
        cnt[2]), .B_1_(N41), .B_0_(N40) );
  tpu_DW01_inc_0_DW01_inc_5 add_319 ( .A(addr_c), .SUM({N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  tpu_DW01_inc_1_DW01_inc_6 add_308 ( .A(addr_b), .SUM({N167, N166, N165, N164, 
        N163, N162, N161, N160}) );
  tpu_DW01_inc_2_DW01_inc_7 add_307 ( .A(addr_a), .SUM({N159, N158, N157, N156, 
        N155, N154, N153, N152}) );
  HA1 r474_U1_1_1 ( .A(N41), .B(N40), .C(r474_carry[2]), .S(N142) );
  HA1 r474_U1_1_2 ( .A(cnt[2]), .B(r474_carry[2]), .C(r474_carry[3]), .S(N143)
         );
  HA1 r474_U1_1_3 ( .A(cnt[3]), .B(r474_carry[3]), .C(r474_carry[4]), .S(N144)
         );
  QDFFRBN last_addr_b_reg_0_ ( .D(n1870), .CK(clk), .RB(n288), .Q(
        last_addr_b[0]) );
  QDFFRBN last_addr_b_reg_1_ ( .D(n1850), .CK(clk), .RB(n290), .Q(
        last_addr_b[1]) );
  QDFFRBN last_addr_b_reg_2_ ( .D(n1830), .CK(clk), .RB(n289), .Q(
        last_addr_b[2]) );
  QDFFRBN last_addr_b_reg_3_ ( .D(n1810), .CK(clk), .RB(n289), .Q(
        last_addr_b[3]) );
  QDFFRBN last_addr_b_reg_4_ ( .D(n1790), .CK(clk), .RB(n289), .Q(
        last_addr_b[4]) );
  QDFFRBN last_addr_b_reg_5_ ( .D(n1770), .CK(clk), .RB(n289), .Q(
        last_addr_b[5]) );
  QDFFRBN last_addr_b_reg_6_ ( .D(n1750), .CK(clk), .RB(n289), .Q(
        last_addr_b[6]) );
  QDFFRBN last_addr_b_reg_7_ ( .D(n1890), .CK(clk), .RB(n288), .Q(
        last_addr_b[7]) );
  QDFFRBN last_addr_c_reg_7_ ( .D(n1550), .CK(clk), .RB(n283), .Q(
        last_addr_c[7]) );
  QDFFRBN last_addr_c_reg_6_ ( .D(n1560), .CK(clk), .RB(n282), .Q(
        last_addr_c[6]) );
  QDFFRBN last_addr_c_reg_5_ ( .D(n1570), .CK(clk), .RB(n282), .Q(
        last_addr_c[5]) );
  QDFFRBN last_addr_c_reg_4_ ( .D(n1580), .CK(clk), .RB(n282), .Q(
        last_addr_c[4]) );
  QDFFRBN last_addr_c_reg_3_ ( .D(n1590), .CK(clk), .RB(n282), .Q(
        last_addr_c[3]) );
  QDFFRBN cnt_n_reg_1_ ( .D(n1640), .CK(clk), .RB(n284), .Q(cnt_n[1]) );
  QDFFRBN cnt_n_reg_0_ ( .D(n1650), .CK(clk), .RB(n284), .Q(cnt_n[0]) );
  QDFFRBN last_addr_c_reg_2_ ( .D(n1600), .CK(clk), .RB(n282), .Q(
        last_addr_c[2]) );
  QDFFRBN cnt_m_reg_0_ ( .D(n191), .CK(clk), .RB(n285), .Q(cnt_m[0]) );
  QDFFRBN cnt_m_reg_1_ ( .D(n174), .CK(clk), .RB(n284), .Q(cnt_m[1]) );
  QDFFRBN last_addr_c_reg_1_ ( .D(n1610), .CK(clk), .RB(n282), .Q(
        last_addr_c[1]) );
  QDFFRBN last_addr_c_reg_0_ ( .D(n1620), .CK(clk), .RB(n282), .Q(
        last_addr_c[0]) );
  QDFFRBN cnt_reg_3_ ( .D(n193), .CK(clk), .RB(n285), .Q(cnt[3]) );
  QDFFRBN cnt_reg_2_ ( .D(n194), .CK(clk), .RB(n285), .Q(cnt[2]) );
  QDFFRBN cnt_reg_4_ ( .D(n192), .CK(clk), .RB(n285), .Q(cnt[4]) );
  QDFFRBN cnt_reg_1_ ( .D(n196), .CK(clk), .RB(n285), .Q(N41) );
  QDFFRBN state_reg_2_ ( .D(next_state[2]), .CK(clk), .RB(n282), .Q(state[2])
         );
  QDFFRBN cnt_reg_0_ ( .D(n195), .CK(clk), .RB(n285), .Q(N40) );
  QDFFRBN state_reg_1_ ( .D(next_state[1]), .CK(clk), .RB(n282), .Q(state[1])
         );
  QDFFRBN state_reg_0_ ( .D(next_state[0]), .CK(clk), .RB(n282), .Q(state[0])
         );
  QDFFRBN rd_a_4_reg ( .D(N59), .CK(clk), .RB(n283), .Q(rd_a_4) );
  QDFFRBN rd_a_2_reg ( .D(N57), .CK(clk), .RB(n284), .Q(rd_a_2) );
  QDFFRBN rd_a_3_reg ( .D(N58), .CK(clk), .RB(n284), .Q(rd_a_3) );
  QDFFRBN rd_b_4_reg ( .D(N72), .CK(clk), .RB(n284), .Q(rd_b_4) );
  QDFFRBN rd_b_2_reg ( .D(N70), .CK(clk), .RB(n284), .Q(rd_b_2) );
  QDFFRBN rd_b_3_reg ( .D(N71), .CK(clk), .RB(n284), .Q(rd_b_3) );
  QDFFRBN rd_a_1_reg ( .D(n147), .CK(clk), .RB(n284), .Q(rd_a_1) );
  QDFFRBN rd_b_1_reg ( .D(n146), .CK(clk), .RB(n284), .Q(rd_b_1) );
  QDFFRBN done_reg ( .D(n1430), .CK(clk), .RB(n291), .Q(done) );
  QDFFRBN addr_c_reg_1_ ( .D(n1530), .CK(clk), .RB(n283), .Q(addr_c[1]) );
  QDFFRBN addr_c_reg_2_ ( .D(n1520), .CK(clk), .RB(n283), .Q(addr_c[2]) );
  QDFFRBN addr_c_reg_3_ ( .D(n1510), .CK(clk), .RB(n283), .Q(addr_c[3]) );
  QDFFRBN addr_c_reg_4_ ( .D(n150), .CK(clk), .RB(n283), .Q(addr_c[4]) );
  QDFFRBN addr_c_reg_5_ ( .D(n149), .CK(clk), .RB(n283), .Q(addr_c[5]) );
  QDFFRBN addr_c_reg_6_ ( .D(n148), .CK(clk), .RB(n283), .Q(addr_c[6]) );
  QDFFRBN addr_c_reg_7_ ( .D(n1630), .CK(clk), .RB(n283), .Q(addr_c[7]) );
  QDFFRBN addr_a_reg_1_ ( .D(n171), .CK(clk), .RB(n291), .Q(addr_a[1]) );
  QDFFRBN addr_a_reg_2_ ( .D(n170), .CK(clk), .RB(n290), .Q(addr_a[2]) );
  QDFFRBN addr_a_reg_3_ ( .D(n169), .CK(clk), .RB(n290), .Q(addr_a[3]) );
  QDFFRBN addr_a_reg_4_ ( .D(n168), .CK(clk), .RB(n290), .Q(addr_a[4]) );
  QDFFRBN addr_a_reg_5_ ( .D(n1670), .CK(clk), .RB(n290), .Q(addr_a[5]) );
  QDFFRBN addr_a_reg_6_ ( .D(n1660), .CK(clk), .RB(n290), .Q(addr_a[6]) );
  QDFFRBN addr_a_reg_7_ ( .D(n173), .CK(clk), .RB(n290), .Q(addr_a[7]) );
  QDFFRBN addr_b_reg_1_ ( .D(n1860), .CK(clk), .RB(n290), .Q(addr_b[1]) );
  QDFFRBN addr_b_reg_2_ ( .D(n1840), .CK(clk), .RB(n290), .Q(addr_b[2]) );
  QDFFRBN addr_b_reg_3_ ( .D(n1820), .CK(clk), .RB(n289), .Q(addr_b[3]) );
  QDFFRBN addr_b_reg_4_ ( .D(n1800), .CK(clk), .RB(n289), .Q(addr_b[4]) );
  QDFFRBN addr_b_reg_5_ ( .D(n1780), .CK(clk), .RB(n289), .Q(addr_b[5]) );
  QDFFRBN addr_b_reg_6_ ( .D(n1760), .CK(clk), .RB(n289), .Q(addr_b[6]) );
  QDFFRBN addr_c_reg_0_ ( .D(n1540), .CK(clk), .RB(n283), .Q(addr_c[0]) );
  QDFFRBN addr_b_reg_7_ ( .D(n1900), .CK(clk), .RB(n289), .Q(addr_b[7]) );
  QDFFRBN addr_a_reg_0_ ( .D(n172), .CK(clk), .RB(n291), .Q(addr_a[0]) );
  QDFFRBN addr_b_reg_0_ ( .D(n1880), .CK(clk), .RB(n290), .Q(addr_b[0]) );
  QDFFRBN in_c_reg_31_ ( .D(N327), .CK(clk), .RB(n288), .Q(in_c[31]) );
  QDFFRBN in_c_reg_30_ ( .D(N326), .CK(clk), .RB(n288), .Q(in_c[30]) );
  QDFFRBN in_c_reg_29_ ( .D(N325), .CK(clk), .RB(n288), .Q(in_c[29]) );
  QDFFRBN in_c_reg_28_ ( .D(N324), .CK(clk), .RB(n288), .Q(in_c[28]) );
  QDFFRBN in_c_reg_27_ ( .D(N323), .CK(clk), .RB(n288), .Q(in_c[27]) );
  QDFFRBN in_c_reg_26_ ( .D(N322), .CK(clk), .RB(n288), .Q(in_c[26]) );
  QDFFRBN in_c_reg_25_ ( .D(N321), .CK(clk), .RB(n288), .Q(in_c[25]) );
  QDFFRBN in_c_reg_24_ ( .D(N320), .CK(clk), .RB(n288), .Q(in_c[24]) );
  QDFFRBN in_c_reg_23_ ( .D(N319), .CK(clk), .RB(n287), .Q(in_c[23]) );
  QDFFRBN in_c_reg_22_ ( .D(N318), .CK(clk), .RB(n287), .Q(in_c[22]) );
  QDFFRBN in_c_reg_21_ ( .D(N317), .CK(clk), .RB(n287), .Q(in_c[21]) );
  QDFFRBN in_c_reg_20_ ( .D(N316), .CK(clk), .RB(n287), .Q(in_c[20]) );
  QDFFRBN in_c_reg_19_ ( .D(N315), .CK(clk), .RB(n287), .Q(in_c[19]) );
  QDFFRBN in_c_reg_18_ ( .D(N314), .CK(clk), .RB(n287), .Q(in_c[18]) );
  QDFFRBN in_c_reg_17_ ( .D(N313), .CK(clk), .RB(n287), .Q(in_c[17]) );
  QDFFRBN in_c_reg_16_ ( .D(N312), .CK(clk), .RB(n287), .Q(in_c[16]) );
  QDFFRBN in_c_reg_15_ ( .D(N311), .CK(clk), .RB(n287), .Q(in_c[15]) );
  QDFFRBN in_c_reg_14_ ( .D(N310), .CK(clk), .RB(n287), .Q(in_c[14]) );
  QDFFRBN in_c_reg_13_ ( .D(N309), .CK(clk), .RB(n286), .Q(in_c[13]) );
  QDFFRBN in_c_reg_12_ ( .D(N308), .CK(clk), .RB(n286), .Q(in_c[12]) );
  QDFFRBN in_c_reg_11_ ( .D(N307), .CK(clk), .RB(n286), .Q(in_c[11]) );
  QDFFRBN in_c_reg_10_ ( .D(N306), .CK(clk), .RB(n286), .Q(in_c[10]) );
  QDFFRBN in_c_reg_9_ ( .D(N305), .CK(clk), .RB(n286), .Q(in_c[9]) );
  QDFFRBN in_c_reg_8_ ( .D(N304), .CK(clk), .RB(n286), .Q(in_c[8]) );
  QDFFRBN in_c_reg_7_ ( .D(N303), .CK(clk), .RB(n286), .Q(in_c[7]) );
  QDFFRBN in_c_reg_6_ ( .D(N302), .CK(clk), .RB(n286), .Q(in_c[6]) );
  QDFFRBN in_c_reg_5_ ( .D(N301), .CK(clk), .RB(n286), .Q(in_c[5]) );
  QDFFRBN in_c_reg_4_ ( .D(N300), .CK(clk), .RB(n286), .Q(in_c[4]) );
  QDFFRBN in_c_reg_3_ ( .D(N299), .CK(clk), .RB(n285), .Q(in_c[3]) );
  QDFFRBN in_c_reg_2_ ( .D(N298), .CK(clk), .RB(n285), .Q(in_c[2]) );
  QDFFRBN in_c_reg_1_ ( .D(N297), .CK(clk), .RB(n285), .Q(in_c[1]) );
  QDFFRBN in_c_reg_0_ ( .D(N296), .CK(clk), .RB(n285), .Q(in_c[0]) );
  QDFFRBN wr_en_c_reg ( .D(n1220), .CK(clk), .RB(n291), .Q(wr_en_c) );
  TIE1 U3 ( .O(n1020) );
  INV1S U4 ( .I(n1020), .O(wr_en_a) );
  INV1S U5 ( .I(n1020), .O(wr_en_b) );
  INV1S U6 ( .I(n1020), .O(in_a[31]) );
  INV1S U7 ( .I(n1020), .O(in_a[30]) );
  INV1S U8 ( .I(n1020), .O(in_a[29]) );
  INV1S U9 ( .I(n1020), .O(in_a[28]) );
  INV1S U10 ( .I(n1020), .O(in_a[27]) );
  INV1S U11 ( .I(n1020), .O(in_a[26]) );
  INV1S U13 ( .I(n1020), .O(in_a[25]) );
  INV1S U15 ( .I(n1020), .O(in_a[24]) );
  INV1S U16 ( .I(n1020), .O(in_a[23]) );
  INV1S U17 ( .I(n1020), .O(in_a[22]) );
  INV1S U19 ( .I(n1020), .O(in_a[21]) );
  INV1S U20 ( .I(n1020), .O(in_a[20]) );
  INV1S U21 ( .I(n1020), .O(in_a[19]) );
  INV1S U22 ( .I(n1020), .O(in_a[18]) );
  INV1S U24 ( .I(n1020), .O(in_a[17]) );
  INV1S U25 ( .I(n1020), .O(in_a[16]) );
  INV1S U26 ( .I(n1020), .O(in_a[15]) );
  INV1S U27 ( .I(n1020), .O(in_a[14]) );
  INV1S U28 ( .I(n1020), .O(in_a[13]) );
  INV1S U29 ( .I(n1020), .O(in_a[12]) );
  INV1S U30 ( .I(n1020), .O(in_a[11]) );
  INV1S U31 ( .I(n1020), .O(in_a[10]) );
  INV1S U32 ( .I(n1020), .O(in_a[9]) );
  INV1S U33 ( .I(n1020), .O(in_a[8]) );
  INV1S U34 ( .I(n1020), .O(in_a[7]) );
  INV1S U35 ( .I(n1020), .O(in_a[6]) );
  INV1S U36 ( .I(n1020), .O(in_a[5]) );
  INV1S U37 ( .I(n1020), .O(in_a[4]) );
  INV1S U38 ( .I(n1020), .O(in_a[3]) );
  INV1S U39 ( .I(n1020), .O(in_a[2]) );
  INV1S U40 ( .I(n1020), .O(in_a[1]) );
  INV1S U41 ( .I(n1020), .O(in_a[0]) );
  INV1S U42 ( .I(n1020), .O(in_b[31]) );
  INV1S U43 ( .I(n1020), .O(in_b[30]) );
  INV1S U44 ( .I(n1020), .O(in_b[29]) );
  INV1S U45 ( .I(n1020), .O(in_b[28]) );
  INV1S U46 ( .I(n1020), .O(in_b[27]) );
  INV1S U47 ( .I(n1020), .O(in_b[26]) );
  INV1S U48 ( .I(n1020), .O(in_b[25]) );
  INV1S U49 ( .I(n1020), .O(in_b[24]) );
  INV1S U50 ( .I(n1020), .O(in_b[23]) );
  INV1S U51 ( .I(n1020), .O(in_b[22]) );
  INV1S U52 ( .I(n1020), .O(in_b[21]) );
  INV1S U53 ( .I(n1020), .O(in_b[20]) );
  INV1S U54 ( .I(n1020), .O(in_b[19]) );
  INV1S U55 ( .I(n1020), .O(in_b[18]) );
  INV1S U56 ( .I(n1020), .O(in_b[17]) );
  INV1S U57 ( .I(n1020), .O(in_b[16]) );
  INV1S U58 ( .I(n1020), .O(in_b[15]) );
  INV1S U59 ( .I(n1020), .O(in_b[14]) );
  INV1S U60 ( .I(n1020), .O(in_b[13]) );
  INV1S U61 ( .I(n1020), .O(in_b[12]) );
  INV1S U62 ( .I(n1020), .O(in_b[11]) );
  INV1S U63 ( .I(n1020), .O(in_b[10]) );
  INV1S U64 ( .I(n1020), .O(in_b[9]) );
  INV1S U65 ( .I(n1020), .O(in_b[8]) );
  INV1S U66 ( .I(n1020), .O(in_b[7]) );
  INV1S U67 ( .I(n1020), .O(in_b[6]) );
  INV1S U68 ( .I(n1020), .O(in_b[5]) );
  INV1S U69 ( .I(n1020), .O(in_b[4]) );
  INV1S U70 ( .I(n1020), .O(in_b[3]) );
  INV1S U71 ( .I(n1020), .O(in_b[2]) );
  INV1S U72 ( .I(n1020), .O(in_b[1]) );
  INV1S U73 ( .I(n1020), .O(in_b[0]) );
  INV2 U75 ( .I(n3050), .O(n3060) );
  OR2 U77 ( .I1(n3230), .I2(n336), .O(n1150) );
  INV2 U78 ( .I(k[2]), .O(n336) );
  ND2 U79 ( .I1(n1060), .I2(n1030), .O(n3050) );
  NR2 U80 ( .I1(n343), .I2(N40), .O(n1050) );
  NR2 U81 ( .I1(n339), .I2(N41), .O(n1100) );
  NR2 U82 ( .I1(n343), .I2(n339), .O(n1110) );
  NR2 U83 ( .I1(N40), .I2(N41), .O(n1120) );
  ND2S U84 ( .I1(n1150), .I2(n1160), .O(n1130) );
  MAOI1 U85 ( .A1(n3250), .A2(n329), .B1(n3230), .B2(k[2]), .O(n3260) );
  INV2 U86 ( .I(n1080), .O(n344) );
  XNR2HS U87 ( .I1(n1250), .I2(m[3]), .O(n1240) );
  OAI112H U88 ( .C1(n3260), .C2(n333), .A1(n332), .B1(n337), .O(N42) );
  OR2 U89 ( .I1(m[0]), .I2(m[1]), .O(n970) );
  ND2 U90 ( .I1(n1140), .I2(k[0]), .O(n328) );
  NR2 U91 ( .I1(N41), .I2(N40), .O(n1140) );
  ND2T U92 ( .I1(n1000), .I2(n1030), .O(n3150) );
  AN2S U93 ( .I1(n332), .I2(n331), .O(n334) );
  ND2S U94 ( .I1(n3230), .I2(n336), .O(n1160) );
  MOAI1S U95 ( .A1(n336), .A2(cnt[2]), .B1(n330), .B2(n1130), .O(n331) );
  ND2 U96 ( .I1(n1150), .I2(n1160), .O(n329) );
  AN2 U97 ( .I1(n3050), .I2(n342), .O(n1180) );
  AN2 U98 ( .I1(n3050), .I2(n3040), .O(n1190) );
  ND3S U99 ( .I1(n960), .I2(n970), .I3(n980), .O(n950) );
  OR2S U100 ( .I1(n338), .I2(k[3]), .O(n332) );
  XNR2HS U101 ( .I1(cnt_n[1]), .I2(n1170), .O(n1640) );
  OR2S U102 ( .I1(n345), .I2(n1000), .O(n1170) );
  AN2S U103 ( .I1(add_268_carry_3_), .I2(k[3]), .O(N97) );
  OA12S U104 ( .B1(cnt_m[0]), .B2(n344), .A1(n3160), .O(n1040) );
  AN2S U105 ( .I1(add_35_carry_3_), .I2(k[3]), .O(N47) );
  NR2F U106 ( .I1(N42), .I2(n139), .O(n197) );
  BUF1CK U107 ( .I(n276), .O(n271) );
  BUF1CK U109 ( .I(n275), .O(n273) );
  BUF1CK U111 ( .I(n276), .O(n272) );
  BUF1CK U113 ( .I(n275), .O(n274) );
  INV1S U114 ( .I(n580), .O(n3160) );
  BUF1CK U116 ( .I(n3030), .O(n276) );
  INV1S U117 ( .I(n1280), .O(n340) );
  BUF1CK U118 ( .I(n3030), .O(n275) );
  AN2 U119 ( .I1(n3150), .I2(n342), .O(n1200) );
  NR2 U120 ( .I1(n950), .I2(n580), .O(n93) );
  AN2 U121 ( .I1(n3160), .I2(n950), .O(n940) );
  ND2 U122 ( .I1(n3200), .I2(n271), .O(n580) );
  INV1S U123 ( .I(n341), .O(n3030) );
  INV1S U124 ( .I(n66), .O(n3210) );
  BUF1CK U125 ( .I(n1110), .O(n258) );
  BUF1CK U126 ( .I(n1110), .O(n259) );
  BUF1CK U127 ( .I(n1110), .O(n257) );
  BUF1CK U128 ( .I(n277), .O(n282) );
  BUF1CK U129 ( .I(n279), .O(n286) );
  BUF1CK U130 ( .I(n279), .O(n287) );
  BUF1CK U131 ( .I(n280), .O(n288) );
  BUF1CK U132 ( .I(n280), .O(n289) );
  BUF1CK U133 ( .I(n281), .O(n290) );
  BUF1CK U134 ( .I(n277), .O(n283) );
  BUF1CK U136 ( .I(n278), .O(n285) );
  BUF1CK U137 ( .I(n278), .O(n284) );
  BUF1CK U138 ( .I(n281), .O(n291) );
  OAI112HS U139 ( .C1(n1230), .C2(n1240), .A1(n960), .B1(n980), .O(n1080) );
  OAI112HS U140 ( .C1(n349), .C2(n345), .A1(n344), .B1(n720), .O(n63) );
  INV1S U141 ( .I(n75), .O(n348) );
  NR2 U142 ( .I1(n1220), .I2(n340), .O(n64) );
  NR2 U143 ( .I1(n75), .I2(n349), .O(n77) );
  INV1S U144 ( .I(n73), .O(n349) );
  XOR2HS U145 ( .I1(n345), .I2(n1000), .O(n1650) );
  MOAI1S U146 ( .A1(n3230), .A2(n1280), .B1(N143), .B2(n1270), .O(n194) );
  AN2 U147 ( .I1(n131), .I2(n1280), .O(n1270) );
  MOAI1S U148 ( .A1(n3200), .A2(n1210), .B1(n61), .B2(n342), .O(n131) );
  MOAI1S U149 ( .A1(n343), .A2(n1280), .B1(N142), .B2(n1270), .O(n196) );
  NR2 U150 ( .I1(n340), .I2(n61), .O(n56) );
  INV1S U151 ( .I(n1210), .O(n3040) );
  INV1S U152 ( .I(n81), .O(n342) );
  INV1S U153 ( .I(n3020), .O(n3200) );
  AN2 U154 ( .I1(n3020), .I2(n271), .O(n1220) );
  AN2 U155 ( .I1(n3210), .I2(n269), .O(N57) );
  AN2 U156 ( .I1(n3210), .I2(n270), .O(N70) );
  NR3 U157 ( .I1(n66), .I2(n343), .I3(n85), .O(n83) );
  BUF1CK U158 ( .I(n1050), .O(n261) );
  BUF1CK U159 ( .I(n1050), .O(n262) );
  BUF1CK U160 ( .I(n1050), .O(n260) );
  BUF1CK U161 ( .I(n1100), .O(n264) );
  BUF1CK U162 ( .I(n1100), .O(n265) );
  BUF1CK U163 ( .I(n1100), .O(n263) );
  BUF1CK U164 ( .I(n1120), .O(n267) );
  BUF1CK U165 ( .I(n1120), .O(n268) );
  NR2 U166 ( .I1(n3190), .I2(n81), .O(n54) );
  BUF1CK U167 ( .I(n1120), .O(n266) );
  ND3 U168 ( .I1(n3180), .I2(n3190), .I3(n3170), .O(n590) );
  BUF1CK U169 ( .I(n292), .O(n2960) );
  BUF1CK U170 ( .I(n292), .O(n295) );
  BUF1CK U171 ( .I(n292), .O(n2970) );
  BUF1CK U172 ( .I(n293), .O(n3000) );
  BUF1CK U173 ( .I(n293), .O(n2990) );
  BUF1CK U174 ( .I(n293), .O(n2980) );
  BUF1CK U175 ( .I(n3220), .O(n279) );
  BUF1CK U176 ( .I(n3220), .O(n280) );
  BUF1CK U177 ( .I(n3220), .O(n278) );
  BUF1CK U178 ( .I(n3220), .O(n281) );
  BUF1CK U179 ( .I(n3220), .O(n277) );
  MOAI1S U180 ( .A1(n3150), .A2(n3080), .B1(N158), .B2(n1200), .O(n1660) );
  INV1S U181 ( .I(addr_a[6]), .O(n3080) );
  MOAI1S U182 ( .A1(n3150), .A2(n3090), .B1(N157), .B2(n1200), .O(n1670) );
  INV1S U183 ( .I(addr_a[5]), .O(n3090) );
  MOAI1S U184 ( .A1(n3150), .A2(n3100), .B1(N156), .B2(n1200), .O(n168) );
  INV1S U185 ( .I(addr_a[4]), .O(n3100) );
  MOAI1S U186 ( .A1(n3150), .A2(n3110), .B1(N155), .B2(n1200), .O(n169) );
  INV1S U187 ( .I(addr_a[3]), .O(n3110) );
  MOAI1S U188 ( .A1(n3150), .A2(n3120), .B1(N154), .B2(n1200), .O(n170) );
  INV1S U189 ( .I(addr_a[2]), .O(n3120) );
  MOAI1S U190 ( .A1(n3150), .A2(n3130), .B1(N153), .B2(n1200), .O(n171) );
  INV1S U191 ( .I(addr_a[1]), .O(n3130) );
  MOAI1S U192 ( .A1(n3150), .A2(n3140), .B1(N152), .B2(n1200), .O(n172) );
  INV1S U193 ( .I(addr_a[0]), .O(n3140) );
  MOAI1S U194 ( .A1(n3150), .A2(n3070), .B1(N159), .B2(n1200), .O(n173) );
  INV1S U195 ( .I(addr_a[7]), .O(n3070) );
  XOR2HS U196 ( .I1(m[2]), .I2(n970), .O(n1230) );
  INV1S U197 ( .I(k[1]), .O(n335) );
  NR2 U198 ( .I1(N41), .I2(n85), .O(n139) );
  XOR2HS U199 ( .I1(cnt_m[0]), .I2(n1230), .O(n960) );
  FA1S U200 ( .A(last_addr_c[1]), .B(m[1]), .CI(add_317_carry[1]), .CO(
        add_317_carry[2]), .S(N176) );
  MOAI1S U201 ( .A1(n54), .A2(n1420), .B1(n55), .B2(next_state[0]), .O(n1450)
         );
  AN2B1S U202 ( .I1(next_state[2]), .B1(next_state[1]), .O(n55) );
  XOR2HS U203 ( .I1(n79), .I2(n[3]), .O(n75) );
  OR2 U204 ( .I1(n[0]), .I2(n[1]), .O(n80) );
  XOR2HS U205 ( .I1(n[2]), .I2(n80), .O(n73) );
  XOR2HS U206 ( .I1(cnt[3]), .I2(N96), .O(n136) );
  ND3 U207 ( .I1(n133), .I2(n134), .I3(n135), .O(n61) );
  XOR2HS U208 ( .I1(n343), .I2(N94), .O(n134) );
  XNR2HS U209 ( .I1(cnt[4]), .I2(N97), .O(n133) );
  NR3 U210 ( .I1(n136), .I2(n137), .I3(n138), .O(n135) );
  MOAI1S U211 ( .A1(n339), .A2(n1280), .B1(n339), .B2(n1270), .O(n195) );
  AO22 U212 ( .A1(cnt[4]), .A2(n340), .B1(N145), .B2(n1270), .O(n192) );
  AO22 U214 ( .A1(cnt[3]), .A2(n340), .B1(N144), .B2(n1270), .O(n193) );
  XOR2HS U215 ( .I1(cnt[2]), .I2(N95), .O(n138) );
  OAI22S U216 ( .A1(n1040), .A2(n347), .B1(n1060), .B2(n1070), .O(n174) );
  INV1S U217 ( .I(cnt_m[1]), .O(n347) );
  MOAI1S U218 ( .A1(cnt_m[0]), .A2(n1060), .B1(n580), .B2(cnt_m[0]), .O(n191)
         );
  AOI13HS U219 ( .B1(n86), .B2(n87), .B3(n88), .A1(n66), .O(n82) );
  XOR2HS U220 ( .I1(n343), .I2(N44), .O(n87) );
  XNR2HS U221 ( .I1(cnt[4]), .I2(N47), .O(n86) );
  NR3 U222 ( .I1(n89), .I2(n90), .I3(n91), .O(n88) );
  XOR2HS U223 ( .I1(cnt[3]), .I2(N46), .O(n89) );
  AO12 U224 ( .B1(rd_a_1), .B2(n82), .A1(n83), .O(n147) );
  AO12 U225 ( .B1(rd_b_1), .B2(n82), .A1(n83), .O(n146) );
  XNR2HS U226 ( .I1(k[0]), .I2(N40), .O(n137) );
  XOR2HS U227 ( .I1(cnt[2]), .I2(N45), .O(n91) );
  XNR2HS U228 ( .I1(k[0]), .I2(N40), .O(n90) );
  AN2 U229 ( .I1(dataout_b_1[0]), .I2(n270), .O(from_top__net[120]) );
  BUF1CK U230 ( .I(rd_b_1), .O(n270) );
  AN2 U231 ( .I1(dataout_a_1[2]), .I2(n269), .O(from_left_net[122]) );
  BUF1CK U232 ( .I(rd_a_1), .O(n269) );
  AN2 U233 ( .I1(dataout_a_1[1]), .I2(n269), .O(from_left_net[121]) );
  AN2 U234 ( .I1(dataout_b_1[1]), .I2(n270), .O(from_top__net[121]) );
  AN2 U235 ( .I1(rd_b_3), .I2(dataout_b_3[0]), .O(from_top__net[104]) );
  AN2 U236 ( .I1(dataout_b_2[0]), .I2(rd_b_2), .O(from_top__net[112]) );
  AN2 U237 ( .I1(rd_b_4), .I2(dataout_b_4[0]), .O(from_top__net[96]) );
  AN2 U238 ( .I1(dataout_a_2[2]), .I2(rd_a_2), .O(from_left_net[114]) );
  AN2 U239 ( .I1(dataout_a_3[2]), .I2(rd_a_3), .O(from_left_net[106]) );
  AN2 U240 ( .I1(dataout_a_4[2]), .I2(rd_a_4), .O(from_left_net[98]) );
  AN2 U241 ( .I1(dataout_a_2[1]), .I2(rd_a_2), .O(from_left_net[113]) );
  AN2 U242 ( .I1(dataout_a_3[1]), .I2(rd_a_3), .O(from_left_net[105]) );
  AN2 U243 ( .I1(dataout_b_2[1]), .I2(rd_b_2), .O(from_top__net[113]) );
  AN2 U244 ( .I1(dataout_b_3[1]), .I2(rd_b_3), .O(from_top__net[105]) );
  AN2 U245 ( .I1(dataout_a_4[1]), .I2(rd_a_4), .O(from_left_net[97]) );
  AN2 U246 ( .I1(dataout_b_4[1]), .I2(rd_b_4), .O(from_top__net[97]) );
  AN2 U247 ( .I1(dataout_a_1[0]), .I2(n269), .O(from_left_net[120]) );
  AN2 U248 ( .I1(dataout_b_1[2]), .I2(n270), .O(from_top__net[122]) );
  AN2 U249 ( .I1(dataout_a_2[0]), .I2(rd_a_2), .O(from_left_net[112]) );
  AN2 U250 ( .I1(rd_a_3), .I2(dataout_a_3[0]), .O(from_left_net[104]) );
  AN2 U251 ( .I1(rd_a_4), .I2(dataout_a_4[0]), .O(from_left_net[96]) );
  AN2 U252 ( .I1(dataout_a_1[4]), .I2(n269), .O(from_left_net[124]) );
  AN2 U253 ( .I1(dataout_a_1[3]), .I2(n269), .O(from_left_net[123]) );
  AN2 U254 ( .I1(dataout_b_2[2]), .I2(rd_b_2), .O(from_top__net[114]) );
  AN2 U255 ( .I1(dataout_b_3[2]), .I2(rd_b_3), .O(from_top__net[106]) );
  AN2 U256 ( .I1(dataout_b_4[2]), .I2(rd_b_4), .O(from_top__net[98]) );
  AN2 U257 ( .I1(dataout_a_2[4]), .I2(rd_a_2), .O(from_left_net[116]) );
  AN2 U258 ( .I1(dataout_a_3[4]), .I2(rd_a_3), .O(from_left_net[108]) );
  AN2 U259 ( .I1(dataout_a_4[4]), .I2(rd_a_4), .O(from_left_net[100]) );
  AN2 U260 ( .I1(dataout_a_2[3]), .I2(rd_a_2), .O(from_left_net[115]) );
  AN2 U261 ( .I1(dataout_a_3[3]), .I2(rd_a_3), .O(from_left_net[107]) );
  AN2 U262 ( .I1(dataout_a_4[3]), .I2(rd_a_4), .O(from_left_net[99]) );
  AN2 U263 ( .I1(dataout_b_1[4]), .I2(n270), .O(from_top__net[124]) );
  AN2 U264 ( .I1(dataout_b_1[5]), .I2(n270), .O(from_top__net[125]) );
  AN2 U265 ( .I1(dataout_b_2[4]), .I2(rd_b_2), .O(from_top__net[116]) );
  AN2 U266 ( .I1(dataout_b_3[4]), .I2(rd_b_3), .O(from_top__net[108]) );
  AN2 U267 ( .I1(dataout_b_4[4]), .I2(rd_b_4), .O(from_top__net[100]) );
  AN2 U268 ( .I1(dataout_b_1[3]), .I2(n270), .O(from_top__net[123]) );
  AN2 U269 ( .I1(dataout_b_2[5]), .I2(rd_b_2), .O(from_top__net[117]) );
  AN2 U270 ( .I1(dataout_b_3[5]), .I2(rd_b_3), .O(from_top__net[109]) );
  AN2 U271 ( .I1(dataout_b_4[5]), .I2(rd_b_4), .O(from_top__net[101]) );
  AN2 U272 ( .I1(dataout_b_2[3]), .I2(rd_b_2), .O(from_top__net[115]) );
  AN2 U273 ( .I1(dataout_b_3[3]), .I2(rd_b_3), .O(from_top__net[107]) );
  AN2 U274 ( .I1(dataout_b_4[3]), .I2(rd_b_4), .O(from_top__net[99]) );
  AN2 U275 ( .I1(dataout_a_1[5]), .I2(n269), .O(from_left_net[125]) );
  AN2 U276 ( .I1(dataout_a_1[6]), .I2(n269), .O(from_left_net[126]) );
  AN2 U277 ( .I1(dataout_a_2[5]), .I2(rd_a_2), .O(from_left_net[117]) );
  AN2 U278 ( .I1(dataout_a_3[5]), .I2(rd_a_3), .O(from_left_net[109]) );
  AN2 U279 ( .I1(dataout_a_4[5]), .I2(rd_a_4), .O(from_left_net[101]) );
  AN2 U280 ( .I1(rd_a_2), .I2(dataout_a_2[6]), .O(from_left_net[118]) );
  AN2 U281 ( .I1(dataout_a_3[6]), .I2(rd_a_3), .O(from_left_net[110]) );
  AN2 U282 ( .I1(dataout_a_4[6]), .I2(rd_a_4), .O(from_left_net[102]) );
  AN2 U283 ( .I1(dataout_b_1[6]), .I2(n270), .O(from_top__net[126]) );
  AN2 U284 ( .I1(rd_b_2), .I2(dataout_b_2[6]), .O(from_top__net[118]) );
  AN2 U285 ( .I1(dataout_b_3[6]), .I2(rd_b_3), .O(from_top__net[110]) );
  AN2 U286 ( .I1(dataout_b_4[6]), .I2(rd_b_4), .O(from_top__net[102]) );
  INV1S U287 ( .I(state[0]), .O(n3170) );
  INV1S U288 ( .I(state[1]), .O(n3180) );
  INV1S U289 ( .I(N40), .O(n339) );
  INV1S U290 ( .I(state[2]), .O(n3190) );
  OR3 U291 ( .I1(n3230), .I2(n1260), .I3(N40), .O(n3020) );
  OR3 U292 ( .I1(N41), .I2(cnt[4]), .I3(cnt[3]), .O(n1260) );
  INV1S U293 ( .I(cnt[2]), .O(n3230) );
  INV1S U294 ( .I(cnt[3]), .O(n338) );
  ND3 U295 ( .I1(n339), .I2(n3230), .I3(n140), .O(n85) );
  NR2 U296 ( .I1(cnt[4]), .I2(cnt[3]), .O(n140) );
  INV1S U297 ( .I(cnt[4]), .O(n337) );
  AN2 U298 ( .I1(dataout_a_1[7]), .I2(n269), .O(from_left_net[127]) );
  NR3 U299 ( .I1(n66), .I2(N41), .I3(n85), .O(n1090) );
  AN2 U300 ( .I1(dataout_a_2[7]), .I2(rd_a_2), .O(from_left_net[119]) );
  AN2 U301 ( .I1(dataout_a_3[7]), .I2(rd_a_3), .O(from_left_net[111]) );
  AN2 U302 ( .I1(dataout_a_4[7]), .I2(rd_a_4), .O(from_left_net[103]) );
  INV1S U303 ( .I(cnt_n[0]), .O(n345) );
  AN2 U304 ( .I1(n3210), .I2(rd_a_3), .O(N59) );
  AN2 U305 ( .I1(n3210), .I2(rd_a_2), .O(N58) );
  AN2 U306 ( .I1(n3210), .I2(rd_b_3), .O(N72) );
  AN2 U307 ( .I1(n3210), .I2(rd_b_2), .O(N71) );
  AN2 U308 ( .I1(dataout_b_1[7]), .I2(n270), .O(from_top__net[127]) );
  AN2 U309 ( .I1(dataout_b_2[7]), .I2(rd_b_2), .O(from_top__net[119]) );
  AN2 U310 ( .I1(dataout_b_3[7]), .I2(rd_b_3), .O(from_top__net[111]) );
  INV1S U311 ( .I(cnt_n[1]), .O(n346) );
  AN2 U312 ( .I1(dataout_b_4[7]), .I2(rd_b_4), .O(from_top__net[103]) );
  INV1S U313 ( .I(N41), .O(n343) );
  AO13S U314 ( .B1(state[1]), .B2(state[0]), .B3(n3190), .A1(done), .O(n1430)
         );
  INV1S U315 ( .I(rst), .O(n3220) );
  BUF1CK U316 ( .I(n294), .O(n3010) );
  BUF1CK U317 ( .I(sys_rst), .O(n294) );
  BUF1CK U318 ( .I(sys_rst), .O(n292) );
  BUF1CK U319 ( .I(sys_rst), .O(n293) );
  AOI22S U321 ( .A1(multi_out_net[32]), .A2(n262), .B1(multi_out_net[0]), .B2(
        n259), .O(n130) );
  AOI22S U322 ( .A1(multi_out_net[96]), .A2(n268), .B1(multi_out_net[64]), 
        .B2(n265), .O(n1290) );
  ND2 U323 ( .I1(n130), .I2(n1290), .O(N129) );
  AOI22S U324 ( .A1(multi_out_net[33]), .A2(n262), .B1(multi_out_net[1]), .B2(
        n259), .O(n141) );
  AOI22S U325 ( .A1(multi_out_net[97]), .A2(n268), .B1(multi_out_net[65]), 
        .B2(n265), .O(n132) );
  ND2 U326 ( .I1(n141), .I2(n132), .O(N128) );
  AOI22S U327 ( .A1(multi_out_net[34]), .A2(n262), .B1(multi_out_net[2]), .B2(
        n259), .O(n198) );
  AOI22S U328 ( .A1(multi_out_net[98]), .A2(n268), .B1(multi_out_net[66]), 
        .B2(n265), .O(n1440) );
  ND2 U329 ( .I1(n198), .I2(n1440), .O(N127) );
  AOI22S U330 ( .A1(multi_out_net[35]), .A2(n262), .B1(multi_out_net[3]), .B2(
        n259), .O(n200) );
  AOI22S U331 ( .A1(multi_out_net[99]), .A2(n268), .B1(multi_out_net[67]), 
        .B2(n265), .O(n199) );
  ND2 U332 ( .I1(n200), .I2(n199), .O(N126) );
  AOI22S U333 ( .A1(multi_out_net[36]), .A2(n262), .B1(multi_out_net[4]), .B2(
        n259), .O(n202) );
  AOI22S U334 ( .A1(multi_out_net[100]), .A2(n268), .B1(multi_out_net[68]), 
        .B2(n265), .O(n201) );
  ND2 U335 ( .I1(n202), .I2(n201), .O(N125) );
  AOI22S U336 ( .A1(multi_out_net[37]), .A2(n262), .B1(multi_out_net[5]), .B2(
        n259), .O(n204) );
  AOI22S U337 ( .A1(multi_out_net[101]), .A2(n268), .B1(multi_out_net[69]), 
        .B2(n265), .O(n203) );
  ND2 U338 ( .I1(n204), .I2(n203), .O(N124) );
  AOI22S U339 ( .A1(multi_out_net[38]), .A2(n262), .B1(multi_out_net[6]), .B2(
        n259), .O(n206) );
  AOI22S U340 ( .A1(multi_out_net[102]), .A2(n268), .B1(multi_out_net[70]), 
        .B2(n265), .O(n205) );
  ND2 U341 ( .I1(n206), .I2(n205), .O(N123) );
  AOI22S U342 ( .A1(multi_out_net[39]), .A2(n262), .B1(multi_out_net[7]), .B2(
        n259), .O(n208) );
  AOI22S U343 ( .A1(multi_out_net[103]), .A2(n268), .B1(multi_out_net[71]), 
        .B2(n265), .O(n207) );
  ND2 U344 ( .I1(n208), .I2(n207), .O(N122) );
  AOI22S U345 ( .A1(multi_out_net[40]), .A2(n262), .B1(multi_out_net[8]), .B2(
        n259), .O(n210) );
  AOI22S U346 ( .A1(multi_out_net[104]), .A2(n268), .B1(multi_out_net[72]), 
        .B2(n265), .O(n209) );
  ND2 U347 ( .I1(n210), .I2(n209), .O(N121) );
  AOI22S U348 ( .A1(multi_out_net[41]), .A2(n262), .B1(multi_out_net[9]), .B2(
        n259), .O(n212) );
  AOI22S U349 ( .A1(multi_out_net[105]), .A2(n268), .B1(multi_out_net[73]), 
        .B2(n265), .O(n211) );
  ND2 U350 ( .I1(n212), .I2(n211), .O(N120) );
  AOI22S U351 ( .A1(multi_out_net[42]), .A2(n262), .B1(multi_out_net[10]), 
        .B2(n259), .O(n214) );
  AOI22S U352 ( .A1(multi_out_net[106]), .A2(n268), .B1(multi_out_net[74]), 
        .B2(n265), .O(n213) );
  ND2 U353 ( .I1(n214), .I2(n213), .O(N119) );
  AOI22S U354 ( .A1(multi_out_net[43]), .A2(n261), .B1(multi_out_net[11]), 
        .B2(n258), .O(n216) );
  AOI22S U355 ( .A1(multi_out_net[107]), .A2(n267), .B1(multi_out_net[75]), 
        .B2(n264), .O(n215) );
  ND2 U356 ( .I1(n216), .I2(n215), .O(N118) );
  AOI22S U357 ( .A1(multi_out_net[44]), .A2(n261), .B1(multi_out_net[12]), 
        .B2(n258), .O(n218) );
  AOI22S U358 ( .A1(multi_out_net[108]), .A2(n267), .B1(multi_out_net[76]), 
        .B2(n264), .O(n217) );
  ND2 U359 ( .I1(n218), .I2(n217), .O(N117) );
  AOI22S U360 ( .A1(multi_out_net[45]), .A2(n261), .B1(multi_out_net[13]), 
        .B2(n258), .O(n220) );
  AOI22S U361 ( .A1(multi_out_net[109]), .A2(n267), .B1(multi_out_net[77]), 
        .B2(n264), .O(n219) );
  ND2 U362 ( .I1(n220), .I2(n219), .O(N116) );
  AOI22S U363 ( .A1(multi_out_net[46]), .A2(n261), .B1(multi_out_net[14]), 
        .B2(n258), .O(n222) );
  AOI22S U364 ( .A1(multi_out_net[110]), .A2(n267), .B1(multi_out_net[78]), 
        .B2(n264), .O(n221) );
  ND2 U365 ( .I1(n222), .I2(n221), .O(N115) );
  AOI22S U366 ( .A1(multi_out_net[47]), .A2(n261), .B1(multi_out_net[15]), 
        .B2(n258), .O(n2240) );
  AOI22S U367 ( .A1(multi_out_net[111]), .A2(n267), .B1(multi_out_net[79]), 
        .B2(n264), .O(n2230) );
  ND2 U368 ( .I1(n2240), .I2(n2230), .O(N114) );
  AOI22S U369 ( .A1(multi_out_net[48]), .A2(n261), .B1(multi_out_net[16]), 
        .B2(n258), .O(n2260) );
  AOI22S U370 ( .A1(multi_out_net[112]), .A2(n267), .B1(multi_out_net[80]), 
        .B2(n264), .O(n2250) );
  ND2 U371 ( .I1(n2260), .I2(n2250), .O(N113) );
  AOI22S U372 ( .A1(multi_out_net[49]), .A2(n261), .B1(multi_out_net[17]), 
        .B2(n258), .O(n2280) );
  AOI22S U373 ( .A1(multi_out_net[113]), .A2(n267), .B1(multi_out_net[81]), 
        .B2(n264), .O(n2270) );
  ND2 U374 ( .I1(n2280), .I2(n2270), .O(N112) );
  AOI22S U375 ( .A1(multi_out_net[50]), .A2(n261), .B1(multi_out_net[18]), 
        .B2(n258), .O(n2300) );
  AOI22S U376 ( .A1(multi_out_net[114]), .A2(n267), .B1(multi_out_net[82]), 
        .B2(n264), .O(n2290) );
  ND2 U377 ( .I1(n2300), .I2(n2290), .O(N111) );
  AOI22S U378 ( .A1(multi_out_net[51]), .A2(n261), .B1(multi_out_net[19]), 
        .B2(n258), .O(n232) );
  AOI22S U379 ( .A1(multi_out_net[115]), .A2(n267), .B1(multi_out_net[83]), 
        .B2(n264), .O(n231) );
  ND2 U380 ( .I1(n232), .I2(n231), .O(N110) );
  AOI22S U381 ( .A1(multi_out_net[52]), .A2(n261), .B1(multi_out_net[20]), 
        .B2(n258), .O(n234) );
  AOI22S U382 ( .A1(multi_out_net[116]), .A2(n267), .B1(multi_out_net[84]), 
        .B2(n264), .O(n233) );
  ND2 U383 ( .I1(n234), .I2(n233), .O(N109) );
  AOI22S U384 ( .A1(multi_out_net[53]), .A2(n261), .B1(multi_out_net[21]), 
        .B2(n258), .O(n236) );
  AOI22S U385 ( .A1(multi_out_net[117]), .A2(n267), .B1(multi_out_net[85]), 
        .B2(n264), .O(n235) );
  ND2 U386 ( .I1(n236), .I2(n235), .O(N108) );
  AOI22S U387 ( .A1(multi_out_net[54]), .A2(n260), .B1(multi_out_net[22]), 
        .B2(n257), .O(n238) );
  AOI22S U388 ( .A1(multi_out_net[118]), .A2(n266), .B1(multi_out_net[86]), 
        .B2(n263), .O(n237) );
  ND2 U389 ( .I1(n238), .I2(n237), .O(N107) );
  AOI22S U390 ( .A1(multi_out_net[55]), .A2(n260), .B1(multi_out_net[23]), 
        .B2(n257), .O(n240) );
  AOI22S U391 ( .A1(multi_out_net[119]), .A2(n266), .B1(multi_out_net[87]), 
        .B2(n263), .O(n239) );
  ND2 U392 ( .I1(n240), .I2(n239), .O(N106) );
  AOI22S U393 ( .A1(multi_out_net[56]), .A2(n260), .B1(multi_out_net[24]), 
        .B2(n257), .O(n242) );
  AOI22S U394 ( .A1(multi_out_net[120]), .A2(n266), .B1(multi_out_net[88]), 
        .B2(n263), .O(n241) );
  ND2 U395 ( .I1(n242), .I2(n241), .O(N105) );
  AOI22S U396 ( .A1(multi_out_net[57]), .A2(n260), .B1(multi_out_net[25]), 
        .B2(n257), .O(n244) );
  AOI22S U397 ( .A1(multi_out_net[121]), .A2(n266), .B1(multi_out_net[89]), 
        .B2(n263), .O(n243) );
  ND2 U398 ( .I1(n244), .I2(n243), .O(N104) );
  AOI22S U399 ( .A1(multi_out_net[58]), .A2(n260), .B1(multi_out_net[26]), 
        .B2(n257), .O(n246) );
  AOI22S U400 ( .A1(multi_out_net[122]), .A2(n266), .B1(multi_out_net[90]), 
        .B2(n263), .O(n245) );
  ND2 U401 ( .I1(n246), .I2(n245), .O(N103) );
  AOI22S U402 ( .A1(multi_out_net[59]), .A2(n260), .B1(multi_out_net[27]), 
        .B2(n257), .O(n248) );
  AOI22S U403 ( .A1(multi_out_net[123]), .A2(n266), .B1(multi_out_net[91]), 
        .B2(n263), .O(n247) );
  ND2 U404 ( .I1(n248), .I2(n247), .O(N102) );
  AOI22S U405 ( .A1(multi_out_net[60]), .A2(n260), .B1(multi_out_net[28]), 
        .B2(n257), .O(n250) );
  AOI22S U406 ( .A1(multi_out_net[124]), .A2(n266), .B1(multi_out_net[92]), 
        .B2(n263), .O(n249) );
  ND2 U407 ( .I1(n250), .I2(n249), .O(N101) );
  AOI22S U408 ( .A1(multi_out_net[61]), .A2(n260), .B1(multi_out_net[29]), 
        .B2(n257), .O(n252) );
  AOI22S U409 ( .A1(multi_out_net[125]), .A2(n266), .B1(multi_out_net[93]), 
        .B2(n263), .O(n251) );
  ND2 U410 ( .I1(n252), .I2(n251), .O(N100) );
  AOI22S U411 ( .A1(multi_out_net[62]), .A2(n260), .B1(multi_out_net[30]), 
        .B2(n257), .O(n254) );
  AOI22S U412 ( .A1(multi_out_net[126]), .A2(n266), .B1(multi_out_net[94]), 
        .B2(n263), .O(n253) );
  ND2 U413 ( .I1(n254), .I2(n253), .O(N99) );
  AOI22S U414 ( .A1(multi_out_net[63]), .A2(n260), .B1(multi_out_net[31]), 
        .B2(n257), .O(n256) );
  AOI22S U415 ( .A1(multi_out_net[127]), .A2(n266), .B1(multi_out_net[95]), 
        .B2(n263), .O(n255) );
  ND2 U416 ( .I1(n256), .I2(n255), .O(N98) );
  OAI112HS U417 ( .C1(n54), .C2(n3190), .A1(n67), .B1(n590), .O(next_state[2])
         );
  ND2 U418 ( .I1(state[1]), .I2(n3170), .O(n1210) );
  ND2 U419 ( .I1(n3040), .I2(n3190), .O(n341) );
  OAI222S U420 ( .A1(n61), .A2(n66), .B1(n63), .B2(n341), .C1(n64), .C2(n3180), 
        .O(next_state[1]) );
  OAI112HS U421 ( .C1(n56), .C2(n3170), .A1(n590), .B1(n580), .O(next_state[0]) );
  AO222 U422 ( .A1(N181), .A2(n93), .B1(last_addr_c[6]), .B2(n580), .C1(N189), 
        .C2(n940), .O(n1560) );
  AO222 U423 ( .A1(N180), .A2(n93), .B1(last_addr_c[5]), .B2(n580), .C1(N188), 
        .C2(n940), .O(n1570) );
  AO222 U424 ( .A1(N179), .A2(n93), .B1(last_addr_c[4]), .B2(n580), .C1(N187), 
        .C2(n940), .O(n1580) );
  AO222 U425 ( .A1(N178), .A2(n93), .B1(last_addr_c[3]), .B2(n580), .C1(N186), 
        .C2(n940), .O(n1590) );
  AO222 U426 ( .A1(N177), .A2(n93), .B1(last_addr_c[2]), .B2(n580), .C1(N185), 
        .C2(n940), .O(n1600) );
  AO222 U427 ( .A1(N176), .A2(n93), .B1(last_addr_c[1]), .B2(n580), .C1(N184), 
        .C2(n940), .O(n1610) );
  AO222 U428 ( .A1(N175), .A2(n93), .B1(last_addr_c[0]), .B2(n580), .C1(N183), 
        .C2(n940), .O(n1620) );
  MUX2 U429 ( .A(addr_c[7]), .B(N230), .S(n271), .O(n1630) );
  MUX2 U430 ( .A(addr_c[6]), .B(N229), .S(n271), .O(n148) );
  MUX2 U431 ( .A(addr_c[5]), .B(N228), .S(n271), .O(n149) );
  MUX2 U432 ( .A(addr_c[4]), .B(N227), .S(n271), .O(n150) );
  MUX2 U433 ( .A(addr_c[3]), .B(N226), .S(n271), .O(n1510) );
  MUX2 U434 ( .A(addr_c[2]), .B(N225), .S(n271), .O(n1520) );
  MUX2 U435 ( .A(addr_c[1]), .B(N224), .S(n271), .O(n1530) );
  MUX2 U436 ( .A(addr_c[0]), .B(N223), .S(n271), .O(n1540) );
  AO222 U437 ( .A1(N182), .A2(n93), .B1(last_addr_c[7]), .B2(n580), .C1(N190), 
        .C2(n940), .O(n1550) );
  ND2 U438 ( .I1(state[0]), .I2(n3180), .O(n81) );
  AN2 U439 ( .I1(N105), .I2(n272), .O(N296) );
  AN2 U440 ( .I1(N104), .I2(n272), .O(N297) );
  AN2 U441 ( .I1(N103), .I2(n272), .O(N298) );
  AN2 U442 ( .I1(N102), .I2(n272), .O(N299) );
  AN2 U443 ( .I1(N101), .I2(n272), .O(N300) );
  AN2 U444 ( .I1(N100), .I2(n272), .O(N301) );
  AN2 U445 ( .I1(N99), .I2(n272), .O(N302) );
  AN2 U446 ( .I1(N98), .I2(n272), .O(N303) );
  AN2 U447 ( .I1(N113), .I2(n272), .O(N304) );
  AN2 U448 ( .I1(N112), .I2(n272), .O(N305) );
  AN2 U449 ( .I1(N111), .I2(n273), .O(N306) );
  AN2 U450 ( .I1(N110), .I2(n273), .O(N307) );
  AN2 U451 ( .I1(N109), .I2(n273), .O(N308) );
  AN2 U452 ( .I1(N108), .I2(n273), .O(N309) );
  AN2 U453 ( .I1(N107), .I2(n273), .O(N310) );
  AN2 U454 ( .I1(N106), .I2(n273), .O(N311) );
  AN2 U455 ( .I1(N121), .I2(n273), .O(N312) );
  AN2 U456 ( .I1(N120), .I2(n273), .O(N313) );
  AN2 U457 ( .I1(N119), .I2(n273), .O(N314) );
  AN2 U458 ( .I1(N118), .I2(n273), .O(N315) );
  AN2 U459 ( .I1(N117), .I2(n273), .O(N316) );
  AN2 U460 ( .I1(N116), .I2(n273), .O(N317) );
  AN2 U461 ( .I1(N115), .I2(n274), .O(N318) );
  AN2 U462 ( .I1(N114), .I2(n274), .O(N319) );
  AN2 U463 ( .I1(N129), .I2(n274), .O(N320) );
  AN2 U464 ( .I1(N128), .I2(n274), .O(N321) );
  AN2 U465 ( .I1(N127), .I2(n274), .O(N322) );
  AN2 U466 ( .I1(N126), .I2(n274), .O(N323) );
  AN2 U467 ( .I1(N125), .I2(n274), .O(N324) );
  AN2 U468 ( .I1(N124), .I2(n274), .O(N325) );
  AN2 U469 ( .I1(N123), .I2(n272), .O(N326) );
  AN2 U470 ( .I1(N122), .I2(n272), .O(N327) );
  MUX2 U471 ( .A(last_addr_b[0]), .B(addr_b[0]), .S(n1090), .O(n1870) );
  MUX2 U472 ( .A(last_addr_b[7]), .B(addr_b[7]), .S(n1090), .O(n1890) );
  AO222 U473 ( .A1(N167), .A2(n1180), .B1(last_addr_b[7]), .B2(n1190), .C1(
        addr_b[7]), .C2(n3060), .O(n1900) );
  MUX2 U474 ( .A(last_addr_b[6]), .B(addr_b[6]), .S(n1090), .O(n1750) );
  AO222 U475 ( .A1(N166), .A2(n1180), .B1(last_addr_b[6]), .B2(n1190), .C1(
        addr_b[6]), .C2(n3060), .O(n1760) );
  MUX2 U476 ( .A(last_addr_b[5]), .B(addr_b[5]), .S(n1090), .O(n1770) );
  AO222 U477 ( .A1(N165), .A2(n1180), .B1(last_addr_b[5]), .B2(n1190), .C1(
        addr_b[5]), .C2(n3060), .O(n1780) );
  MUX2 U478 ( .A(last_addr_b[4]), .B(addr_b[4]), .S(n1090), .O(n1790) );
  AO222 U479 ( .A1(N164), .A2(n1180), .B1(last_addr_b[4]), .B2(n1190), .C1(
        addr_b[4]), .C2(n3060), .O(n1800) );
  MUX2 U480 ( .A(last_addr_b[3]), .B(addr_b[3]), .S(n1090), .O(n1810) );
  AO222 U481 ( .A1(N163), .A2(n1180), .B1(last_addr_b[3]), .B2(n1190), .C1(
        addr_b[3]), .C2(n3060), .O(n1820) );
  MUX2 U482 ( .A(last_addr_b[2]), .B(addr_b[2]), .S(n1090), .O(n1830) );
  AO222 U483 ( .A1(N162), .A2(n1180), .B1(last_addr_b[2]), .B2(n1190), .C1(
        addr_b[2]), .C2(n3060), .O(n1840) );
  MUX2 U484 ( .A(last_addr_b[1]), .B(addr_b[1]), .S(n1090), .O(n1850) );
  AO222 U485 ( .A1(N161), .A2(n1180), .B1(last_addr_b[1]), .B2(n1190), .C1(
        addr_b[1]), .C2(n3060), .O(n1860) );
  AO222 U486 ( .A1(N160), .A2(n1180), .B1(last_addr_b[0]), .B2(n1190), .C1(
        addr_b[0]), .C2(n3060), .O(n1880) );
  XOR2HS U487 ( .I1(last_addr_c[7]), .I2(add_317_carry[7]), .O(N182) );
  AN2 U488 ( .I1(add_317_carry[6]), .I2(last_addr_c[6]), .O(add_317_carry[7])
         );
  XOR2HS U489 ( .I1(last_addr_c[6]), .I2(add_317_carry[6]), .O(N181) );
  AN2 U490 ( .I1(add_317_carry[5]), .I2(last_addr_c[5]), .O(add_317_carry[6])
         );
  XOR2HS U491 ( .I1(last_addr_c[5]), .I2(add_317_carry[5]), .O(N180) );
  AN2 U492 ( .I1(add_317_carry[4]), .I2(last_addr_c[4]), .O(add_317_carry[5])
         );
  XOR2HS U493 ( .I1(last_addr_c[4]), .I2(add_317_carry[4]), .O(N179) );
  AN2 U494 ( .I1(add_317_carry[3]), .I2(last_addr_c[3]), .O(add_317_carry[4])
         );
  XOR2HS U495 ( .I1(last_addr_c[3]), .I2(add_317_carry[3]), .O(N178) );
  AN2 U496 ( .I1(add_317_carry[2]), .I2(last_addr_c[2]), .O(add_317_carry[3])
         );
  XOR2HS U497 ( .I1(last_addr_c[2]), .I2(add_317_carry[2]), .O(N177) );
  AN2 U498 ( .I1(last_addr_c[0]), .I2(m[0]), .O(add_317_carry[1]) );
  XOR2HS U499 ( .I1(m[0]), .I2(last_addr_c[0]), .O(N175) );
  XOR2HS U500 ( .I1(k[3]), .I2(add_35_carry_3_), .O(N46) );
  AN2 U501 ( .I1(add_35_carry_2_), .I2(k[2]), .O(add_35_carry_3_) );
  XOR2HS U502 ( .I1(k[2]), .I2(add_35_carry_2_), .O(N45) );
  OR2 U503 ( .I1(k[1]), .I2(k[0]), .O(add_35_carry_2_) );
  XNR2HS U504 ( .I1(k[0]), .I2(k[1]), .O(N44) );
  XOR2HS U505 ( .I1(k[3]), .I2(add_268_carry_3_), .O(N96) );
  OR2 U506 ( .I1(k[2]), .I2(add_268_carry_2_), .O(add_268_carry_3_) );
  XNR2HS U507 ( .I1(add_268_carry_2_), .I2(k[2]), .O(N95) );
  OR2 U508 ( .I1(k[1]), .I2(k[0]), .O(add_268_carry_2_) );
  XNR2HS U509 ( .I1(k[0]), .I2(k[1]), .O(N94) );
  XOR2HS U510 ( .I1(r474_carry[4]), .I2(cnt[4]), .O(N145) );
  AN2 U511 ( .I1(k[3]), .I2(n338), .O(n333) );
  NR2 U512 ( .I1(k[0]), .I2(n339), .O(n3240) );
  MAO222 U513 ( .A1(n335), .B1(n3240), .C1(N41), .O(n3250) );
  ND2 U514 ( .I1(k[0]), .I2(n339), .O(n3270) );
  AOI22S U515 ( .A1(n328), .A2(n335), .B1(N41), .B2(n3270), .O(n330) );
  OA12 U516 ( .B1(n334), .B2(n333), .A1(n337), .O(N151) );
endmodule


module CHIP ( clk, rst, start, m, k, n, done, wr_en_a, wr_en_b, wr_en_c, 
        addr_a, addr_b, addr_c, in_a, in_b, in_c, out_a, out_b, out_c );
  input [3:0] m;
  input [3:0] k;
  input [3:0] n;
  output [7:0] addr_a;
  output [7:0] addr_b;
  output [7:0] addr_c;
  output [31:0] in_a;
  output [31:0] in_b;
  output [31:0] in_c;
  input [31:0] out_a;
  input [31:0] out_b;
  input [31:0] out_c;
  input clk, rst, start;
  output done, wr_en_a, wr_en_b, wr_en_c;
  wire   i_clk, i_rst, i_start, i_done, n1, i_wr_en_c, i_out_c_31_,
         i_out_c_30_, i_out_c_29_, i_out_c_28_, i_out_c_27_, i_out_c_26_,
         i_out_c_25_, i_out_c_24_, i_out_c_23_, i_out_c_22_, i_out_c_21_,
         i_out_c_20_, i_out_c_19_, i_out_c_18_, i_out_c_17_, i_out_c_16_,
         i_out_c_15_, i_out_c_14_, i_out_c_13_, i_out_c_12_, i_out_c_11_,
         i_out_c_10_, i_out_c_9_, i_out_c_8_, i_out_c_7_, i_out_c_6_,
         i_out_c_5_, i_out_c_4_, i_out_c_3_, i_out_c_2_, i_out_c_1_,
         i_out_c_0_, n2, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32,
         SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34,
         SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36,
         SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38,
         SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40,
         SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42,
         SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44,
         SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46,
         SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48,
         SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50,
         SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52,
         SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54,
         SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56,
         SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58,
         SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60,
         SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62,
         SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64;
  wire   [31:0] i_out_b;
  wire   [31:0] i_out_a;
  wire   [31:0] i_in_c;
  wire   [7:0] i_addr_c;
  wire   [7:0] i_addr_b;
  wire   [7:0] i_addr_a;
  wire   [3:0] i_n;
  wire   [3:0] i_k;
  wire   [3:0] i_m;

  XMD ipad_CLK ( .I(clk), .PU(n1), .PD(n1), .SMT(n1), .O(i_clk) );
  XMD ipad_rst ( .I(rst), .PU(n1), .PD(n1), .SMT(n1), .O(i_rst) );
  XMD ipad_start ( .I(start), .PU(n1), .PD(n1), .SMT(n1), .O(i_start) );
  XMD ipad_m3 ( .I(m[3]), .PU(n1), .PD(n1), .SMT(n1), .O(i_m[3]) );
  XMD ipad_m2 ( .I(m[2]), .PU(n1), .PD(n1), .SMT(n1), .O(i_m[2]) );
  XMD ipad_m1 ( .I(m[1]), .PU(n1), .PD(n1), .SMT(n1), .O(i_m[1]) );
  XMD ipad_m0 ( .I(m[0]), .PU(n1), .PD(n1), .SMT(n1), .O(i_m[0]) );
  XMD ipad_k3 ( .I(k[3]), .PU(n1), .PD(n1), .SMT(n1), .O(i_k[3]) );
  XMD ipad_k2 ( .I(k[2]), .PU(n1), .PD(n1), .SMT(n1), .O(i_k[2]) );
  XMD ipad_k1 ( .I(k[1]), .PU(n1), .PD(n1), .SMT(n1), .O(i_k[1]) );
  XMD ipad_k0 ( .I(k[0]), .PU(n1), .PD(n1), .SMT(n1), .O(i_k[0]) );
  XMD ipad_n3 ( .I(n[3]), .PU(n1), .PD(n1), .SMT(n1), .O(i_n[3]) );
  XMD ipad_n2 ( .I(n[2]), .PU(n1), .PD(n1), .SMT(n1), .O(i_n[2]) );
  XMD ipad_n1 ( .I(n[1]), .PU(n1), .PD(n1), .SMT(n1), .O(i_n[1]) );
  XMD ipad_n0 ( .I(n[0]), .PU(n1), .PD(n1), .SMT(n1), .O(i_n[0]) );
  YA2GSD opad_done ( .I(i_done), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), 
        .O(done) );
  YA2GSD opad_wr_en_a ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), 
        .O(wr_en_a) );
  YA2GSD opad_wr_en_b ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), 
        .O(wr_en_b) );
  YA2GSD opad_wr_en_c ( .I(i_wr_en_c), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(wr_en_c) );
  YA2GSD opad_addr_a7 ( .I(i_addr_a[7]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_a[7]) );
  YA2GSD opad_addr_a6 ( .I(i_addr_a[6]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_a[6]) );
  YA2GSD opad_addr_a5 ( .I(i_addr_a[5]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_a[5]) );
  YA2GSD opad_addr_a4 ( .I(i_addr_a[4]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_a[4]) );
  YA2GSD opad_addr_a3 ( .I(i_addr_a[3]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_a[3]) );
  YA2GSD opad_addr_a2 ( .I(i_addr_a[2]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_a[2]) );
  YA2GSD opad_addr_a1 ( .I(i_addr_a[1]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_a[1]) );
  YA2GSD opad_addr_a0 ( .I(i_addr_a[0]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_a[0]) );
  YA2GSD opad_addr_b7 ( .I(i_addr_b[7]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_b[7]) );
  YA2GSD opad_addr_b6 ( .I(i_addr_b[6]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_b[6]) );
  YA2GSD opad_addr_b5 ( .I(i_addr_b[5]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_b[5]) );
  YA2GSD opad_addr_b4 ( .I(i_addr_b[4]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_b[4]) );
  YA2GSD opad_addr_b3 ( .I(i_addr_b[3]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_b[3]) );
  YA2GSD opad_addr_b2 ( .I(i_addr_b[2]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_b[2]) );
  YA2GSD opad_addr_b1 ( .I(i_addr_b[1]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_b[1]) );
  YA2GSD opad_addr_b0 ( .I(i_addr_b[0]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_b[0]) );
  YA2GSD opad_addr_c7 ( .I(i_addr_c[7]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_c[7]) );
  YA2GSD opad_addr_c6 ( .I(i_addr_c[6]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_c[6]) );
  YA2GSD opad_addr_c5 ( .I(i_addr_c[5]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_c[5]) );
  YA2GSD opad_addr_c4 ( .I(i_addr_c[4]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_c[4]) );
  YA2GSD opad_addr_c3 ( .I(i_addr_c[3]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_c[3]) );
  YA2GSD opad_addr_c2 ( .I(i_addr_c[2]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_c[2]) );
  YA2GSD opad_addr_c1 ( .I(i_addr_c[1]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_c[1]) );
  YA2GSD opad_addr_c0 ( .I(i_addr_c[0]), .E(n2), .E2(n2), .E4(n2), .E8(n2), 
        .SR(n2), .O(addr_c[0]) );
  YA2GSD opad_in_a31 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[31]) );
  YA2GSD opad_in_a30 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[30]) );
  YA2GSD opad_in_a29 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[29]) );
  YA2GSD opad_in_a28 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[28]) );
  YA2GSD opad_in_a27 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[27]) );
  YA2GSD opad_in_a26 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[26]) );
  YA2GSD opad_in_a25 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[25]) );
  YA2GSD opad_in_a24 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[24]) );
  YA2GSD opad_in_a23 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[23]) );
  YA2GSD opad_in_a22 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[22]) );
  YA2GSD opad_in_a21 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[21]) );
  YA2GSD opad_in_a20 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[20]) );
  YA2GSD opad_in_a19 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[19]) );
  YA2GSD opad_in_a18 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[18]) );
  YA2GSD opad_in_a17 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[17]) );
  YA2GSD opad_in_a16 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[16]) );
  YA2GSD opad_in_a15 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[15]) );
  YA2GSD opad_in_a14 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[14]) );
  YA2GSD opad_in_a13 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[13]) );
  YA2GSD opad_in_a12 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[12]) );
  YA2GSD opad_in_a11 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[11]) );
  YA2GSD opad_in_a10 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[10]) );
  YA2GSD opad_in_a9 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[9]) );
  YA2GSD opad_in_a8 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[8]) );
  YA2GSD opad_in_a7 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[7]) );
  YA2GSD opad_in_a6 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[6]) );
  YA2GSD opad_in_a5 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[5]) );
  YA2GSD opad_in_a4 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[4]) );
  YA2GSD opad_in_a3 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[3]) );
  YA2GSD opad_in_a2 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[2]) );
  YA2GSD opad_in_a1 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[1]) );
  YA2GSD opad_in_a0 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_a[0]) );
  YA2GSD opad_in_b31 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[31]) );
  YA2GSD opad_in_b30 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[30]) );
  YA2GSD opad_in_b29 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[29]) );
  YA2GSD opad_in_b28 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[28]) );
  YA2GSD opad_in_b27 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[27]) );
  YA2GSD opad_in_b26 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[26]) );
  YA2GSD opad_in_b25 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[25]) );
  YA2GSD opad_in_b24 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[24]) );
  YA2GSD opad_in_b23 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[23]) );
  YA2GSD opad_in_b22 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[22]) );
  YA2GSD opad_in_b21 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[21]) );
  YA2GSD opad_in_b20 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[20]) );
  YA2GSD opad_in_b19 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[19]) );
  YA2GSD opad_in_b18 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[18]) );
  YA2GSD opad_in_b17 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[17]) );
  YA2GSD opad_in_b16 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[16]) );
  YA2GSD opad_in_b15 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[15]) );
  YA2GSD opad_in_b14 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[14]) );
  YA2GSD opad_in_b13 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[13]) );
  YA2GSD opad_in_b12 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[12]) );
  YA2GSD opad_in_b11 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[11]) );
  YA2GSD opad_in_b10 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[10]) );
  YA2GSD opad_in_b9 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[9]) );
  YA2GSD opad_in_b8 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[8]) );
  YA2GSD opad_in_b7 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[7]) );
  YA2GSD opad_in_b6 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[6]) );
  YA2GSD opad_in_b5 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[5]) );
  YA2GSD opad_in_b4 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[4]) );
  YA2GSD opad_in_b3 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[3]) );
  YA2GSD opad_in_b2 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[2]) );
  YA2GSD opad_in_b1 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[1]) );
  YA2GSD opad_in_b0 ( .I(n1), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(
        in_b[0]) );
  YA2GSD opad_in_c31 ( .I(i_in_c[31]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[31]) );
  YA2GSD opad_in_c30 ( .I(i_in_c[30]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[30]) );
  YA2GSD opad_in_c29 ( .I(i_in_c[29]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[29]) );
  YA2GSD opad_in_c28 ( .I(i_in_c[28]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[28]) );
  YA2GSD opad_in_c27 ( .I(i_in_c[27]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[27]) );
  YA2GSD opad_in_c26 ( .I(i_in_c[26]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[26]) );
  YA2GSD opad_in_c25 ( .I(i_in_c[25]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[25]) );
  YA2GSD opad_in_c24 ( .I(i_in_c[24]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[24]) );
  YA2GSD opad_in_c23 ( .I(i_in_c[23]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[23]) );
  YA2GSD opad_in_c22 ( .I(i_in_c[22]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[22]) );
  YA2GSD opad_in_c21 ( .I(i_in_c[21]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[21]) );
  YA2GSD opad_in_c20 ( .I(i_in_c[20]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[20]) );
  YA2GSD opad_in_c19 ( .I(i_in_c[19]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[19]) );
  YA2GSD opad_in_c18 ( .I(i_in_c[18]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[18]) );
  YA2GSD opad_in_c17 ( .I(i_in_c[17]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[17]) );
  YA2GSD opad_in_c16 ( .I(i_in_c[16]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[16]) );
  YA2GSD opad_in_c15 ( .I(i_in_c[15]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[15]) );
  YA2GSD opad_in_c14 ( .I(i_in_c[14]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[14]) );
  YA2GSD opad_in_c13 ( .I(i_in_c[13]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[13]) );
  YA2GSD opad_in_c12 ( .I(i_in_c[12]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[12]) );
  YA2GSD opad_in_c11 ( .I(i_in_c[11]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[11]) );
  YA2GSD opad_in_c10 ( .I(i_in_c[10]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(
        n2), .O(in_c[10]) );
  YA2GSD opad_in_c9 ( .I(i_in_c[9]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(in_c[9]) );
  YA2GSD opad_in_c8 ( .I(i_in_c[8]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(in_c[8]) );
  YA2GSD opad_in_c7 ( .I(i_in_c[7]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(in_c[7]) );
  YA2GSD opad_in_c6 ( .I(i_in_c[6]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(in_c[6]) );
  YA2GSD opad_in_c5 ( .I(i_in_c[5]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(in_c[5]) );
  YA2GSD opad_in_c4 ( .I(i_in_c[4]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(in_c[4]) );
  YA2GSD opad_in_c3 ( .I(i_in_c[3]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(in_c[3]) );
  YA2GSD opad_in_c2 ( .I(i_in_c[2]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(in_c[2]) );
  YA2GSD opad_in_c1 ( .I(i_in_c[1]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(in_c[1]) );
  YA2GSD opad_in_c0 ( .I(i_in_c[0]), .E(n2), .E2(n2), .E4(n2), .E8(n2), .SR(n2), .O(in_c[0]) );
  XMD ipad_out_a31 ( .I(out_a[31]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[31]) );
  XMD ipad_out_a30 ( .I(out_a[30]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[30]) );
  XMD ipad_out_a29 ( .I(out_a[29]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[29]) );
  XMD ipad_out_a28 ( .I(out_a[28]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[28]) );
  XMD ipad_out_a27 ( .I(out_a[27]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[27]) );
  XMD ipad_out_a26 ( .I(out_a[26]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[26]) );
  XMD ipad_out_a25 ( .I(out_a[25]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[25]) );
  XMD ipad_out_a24 ( .I(out_a[24]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[24]) );
  XMD ipad_out_a23 ( .I(out_a[23]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[23]) );
  XMD ipad_out_a22 ( .I(out_a[22]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[22]) );
  XMD ipad_out_a21 ( .I(out_a[21]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[21]) );
  XMD ipad_out_a20 ( .I(out_a[20]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[20]) );
  XMD ipad_out_a19 ( .I(out_a[19]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[19]) );
  XMD ipad_out_a18 ( .I(out_a[18]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[18]) );
  XMD ipad_out_a17 ( .I(out_a[17]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[17]) );
  XMD ipad_out_a16 ( .I(out_a[16]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[16]) );
  XMD ipad_out_a15 ( .I(out_a[15]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[15]) );
  XMD ipad_out_a14 ( .I(out_a[14]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[14]) );
  XMD ipad_out_a13 ( .I(out_a[13]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[13]) );
  XMD ipad_out_a12 ( .I(out_a[12]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[12]) );
  XMD ipad_out_a11 ( .I(out_a[11]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[11]) );
  XMD ipad_out_a10 ( .I(out_a[10]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[10]) );
  XMD ipad_out_a9 ( .I(out_a[9]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[9])
         );
  XMD ipad_out_a8 ( .I(out_a[8]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[8])
         );
  XMD ipad_out_a7 ( .I(out_a[7]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[7])
         );
  XMD ipad_out_a6 ( .I(out_a[6]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[6])
         );
  XMD ipad_out_a5 ( .I(out_a[5]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[5])
         );
  XMD ipad_out_a4 ( .I(out_a[4]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[4])
         );
  XMD ipad_out_a3 ( .I(out_a[3]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[3])
         );
  XMD ipad_out_a2 ( .I(out_a[2]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[2])
         );
  XMD ipad_out_a1 ( .I(out_a[1]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[1])
         );
  XMD ipad_out_a0 ( .I(out_a[0]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_a[0])
         );
  XMD ipad_out_b31 ( .I(out_b[31]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[31]) );
  XMD ipad_out_b30 ( .I(out_b[30]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[30]) );
  XMD ipad_out_b29 ( .I(out_b[29]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[29]) );
  XMD ipad_out_b28 ( .I(out_b[28]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[28]) );
  XMD ipad_out_b27 ( .I(out_b[27]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[27]) );
  XMD ipad_out_b26 ( .I(out_b[26]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[26]) );
  XMD ipad_out_b25 ( .I(out_b[25]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[25]) );
  XMD ipad_out_b24 ( .I(out_b[24]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[24]) );
  XMD ipad_out_b23 ( .I(out_b[23]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[23]) );
  XMD ipad_out_b22 ( .I(out_b[22]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[22]) );
  XMD ipad_out_b21 ( .I(out_b[21]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[21]) );
  XMD ipad_out_b20 ( .I(out_b[20]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[20]) );
  XMD ipad_out_b19 ( .I(out_b[19]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[19]) );
  XMD ipad_out_b18 ( .I(out_b[18]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[18]) );
  XMD ipad_out_b17 ( .I(out_b[17]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[17]) );
  XMD ipad_out_b16 ( .I(out_b[16]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[16]) );
  XMD ipad_out_b15 ( .I(out_b[15]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[15]) );
  XMD ipad_out_b14 ( .I(out_b[14]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[14]) );
  XMD ipad_out_b13 ( .I(out_b[13]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[13]) );
  XMD ipad_out_b12 ( .I(out_b[12]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[12]) );
  XMD ipad_out_b11 ( .I(out_b[11]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[11]) );
  XMD ipad_out_b10 ( .I(out_b[10]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[10]) );
  XMD ipad_out_b9 ( .I(out_b[9]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[9])
         );
  XMD ipad_out_b8 ( .I(out_b[8]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[8])
         );
  XMD ipad_out_b7 ( .I(out_b[7]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[7])
         );
  XMD ipad_out_b6 ( .I(out_b[6]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[6])
         );
  XMD ipad_out_b5 ( .I(out_b[5]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[5])
         );
  XMD ipad_out_b4 ( .I(out_b[4]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[4])
         );
  XMD ipad_out_b3 ( .I(out_b[3]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[3])
         );
  XMD ipad_out_b2 ( .I(out_b[2]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[2])
         );
  XMD ipad_out_b1 ( .I(out_b[1]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[1])
         );
  XMD ipad_out_b0 ( .I(out_b[0]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_b[0])
         );
  XMD ipad_out_c31 ( .I(out_c[31]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_31_) );
  XMD ipad_out_c30 ( .I(out_c[30]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_30_) );
  XMD ipad_out_c29 ( .I(out_c[29]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_29_) );
  XMD ipad_out_c28 ( .I(out_c[28]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_28_) );
  XMD ipad_out_c27 ( .I(out_c[27]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_27_) );
  XMD ipad_out_c26 ( .I(out_c[26]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_26_) );
  XMD ipad_out_c25 ( .I(out_c[25]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_25_) );
  XMD ipad_out_c24 ( .I(out_c[24]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_24_) );
  XMD ipad_out_c23 ( .I(out_c[23]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_23_) );
  XMD ipad_out_c22 ( .I(out_c[22]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_22_) );
  XMD ipad_out_c21 ( .I(out_c[21]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_21_) );
  XMD ipad_out_c20 ( .I(out_c[20]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_20_) );
  XMD ipad_out_c19 ( .I(out_c[19]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_19_) );
  XMD ipad_out_c18 ( .I(out_c[18]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_18_) );
  XMD ipad_out_c17 ( .I(out_c[17]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_17_) );
  XMD ipad_out_c16 ( .I(out_c[16]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_16_) );
  XMD ipad_out_c15 ( .I(out_c[15]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_15_) );
  XMD ipad_out_c14 ( .I(out_c[14]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_14_) );
  XMD ipad_out_c13 ( .I(out_c[13]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_13_) );
  XMD ipad_out_c12 ( .I(out_c[12]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_12_) );
  XMD ipad_out_c11 ( .I(out_c[11]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_11_) );
  XMD ipad_out_c10 ( .I(out_c[10]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_10_) );
  XMD ipad_out_c9 ( .I(out_c[9]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_9_)
         );
  XMD ipad_out_c8 ( .I(out_c[8]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_8_)
         );
  XMD ipad_out_c7 ( .I(out_c[7]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_7_)
         );
  XMD ipad_out_c6 ( .I(out_c[6]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_6_)
         );
  XMD ipad_out_c5 ( .I(out_c[5]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_5_)
         );
  XMD ipad_out_c4 ( .I(out_c[4]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_4_)
         );
  XMD ipad_out_c3 ( .I(out_c[3]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_3_)
         );
  XMD ipad_out_c2 ( .I(out_c[2]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_2_)
         );
  XMD ipad_out_c1 ( .I(out_c[1]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_1_)
         );
  XMD ipad_out_c0 ( .I(out_c[0]), .PU(n1), .PD(n1), .SMT(n1), .O(i_out_c_0_)
         );
  tpu top ( .clk(i_clk), .rst(i_rst), .m(i_m), .k(i_k), .n(i_n), .done(i_done), 
        .wr_en_c(i_wr_en_c), .addr_a(i_addr_a), .addr_b(i_addr_b), .addr_c(
        i_addr_c), .in_a({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, 
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32}), .in_b({
        SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, 
        SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, 
        SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, 
        SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, 
        SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, 
        SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, 
        SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, 
        SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, 
        SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, 
        SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52, 
        SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54, 
        SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56, 
        SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58, 
        SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60, 
        SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62, 
        SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64}), .in_c(i_in_c), 
        .out_a(i_out_a), .out_b(i_out_b) );
  TIE0 U3 ( .O(n1) );
  TIE1 U4 ( .O(n2) );
endmodule

