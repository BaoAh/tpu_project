/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Fri May 19 15:32:27 2023
/////////////////////////////////////////////////////////////


module sync_fifo_7 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n9, n11, n13,
         n14, n1600, n1700, n19, n29, n31, n32, n33, n34, n35, n36, n38, n39,
         n40, n42, n43, n44, n45, n46, n47, n480, n490, n500, n510, n520, n530,
         n540, n550, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n1, n2,
         n3, n4, n5, n6, n7, n8, n10, n12, n1500, n18, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n30, n37, n41, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n1501, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n1601, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n1701, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  AO22 U6 ( .A1(data_out[1]), .A2(n1700), .B1(N54), .B2(n169), .O(n530) );
  AO22 U7 ( .A1(data_out[2]), .A2(n1700), .B1(N53), .B2(n169), .O(n540) );
  AO22 U8 ( .A1(data_out[3]), .A2(n1700), .B1(N52), .B2(n169), .O(n550) );
  AO22 U9 ( .A1(data_out[4]), .A2(n1700), .B1(N51), .B2(n169), .O(n56) );
  AO22 U10 ( .A1(data_out[5]), .A2(n1700), .B1(N50), .B2(n169), .O(n57) );
  AO22 U11 ( .A1(data_out[6]), .A2(n1700), .B1(N49), .B2(n169), .O(n58) );
  AO22 U12 ( .A1(data_out[7]), .A2(n1700), .B1(N48), .B2(n169), .O(n59) );
  AO22 U13 ( .A1(data_out[0]), .A2(n1700), .B1(N55), .B2(n169), .O(n60) );
  ND2 U80 ( .I1(n14), .I2(n171), .O(n1600) );
  ND2 U98 ( .I1(n14), .I2(wr_ptr[0]), .O(n13) );
  AN2 U99 ( .I1(w_en), .I2(n36), .O(n14) );
  AO12 U105 ( .B1(N17), .B2(N16), .A1(n40), .O(n38) );
  ND2 U106 ( .I1(n169), .I2(N15), .O(n40) );
  ND2 U114 ( .I1(n47), .I2(n480), .O(n43) );
  OR3 U116 ( .I1(n45), .I2(N16), .I3(n172), .O(n47) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n127), .CK(clk), .RB(rst), .Q(N15) );
  QDFFRBN data_out_reg_7_ ( .D(n59), .CK(clk), .RB(n166), .Q(data_out[7]) );
  QDFFRBN data_out_reg_6_ ( .D(n58), .CK(clk), .RB(n166), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n57), .CK(clk), .RB(n166), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n56), .CK(clk), .RB(n166), .Q(data_out[4]) );
  QDFFRBN data_out_reg_3_ ( .D(n550), .CK(clk), .RB(n166), .Q(data_out[3]) );
  QDFFRBN data_out_reg_2_ ( .D(n540), .CK(clk), .RB(n166), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n530), .CK(clk), .RB(n166), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n60), .CK(clk), .RB(n166), .Q(data_out[0]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n125), .CK(clk), .RB(n166), .Q(N17) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n126), .CK(clk), .RB(n166), .Q(N16) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n520), .CK(clk), .RB(n166), .Q(wr_ptr[0]) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n510), .CK(clk), .RB(n165), .Q(wr_ptr[1]) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n500), .CK(clk), .RB(n165), .Q(wr_ptr[2]) );
  QDFFRBN buffer_reg_0__7_ ( .D(n67), .CK(clk), .RB(n159), .Q(buffer[63]) );
  QDFFRBN buffer_reg_0__6_ ( .D(n61), .CK(clk), .RB(n164), .Q(buffer[62]) );
  QDFFRBN buffer_reg_0__5_ ( .D(n62), .CK(clk), .RB(n164), .Q(buffer[61]) );
  QDFFRBN buffer_reg_0__4_ ( .D(n63), .CK(clk), .RB(n164), .Q(buffer[60]) );
  QDFFRBN buffer_reg_0__3_ ( .D(n64), .CK(clk), .RB(n164), .Q(buffer[59]) );
  QDFFRBN buffer_reg_0__2_ ( .D(n65), .CK(clk), .RB(n158), .Q(buffer[58]) );
  QDFFRBN buffer_reg_0__1_ ( .D(n66), .CK(clk), .RB(n159), .Q(buffer[57]) );
  QDFFRBN buffer_reg_0__0_ ( .D(n68), .CK(clk), .RB(n158), .Q(buffer[56]) );
  QDFFRBN buffer_reg_6__7_ ( .D(n115), .CK(clk), .RB(n161), .Q(buffer[15]) );
  QDFFRBN buffer_reg_6__6_ ( .D(n109), .CK(clk), .RB(n162), .Q(buffer[14]) );
  QDFFRBN buffer_reg_6__5_ ( .D(n110), .CK(clk), .RB(n162), .Q(buffer[13]) );
  QDFFRBN buffer_reg_6__4_ ( .D(n111), .CK(clk), .RB(n162), .Q(buffer[12]) );
  QDFFRBN buffer_reg_6__3_ ( .D(n112), .CK(clk), .RB(n162), .Q(buffer[11]) );
  QDFFRBN buffer_reg_6__2_ ( .D(n113), .CK(clk), .RB(n162), .Q(buffer[10]) );
  QDFFRBN buffer_reg_6__1_ ( .D(n114), .CK(clk), .RB(n161), .Q(buffer[9]) );
  QDFFRBN buffer_reg_6__0_ ( .D(n116), .CK(clk), .RB(n161), .Q(buffer[8]) );
  QDFFRBN buffer_reg_4__7_ ( .D(n99), .CK(clk), .RB(n163), .Q(buffer[31]) );
  QDFFRBN buffer_reg_4__6_ ( .D(n93), .CK(clk), .RB(n163), .Q(buffer[30]) );
  QDFFRBN buffer_reg_4__5_ ( .D(n94), .CK(clk), .RB(n163), .Q(buffer[29]) );
  QDFFRBN buffer_reg_4__4_ ( .D(n95), .CK(clk), .RB(n163), .Q(buffer[28]) );
  QDFFRBN buffer_reg_4__3_ ( .D(n96), .CK(clk), .RB(n163), .Q(buffer[27]) );
  QDFFRBN buffer_reg_4__2_ ( .D(n97), .CK(clk), .RB(n163), .Q(buffer[26]) );
  QDFFRBN buffer_reg_4__1_ ( .D(n98), .CK(clk), .RB(n163), .Q(buffer[25]) );
  QDFFRBN buffer_reg_4__0_ ( .D(n100), .CK(clk), .RB(n163), .Q(buffer[24]) );
  QDFFRBN buffer_reg_2__7_ ( .D(n83), .CK(clk), .RB(n165), .Q(buffer[47]) );
  QDFFRBN buffer_reg_2__6_ ( .D(n77), .CK(clk), .RB(n165), .Q(buffer[46]) );
  QDFFRBN buffer_reg_2__5_ ( .D(n78), .CK(clk), .RB(n165), .Q(buffer[45]) );
  QDFFRBN buffer_reg_2__4_ ( .D(n79), .CK(clk), .RB(n165), .Q(buffer[44]) );
  QDFFRBN buffer_reg_2__3_ ( .D(n80), .CK(clk), .RB(n165), .Q(buffer[43]) );
  QDFFRBN buffer_reg_2__2_ ( .D(n81), .CK(clk), .RB(n165), .Q(buffer[42]) );
  QDFFRBN buffer_reg_2__1_ ( .D(n82), .CK(clk), .RB(n165), .Q(buffer[41]) );
  QDFFRBN buffer_reg_2__0_ ( .D(n84), .CK(clk), .RB(n165), .Q(buffer[40]) );
  QDFFRBN buffer_reg_7__7_ ( .D(n123), .CK(clk), .RB(n161), .Q(buffer[7]) );
  QDFFRBN buffer_reg_7__6_ ( .D(n117), .CK(clk), .RB(n161), .Q(buffer[6]) );
  QDFFRBN buffer_reg_7__5_ ( .D(n118), .CK(clk), .RB(n161), .Q(buffer[5]) );
  QDFFRBN buffer_reg_7__4_ ( .D(n119), .CK(clk), .RB(n161), .Q(buffer[4]) );
  QDFFRBN buffer_reg_7__3_ ( .D(n120), .CK(clk), .RB(n161), .Q(buffer[3]) );
  QDFFRBN buffer_reg_7__2_ ( .D(n121), .CK(clk), .RB(n161), .Q(buffer[2]) );
  QDFFRBN buffer_reg_7__1_ ( .D(n122), .CK(clk), .RB(n161), .Q(buffer[1]) );
  QDFFRBN buffer_reg_7__0_ ( .D(n124), .CK(clk), .RB(n161), .Q(buffer[0]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n107), .CK(clk), .RB(n162), .Q(buffer[23]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n101), .CK(clk), .RB(n163), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n102), .CK(clk), .RB(n163), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n103), .CK(clk), .RB(n162), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n104), .CK(clk), .RB(n162), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n105), .CK(clk), .RB(n162), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n106), .CK(clk), .RB(n162), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n108), .CK(clk), .RB(n162), .Q(buffer[16]) );
  QDFFRBN buffer_reg_1__7_ ( .D(n75), .CK(clk), .RB(n159), .Q(buffer[55]) );
  QDFFRBN buffer_reg_1__6_ ( .D(n69), .CK(clk), .RB(n159), .Q(buffer[54]) );
  QDFFRBN buffer_reg_1__5_ ( .D(n70), .CK(clk), .RB(n159), .Q(buffer[53]) );
  QDFFRBN buffer_reg_1__4_ ( .D(n71), .CK(clk), .RB(rst), .Q(buffer[52]) );
  QDFFRBN buffer_reg_1__3_ ( .D(n72), .CK(clk), .RB(rst), .Q(buffer[51]) );
  QDFFRBN buffer_reg_1__2_ ( .D(n73), .CK(clk), .RB(rst), .Q(buffer[50]) );
  QDFFRBN buffer_reg_1__1_ ( .D(n74), .CK(clk), .RB(rst), .Q(buffer[49]) );
  QDFFRBN buffer_reg_1__0_ ( .D(n76), .CK(clk), .RB(n163), .Q(buffer[48]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n91), .CK(clk), .RB(n164), .Q(buffer[39]) );
  QDFFRBN buffer_reg_3__6_ ( .D(n85), .CK(clk), .RB(n165), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n86), .CK(clk), .RB(n164), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n87), .CK(clk), .RB(n164), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n88), .CK(clk), .RB(n164), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n89), .CK(clk), .RB(n164), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n90), .CK(clk), .RB(n164), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n92), .CK(clk), .RB(n164), .Q(buffer[32]) );
  INV1S U3 ( .I(N17), .O(n156) );
  INV1S U4 ( .I(n13), .O(n167) );
  INV1S U5 ( .I(n1600), .O(n168) );
  NR2P U14 ( .I1(N16), .I2(N17), .O(n151) );
  XNR2HS U15 ( .I1(N17), .I2(wr_ptr[2]), .O(n45) );
  XOR2HS U16 ( .I1(N16), .I2(n172), .O(n46) );
  INV1S U17 ( .I(data_in[0]), .O(n181) );
  INV1S U18 ( .I(data_in[1]), .O(n180) );
  INV1S U19 ( .I(data_in[2]), .O(n179) );
  INV1S U20 ( .I(data_in[3]), .O(n178) );
  INV1S U21 ( .I(data_in[4]), .O(n177) );
  INV1S U22 ( .I(data_in[5]), .O(n176) );
  INV1S U23 ( .I(data_in[6]), .O(n175) );
  INV1S U24 ( .I(data_in[7]), .O(n174) );
  NR2 U25 ( .I1(n13), .I2(n172), .O(n9) );
  INV1S U26 ( .I(wr_ptr[2]), .O(n173) );
  INV1S U27 ( .I(wr_ptr[1]), .O(n172) );
  INV1S U28 ( .I(wr_ptr[0]), .O(n171) );
  INV1S U29 ( .I(n1700), .O(n169) );
  ND2 U30 ( .I1(r_en), .I2(n42), .O(n1700) );
  ND3 U31 ( .I1(n45), .I2(n46), .I3(n490), .O(n42) );
  XOR2HS U32 ( .I1(n1701), .I2(wr_ptr[0]), .O(n490) );
  AOI13HS U33 ( .B1(n43), .B2(n1701), .B3(wr_ptr[0]), .A1(n44), .O(n36) );
  AN4B1S U34 ( .I1(n45), .I2(n171), .I3(n46), .B1(n1701), .O(n44) );
  ND3 U35 ( .I1(N16), .I2(n172), .I3(n45), .O(n480) );
  MOAI1S U36 ( .A1(n181), .A2(n11), .B1(buffer[32]), .B2(n11), .O(n92) );
  MOAI1S U37 ( .A1(n180), .A2(n11), .B1(buffer[33]), .B2(n11), .O(n90) );
  MOAI1S U38 ( .A1(n179), .A2(n11), .B1(buffer[34]), .B2(n11), .O(n89) );
  MOAI1S U39 ( .A1(n178), .A2(n11), .B1(buffer[35]), .B2(n11), .O(n88) );
  MOAI1S U40 ( .A1(n177), .A2(n11), .B1(buffer[36]), .B2(n11), .O(n87) );
  MOAI1S U41 ( .A1(n176), .A2(n11), .B1(buffer[37]), .B2(n11), .O(n86) );
  MOAI1S U42 ( .A1(n175), .A2(n11), .B1(buffer[38]), .B2(n11), .O(n85) );
  MOAI1S U43 ( .A1(n174), .A2(n11), .B1(buffer[39]), .B2(n11), .O(n91) );
  MOAI1S U44 ( .A1(n181), .A2(n29), .B1(buffer[48]), .B2(n29), .O(n76) );
  MOAI1S U45 ( .A1(n180), .A2(n29), .B1(buffer[49]), .B2(n29), .O(n74) );
  MOAI1S U46 ( .A1(n179), .A2(n29), .B1(buffer[50]), .B2(n29), .O(n73) );
  MOAI1S U47 ( .A1(n178), .A2(n29), .B1(buffer[51]), .B2(n29), .O(n72) );
  MOAI1S U48 ( .A1(n177), .A2(n29), .B1(buffer[52]), .B2(n29), .O(n71) );
  MOAI1S U49 ( .A1(n176), .A2(n29), .B1(buffer[53]), .B2(n29), .O(n70) );
  MOAI1S U50 ( .A1(n175), .A2(n29), .B1(buffer[54]), .B2(n29), .O(n69) );
  MOAI1S U51 ( .A1(n174), .A2(n29), .B1(buffer[55]), .B2(n29), .O(n75) );
  MOAI1S U52 ( .A1(n181), .A2(n33), .B1(buffer[16]), .B2(n33), .O(n108) );
  MOAI1S U53 ( .A1(n180), .A2(n33), .B1(buffer[17]), .B2(n33), .O(n106) );
  MOAI1S U54 ( .A1(n179), .A2(n33), .B1(buffer[18]), .B2(n33), .O(n105) );
  MOAI1S U55 ( .A1(n178), .A2(n33), .B1(buffer[19]), .B2(n33), .O(n104) );
  MOAI1S U56 ( .A1(n177), .A2(n33), .B1(buffer[20]), .B2(n33), .O(n103) );
  MOAI1S U57 ( .A1(n176), .A2(n33), .B1(buffer[21]), .B2(n33), .O(n102) );
  MOAI1S U58 ( .A1(n175), .A2(n33), .B1(buffer[22]), .B2(n33), .O(n101) );
  MOAI1S U59 ( .A1(n174), .A2(n33), .B1(buffer[23]), .B2(n33), .O(n107) );
  MOAI1S U60 ( .A1(n181), .A2(n35), .B1(buffer[0]), .B2(n35), .O(n124) );
  MOAI1S U61 ( .A1(n180), .A2(n35), .B1(buffer[1]), .B2(n35), .O(n122) );
  MOAI1S U62 ( .A1(n179), .A2(n35), .B1(buffer[2]), .B2(n35), .O(n121) );
  MOAI1S U63 ( .A1(n178), .A2(n35), .B1(buffer[3]), .B2(n35), .O(n120) );
  MOAI1S U64 ( .A1(n177), .A2(n35), .B1(buffer[4]), .B2(n35), .O(n119) );
  MOAI1S U65 ( .A1(n176), .A2(n35), .B1(buffer[5]), .B2(n35), .O(n118) );
  MOAI1S U66 ( .A1(n175), .A2(n35), .B1(buffer[6]), .B2(n35), .O(n117) );
  MOAI1S U67 ( .A1(n174), .A2(n35), .B1(buffer[7]), .B2(n35), .O(n123) );
  MOAI1S U68 ( .A1(n181), .A2(n31), .B1(buffer[40]), .B2(n31), .O(n84) );
  MOAI1S U69 ( .A1(n180), .A2(n31), .B1(buffer[41]), .B2(n31), .O(n82) );
  MOAI1S U70 ( .A1(n179), .A2(n31), .B1(buffer[42]), .B2(n31), .O(n81) );
  MOAI1S U71 ( .A1(n178), .A2(n31), .B1(buffer[43]), .B2(n31), .O(n80) );
  MOAI1S U72 ( .A1(n177), .A2(n31), .B1(buffer[44]), .B2(n31), .O(n79) );
  MOAI1S U73 ( .A1(n176), .A2(n31), .B1(buffer[45]), .B2(n31), .O(n78) );
  MOAI1S U74 ( .A1(n175), .A2(n31), .B1(buffer[46]), .B2(n31), .O(n77) );
  MOAI1S U75 ( .A1(n174), .A2(n31), .B1(buffer[47]), .B2(n31), .O(n83) );
  MOAI1S U76 ( .A1(n181), .A2(n32), .B1(buffer[24]), .B2(n32), .O(n100) );
  MOAI1S U77 ( .A1(n180), .A2(n32), .B1(buffer[25]), .B2(n32), .O(n98) );
  MOAI1S U78 ( .A1(n179), .A2(n32), .B1(buffer[26]), .B2(n32), .O(n97) );
  MOAI1S U79 ( .A1(n178), .A2(n32), .B1(buffer[27]), .B2(n32), .O(n96) );
  MOAI1S U81 ( .A1(n177), .A2(n32), .B1(buffer[28]), .B2(n32), .O(n95) );
  MOAI1S U82 ( .A1(n176), .A2(n32), .B1(buffer[29]), .B2(n32), .O(n94) );
  MOAI1S U83 ( .A1(n175), .A2(n32), .B1(buffer[30]), .B2(n32), .O(n93) );
  BUF1CK U84 ( .I(n159), .O(n163) );
  MOAI1S U85 ( .A1(n174), .A2(n32), .B1(buffer[31]), .B2(n32), .O(n99) );
  MOAI1S U86 ( .A1(n181), .A2(n34), .B1(buffer[8]), .B2(n34), .O(n116) );
  MOAI1S U87 ( .A1(n180), .A2(n34), .B1(buffer[9]), .B2(n34), .O(n114) );
  MOAI1S U88 ( .A1(n179), .A2(n34), .B1(buffer[10]), .B2(n34), .O(n113) );
  MOAI1S U89 ( .A1(n178), .A2(n34), .B1(buffer[11]), .B2(n34), .O(n112) );
  MOAI1S U90 ( .A1(n177), .A2(n34), .B1(buffer[12]), .B2(n34), .O(n111) );
  MOAI1S U91 ( .A1(n176), .A2(n34), .B1(buffer[13]), .B2(n34), .O(n110) );
  BUF1CK U92 ( .I(n158), .O(n162) );
  MOAI1S U93 ( .A1(n175), .A2(n34), .B1(buffer[14]), .B2(n34), .O(n109) );
  BUF1CK U94 ( .I(n158), .O(n161) );
  MOAI1S U95 ( .A1(n174), .A2(n34), .B1(buffer[15]), .B2(n34), .O(n115) );
  MOAI1S U96 ( .A1(n19), .A2(n181), .B1(buffer[56]), .B2(n19), .O(n68) );
  MOAI1S U97 ( .A1(n19), .A2(n180), .B1(buffer[57]), .B2(n19), .O(n66) );
  MOAI1S U100 ( .A1(n19), .A2(n179), .B1(buffer[58]), .B2(n19), .O(n65) );
  MOAI1S U101 ( .A1(n19), .A2(n178), .B1(buffer[59]), .B2(n19), .O(n64) );
  MOAI1S U102 ( .A1(n19), .A2(n177), .B1(buffer[60]), .B2(n19), .O(n63) );
  MOAI1S U103 ( .A1(n19), .A2(n176), .B1(buffer[61]), .B2(n19), .O(n62) );
  BUF1CK U104 ( .I(n1601), .O(n164) );
  MOAI1S U107 ( .A1(n19), .A2(n175), .B1(buffer[62]), .B2(n19), .O(n61) );
  MOAI1S U108 ( .A1(n19), .A2(n174), .B1(buffer[63]), .B2(n19), .O(n67) );
  OAI12HS U109 ( .B1(n9), .B2(n173), .A1(n11), .O(n500) );
  BUF1CK U110 ( .I(n1601), .O(n165) );
  XOR2HS U111 ( .I1(n172), .I2(n13), .O(n510) );
  OAI12HS U112 ( .B1(n14), .B2(n171), .A1(n1600), .O(n520) );
  MOAI1S U113 ( .A1(N16), .A2(n38), .B1(n40), .B2(N16), .O(n126) );
  MOAI1S U115 ( .A1(n157), .A2(n38), .B1(n39), .B2(N17), .O(n125) );
  OR2 U117 ( .I1(n157), .I2(n40), .O(n39) );
  BUF1CK U118 ( .I(n1601), .O(n166) );
  XOR2HS U119 ( .I1(n1701), .I2(n1700), .O(n127) );
  INV1S U120 ( .I(n42), .O(empty) );
  INV1S U121 ( .I(n36), .O(full) );
  BUF1S U122 ( .I(rst), .O(n159) );
  BUF1S U123 ( .I(rst), .O(n158) );
  NR2P U124 ( .I1(n156), .I2(n157), .O(n148) );
  INV1S U125 ( .I(N15), .O(n1701) );
  ND2 U126 ( .I1(n9), .I2(n173), .O(n11) );
  ND3 U127 ( .I1(n172), .I2(n173), .I3(n167), .O(n29) );
  ND3 U128 ( .I1(wr_ptr[2]), .I2(n172), .I3(n167), .O(n33) );
  ND2 U129 ( .I1(n9), .I2(wr_ptr[2]), .O(n35) );
  ND3 U130 ( .I1(wr_ptr[1]), .I2(n173), .I3(n168), .O(n31) );
  ND3 U131 ( .I1(n172), .I2(n173), .I3(n168), .O(n19) );
  ND3 U132 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n168), .O(n34) );
  ND3 U133 ( .I1(wr_ptr[2]), .I2(n172), .I3(n168), .O(n32) );
  NR2P U134 ( .I1(n157), .I2(N17), .O(n1501) );
  NR2P U135 ( .I1(n156), .I2(N16), .O(n149) );
  INV1S U136 ( .I(N16), .O(n157) );
  BUF1CK U137 ( .I(rst), .O(n1601) );
  AOI22S U138 ( .A1(buffer[24]), .A2(n149), .B1(buffer[8]), .B2(n148), .O(n2)
         );
  AOI22S U139 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n1501), .O(n1) );
  AN2 U140 ( .I1(n2), .I2(n1), .O(n6) );
  AOI22S U141 ( .A1(buffer[16]), .A2(n149), .B1(buffer[0]), .B2(n148), .O(n4)
         );
  AOI22S U142 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n1501), .O(n3) );
  ND2 U143 ( .I1(n4), .I2(n3), .O(n5) );
  MOAI1S U144 ( .A1(N15), .A2(n6), .B1(n5), .B2(N15), .O(N55) );
  AOI22S U145 ( .A1(buffer[25]), .A2(n149), .B1(buffer[9]), .B2(n148), .O(n8)
         );
  AOI22S U146 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n1501), .O(n7) );
  AN2 U147 ( .I1(n8), .I2(n7), .O(n18) );
  AOI22S U148 ( .A1(buffer[17]), .A2(n149), .B1(buffer[1]), .B2(n148), .O(n12)
         );
  AOI22S U149 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n1501), .O(
        n10) );
  ND2 U150 ( .I1(n12), .I2(n10), .O(n1500) );
  MOAI1S U151 ( .A1(N15), .A2(n18), .B1(n1500), .B2(N15), .O(N54) );
  AOI22S U152 ( .A1(buffer[26]), .A2(n149), .B1(buffer[10]), .B2(n148), .O(n21) );
  AOI22S U153 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n1501), .O(
        n20) );
  AN2 U154 ( .I1(n21), .I2(n20), .O(n25) );
  AOI22S U155 ( .A1(buffer[18]), .A2(n149), .B1(buffer[2]), .B2(n148), .O(n23)
         );
  AOI22S U156 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n1501), .O(
        n22) );
  ND2 U157 ( .I1(n23), .I2(n22), .O(n24) );
  MOAI1S U158 ( .A1(N15), .A2(n25), .B1(n24), .B2(N15), .O(N53) );
  AOI22S U159 ( .A1(buffer[27]), .A2(n149), .B1(buffer[11]), .B2(n148), .O(n27) );
  AOI22S U160 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n1501), .O(
        n26) );
  AN2 U161 ( .I1(n27), .I2(n26), .O(n41) );
  AOI22S U162 ( .A1(buffer[19]), .A2(n149), .B1(buffer[3]), .B2(n148), .O(n30)
         );
  AOI22S U163 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n1501), .O(
        n28) );
  ND2 U164 ( .I1(n30), .I2(n28), .O(n37) );
  MOAI1S U165 ( .A1(N15), .A2(n41), .B1(n37), .B2(N15), .O(N52) );
  AOI22S U166 ( .A1(buffer[28]), .A2(n149), .B1(buffer[12]), .B2(n148), .O(
        n129) );
  AOI22S U167 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n1501), .O(
        n128) );
  AN2 U168 ( .I1(n129), .I2(n128), .O(n133) );
  AOI22S U169 ( .A1(buffer[20]), .A2(n149), .B1(buffer[4]), .B2(n148), .O(n131) );
  AOI22S U170 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n1501), .O(
        n130) );
  ND2 U171 ( .I1(n131), .I2(n130), .O(n132) );
  MOAI1S U172 ( .A1(N15), .A2(n133), .B1(n132), .B2(N15), .O(N51) );
  AOI22S U173 ( .A1(buffer[29]), .A2(n149), .B1(buffer[13]), .B2(n148), .O(
        n135) );
  AOI22S U174 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n1501), .O(
        n134) );
  AN2 U175 ( .I1(n135), .I2(n134), .O(n139) );
  AOI22S U176 ( .A1(buffer[21]), .A2(n149), .B1(buffer[5]), .B2(n148), .O(n137) );
  AOI22S U177 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n1501), .O(
        n136) );
  ND2 U178 ( .I1(n137), .I2(n136), .O(n138) );
  MOAI1S U179 ( .A1(N15), .A2(n139), .B1(n138), .B2(N15), .O(N50) );
  AOI22S U180 ( .A1(buffer[30]), .A2(n149), .B1(buffer[14]), .B2(n148), .O(
        n141) );
  AOI22S U181 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n1501), .O(
        n140) );
  AN2 U182 ( .I1(n141), .I2(n140), .O(n145) );
  AOI22S U183 ( .A1(buffer[22]), .A2(n149), .B1(buffer[6]), .B2(n148), .O(n143) );
  AOI22S U184 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n1501), .O(
        n142) );
  ND2 U185 ( .I1(n143), .I2(n142), .O(n144) );
  MOAI1S U186 ( .A1(N15), .A2(n145), .B1(n144), .B2(N15), .O(N49) );
  AOI22S U187 ( .A1(buffer[23]), .A2(n149), .B1(buffer[7]), .B2(n148), .O(n147) );
  AOI22S U188 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n1501), .O(
        n146) );
  AN2 U189 ( .I1(n147), .I2(n146), .O(n155) );
  AOI22S U190 ( .A1(buffer[31]), .A2(n149), .B1(buffer[15]), .B2(n148), .O(
        n153) );
  AOI22S U191 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n1501), .O(
        n152) );
  ND2 U192 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U193 ( .A1(n155), .A2(n1701), .B1(n154), .B2(n1701), .O(N48) );
endmodule


module sync_fifo_6 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n12, n1500, n18, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n30, n37, n41, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n1501, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  AO22 U6 ( .A1(data_out[1]), .A2(n280), .B1(N54), .B2(n170), .O(n257) );
  AO22 U7 ( .A1(data_out[2]), .A2(n280), .B1(N53), .B2(n170), .O(n256) );
  AO22 U8 ( .A1(data_out[3]), .A2(n280), .B1(N52), .B2(n170), .O(n255) );
  AO22 U9 ( .A1(data_out[4]), .A2(n280), .B1(N51), .B2(n170), .O(n254) );
  AO22 U10 ( .A1(data_out[5]), .A2(n280), .B1(N50), .B2(n170), .O(n253) );
  AO22 U11 ( .A1(data_out[6]), .A2(n280), .B1(N49), .B2(n170), .O(n252) );
  AO22 U12 ( .A1(data_out[7]), .A2(n280), .B1(N48), .B2(n170), .O(n251) );
  AO22 U13 ( .A1(data_out[0]), .A2(n280), .B1(N55), .B2(n170), .O(n250) );
  ND2 U80 ( .I1(n282), .I2(n172), .O(n281) );
  ND2 U98 ( .I1(n282), .I2(wr_ptr[0]), .O(n283) );
  AN2 U99 ( .I1(w_en), .I2(n272), .O(n282) );
  AO12 U105 ( .B1(N17), .B2(N16), .A1(n269), .O(n271) );
  ND2 U106 ( .I1(n170), .I2(N15), .O(n269) );
  ND2 U114 ( .I1(n263), .I2(n262), .O(n267) );
  OR3 U116 ( .I1(n265), .I2(N16), .I3(n173), .O(n263) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n183), .CK(clk), .RB(n161), .Q(N15) );
  QDFFRBN data_out_reg_7_ ( .D(n251), .CK(clk), .RB(n158), .Q(data_out[7]) );
  QDFFRBN data_out_reg_6_ ( .D(n252), .CK(clk), .RB(n159), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n253), .CK(clk), .RB(n160), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n254), .CK(clk), .RB(n161), .Q(data_out[4]) );
  QDFFRBN data_out_reg_3_ ( .D(n255), .CK(clk), .RB(n161), .Q(data_out[3]) );
  QDFFRBN data_out_reg_2_ ( .D(n256), .CK(clk), .RB(n161), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n257), .CK(clk), .RB(n161), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n250), .CK(clk), .RB(rst), .Q(data_out[0]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n185), .CK(clk), .RB(rst), .Q(N17) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n184), .CK(clk), .RB(rst), .Q(N16) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n258), .CK(clk), .RB(rst), .Q(wr_ptr[0]) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n259), .CK(clk), .RB(n167), .Q(wr_ptr[1]) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n260), .CK(clk), .RB(n167), .Q(wr_ptr[2]) );
  QDFFRBN buffer_reg_0__7_ ( .D(n243), .CK(clk), .RB(n165), .Q(buffer[63]) );
  QDFFRBN buffer_reg_0__6_ ( .D(n249), .CK(clk), .RB(n166), .Q(buffer[62]) );
  QDFFRBN buffer_reg_0__5_ ( .D(n248), .CK(clk), .RB(n166), .Q(buffer[61]) );
  QDFFRBN buffer_reg_0__4_ ( .D(n247), .CK(clk), .RB(n166), .Q(buffer[60]) );
  QDFFRBN buffer_reg_0__3_ ( .D(n246), .CK(clk), .RB(n166), .Q(buffer[59]) );
  QDFFRBN buffer_reg_0__2_ ( .D(n245), .CK(clk), .RB(n165), .Q(buffer[58]) );
  QDFFRBN buffer_reg_0__1_ ( .D(n244), .CK(clk), .RB(n165), .Q(buffer[57]) );
  QDFFRBN buffer_reg_0__0_ ( .D(n242), .CK(clk), .RB(n165), .Q(buffer[56]) );
  QDFFRBN buffer_reg_6__7_ ( .D(n195), .CK(clk), .RB(n162), .Q(buffer[15]) );
  QDFFRBN buffer_reg_6__6_ ( .D(n201), .CK(clk), .RB(n163), .Q(buffer[14]) );
  QDFFRBN buffer_reg_6__5_ ( .D(n200), .CK(clk), .RB(n163), .Q(buffer[13]) );
  QDFFRBN buffer_reg_6__4_ ( .D(n199), .CK(clk), .RB(n163), .Q(buffer[12]) );
  QDFFRBN buffer_reg_6__3_ ( .D(n198), .CK(clk), .RB(n163), .Q(buffer[11]) );
  QDFFRBN buffer_reg_6__2_ ( .D(n197), .CK(clk), .RB(n163), .Q(buffer[10]) );
  QDFFRBN buffer_reg_6__1_ ( .D(n196), .CK(clk), .RB(n162), .Q(buffer[9]) );
  QDFFRBN buffer_reg_6__0_ ( .D(n194), .CK(clk), .RB(n162), .Q(buffer[8]) );
  QDFFRBN buffer_reg_4__7_ ( .D(n211), .CK(clk), .RB(n164), .Q(buffer[31]) );
  QDFFRBN buffer_reg_4__6_ ( .D(n217), .CK(clk), .RB(n164), .Q(buffer[30]) );
  QDFFRBN buffer_reg_4__5_ ( .D(n216), .CK(clk), .RB(n164), .Q(buffer[29]) );
  QDFFRBN buffer_reg_4__4_ ( .D(n215), .CK(clk), .RB(n164), .Q(buffer[28]) );
  QDFFRBN buffer_reg_4__3_ ( .D(n214), .CK(clk), .RB(n164), .Q(buffer[27]) );
  QDFFRBN buffer_reg_4__2_ ( .D(n213), .CK(clk), .RB(n164), .Q(buffer[26]) );
  QDFFRBN buffer_reg_4__1_ ( .D(n212), .CK(clk), .RB(n164), .Q(buffer[25]) );
  QDFFRBN buffer_reg_4__0_ ( .D(n210), .CK(clk), .RB(n164), .Q(buffer[24]) );
  QDFFRBN buffer_reg_2__7_ ( .D(n227), .CK(clk), .RB(n167), .Q(buffer[47]) );
  QDFFRBN buffer_reg_2__6_ ( .D(n233), .CK(clk), .RB(n167), .Q(buffer[46]) );
  QDFFRBN buffer_reg_2__5_ ( .D(n232), .CK(clk), .RB(n167), .Q(buffer[45]) );
  QDFFRBN buffer_reg_2__4_ ( .D(n231), .CK(clk), .RB(n167), .Q(buffer[44]) );
  QDFFRBN buffer_reg_2__3_ ( .D(n230), .CK(clk), .RB(n167), .Q(buffer[43]) );
  QDFFRBN buffer_reg_2__2_ ( .D(n229), .CK(clk), .RB(n167), .Q(buffer[42]) );
  QDFFRBN buffer_reg_2__1_ ( .D(n228), .CK(clk), .RB(n167), .Q(buffer[41]) );
  QDFFRBN buffer_reg_2__0_ ( .D(n226), .CK(clk), .RB(n167), .Q(buffer[40]) );
  QDFFRBN buffer_reg_7__7_ ( .D(n187), .CK(clk), .RB(n162), .Q(buffer[7]) );
  QDFFRBN buffer_reg_7__6_ ( .D(n193), .CK(clk), .RB(n162), .Q(buffer[6]) );
  QDFFRBN buffer_reg_7__5_ ( .D(n192), .CK(clk), .RB(n162), .Q(buffer[5]) );
  QDFFRBN buffer_reg_7__4_ ( .D(n191), .CK(clk), .RB(n162), .Q(buffer[4]) );
  QDFFRBN buffer_reg_7__3_ ( .D(n190), .CK(clk), .RB(n162), .Q(buffer[3]) );
  QDFFRBN buffer_reg_7__2_ ( .D(n189), .CK(clk), .RB(n162), .Q(buffer[2]) );
  QDFFRBN buffer_reg_7__1_ ( .D(n188), .CK(clk), .RB(n162), .Q(buffer[1]) );
  QDFFRBN buffer_reg_7__0_ ( .D(n186), .CK(clk), .RB(n162), .Q(buffer[0]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n203), .CK(clk), .RB(n163), .Q(buffer[23]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n209), .CK(clk), .RB(n164), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n208), .CK(clk), .RB(n164), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n207), .CK(clk), .RB(n163), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n206), .CK(clk), .RB(n163), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n205), .CK(clk), .RB(n163), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n204), .CK(clk), .RB(n163), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n202), .CK(clk), .RB(n163), .Q(buffer[16]) );
  QDFFRBN buffer_reg_1__7_ ( .D(n235), .CK(clk), .RB(n165), .Q(buffer[55]) );
  QDFFRBN buffer_reg_1__6_ ( .D(n241), .CK(clk), .RB(n165), .Q(buffer[54]) );
  QDFFRBN buffer_reg_1__5_ ( .D(n240), .CK(clk), .RB(n165), .Q(buffer[53]) );
  QDFFRBN buffer_reg_1__4_ ( .D(n239), .CK(clk), .RB(n165), .Q(buffer[52]) );
  QDFFRBN buffer_reg_1__3_ ( .D(n238), .CK(clk), .RB(n165), .Q(buffer[51]) );
  QDFFRBN buffer_reg_1__2_ ( .D(n237), .CK(clk), .RB(n165), .Q(buffer[50]) );
  QDFFRBN buffer_reg_1__1_ ( .D(n236), .CK(clk), .RB(n165), .Q(buffer[49]) );
  QDFFRBN buffer_reg_1__0_ ( .D(n234), .CK(clk), .RB(n164), .Q(buffer[48]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n219), .CK(clk), .RB(n166), .Q(buffer[39]) );
  QDFFRBN buffer_reg_3__6_ ( .D(n225), .CK(clk), .RB(n167), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n224), .CK(clk), .RB(n166), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n223), .CK(clk), .RB(n166), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n222), .CK(clk), .RB(n166), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n221), .CK(clk), .RB(n166), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n220), .CK(clk), .RB(n166), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n218), .CK(clk), .RB(n166), .Q(buffer[32]) );
  INV1S U3 ( .I(N17), .O(n156) );
  INV1S U4 ( .I(n283), .O(n168) );
  INV1S U5 ( .I(n281), .O(n169) );
  NR2P U14 ( .I1(N16), .I2(N17), .O(n151) );
  XNR2HS U15 ( .I1(N17), .I2(wr_ptr[2]), .O(n265) );
  XOR2HS U16 ( .I1(N16), .I2(n173), .O(n264) );
  INV1S U17 ( .I(data_in[0]), .O(n182) );
  INV1S U18 ( .I(data_in[1]), .O(n181) );
  INV1S U19 ( .I(data_in[2]), .O(n180) );
  INV1S U20 ( .I(data_in[3]), .O(n179) );
  INV1S U21 ( .I(data_in[4]), .O(n178) );
  INV1S U22 ( .I(data_in[5]), .O(n177) );
  INV1S U23 ( .I(data_in[6]), .O(n176) );
  INV1S U24 ( .I(data_in[7]), .O(n175) );
  NR2 U25 ( .I1(n283), .I2(n173), .O(n285) );
  INV1S U26 ( .I(wr_ptr[2]), .O(n174) );
  INV1S U27 ( .I(wr_ptr[1]), .O(n173) );
  INV1S U28 ( .I(wr_ptr[0]), .O(n172) );
  INV1S U29 ( .I(n280), .O(n170) );
  ND2 U30 ( .I1(r_en), .I2(n268), .O(n280) );
  ND3 U31 ( .I1(n265), .I2(n264), .I3(n261), .O(n268) );
  XOR2HS U32 ( .I1(n171), .I2(wr_ptr[0]), .O(n261) );
  AOI13HS U33 ( .B1(n267), .B2(n171), .B3(wr_ptr[0]), .A1(n266), .O(n272) );
  AN4B1S U34 ( .I1(n265), .I2(n172), .I3(n264), .B1(n171), .O(n266) );
  ND3 U35 ( .I1(N16), .I2(n173), .I3(n265), .O(n262) );
  MOAI1S U36 ( .A1(n182), .A2(n284), .B1(buffer[32]), .B2(n284), .O(n218) );
  MOAI1S U37 ( .A1(n181), .A2(n284), .B1(buffer[33]), .B2(n284), .O(n220) );
  MOAI1S U38 ( .A1(n180), .A2(n284), .B1(buffer[34]), .B2(n284), .O(n221) );
  MOAI1S U39 ( .A1(n179), .A2(n284), .B1(buffer[35]), .B2(n284), .O(n222) );
  MOAI1S U40 ( .A1(n178), .A2(n284), .B1(buffer[36]), .B2(n284), .O(n223) );
  MOAI1S U41 ( .A1(n177), .A2(n284), .B1(buffer[37]), .B2(n284), .O(n224) );
  MOAI1S U42 ( .A1(n176), .A2(n284), .B1(buffer[38]), .B2(n284), .O(n225) );
  MOAI1S U43 ( .A1(n175), .A2(n284), .B1(buffer[39]), .B2(n284), .O(n219) );
  MOAI1S U44 ( .A1(n182), .A2(n278), .B1(buffer[48]), .B2(n278), .O(n234) );
  MOAI1S U45 ( .A1(n181), .A2(n278), .B1(buffer[49]), .B2(n278), .O(n236) );
  MOAI1S U46 ( .A1(n180), .A2(n278), .B1(buffer[50]), .B2(n278), .O(n237) );
  MOAI1S U47 ( .A1(n179), .A2(n278), .B1(buffer[51]), .B2(n278), .O(n238) );
  MOAI1S U48 ( .A1(n178), .A2(n278), .B1(buffer[52]), .B2(n278), .O(n239) );
  MOAI1S U49 ( .A1(n177), .A2(n278), .B1(buffer[53]), .B2(n278), .O(n240) );
  MOAI1S U50 ( .A1(n176), .A2(n278), .B1(buffer[54]), .B2(n278), .O(n241) );
  MOAI1S U51 ( .A1(n175), .A2(n278), .B1(buffer[55]), .B2(n278), .O(n235) );
  MOAI1S U52 ( .A1(n182), .A2(n275), .B1(buffer[16]), .B2(n275), .O(n202) );
  MOAI1S U53 ( .A1(n181), .A2(n275), .B1(buffer[17]), .B2(n275), .O(n204) );
  MOAI1S U54 ( .A1(n180), .A2(n275), .B1(buffer[18]), .B2(n275), .O(n205) );
  MOAI1S U55 ( .A1(n179), .A2(n275), .B1(buffer[19]), .B2(n275), .O(n206) );
  MOAI1S U56 ( .A1(n178), .A2(n275), .B1(buffer[20]), .B2(n275), .O(n207) );
  MOAI1S U57 ( .A1(n177), .A2(n275), .B1(buffer[21]), .B2(n275), .O(n208) );
  MOAI1S U58 ( .A1(n176), .A2(n275), .B1(buffer[22]), .B2(n275), .O(n209) );
  MOAI1S U59 ( .A1(n175), .A2(n275), .B1(buffer[23]), .B2(n275), .O(n203) );
  MOAI1S U60 ( .A1(n182), .A2(n273), .B1(buffer[0]), .B2(n273), .O(n186) );
  MOAI1S U61 ( .A1(n181), .A2(n273), .B1(buffer[1]), .B2(n273), .O(n188) );
  MOAI1S U62 ( .A1(n180), .A2(n273), .B1(buffer[2]), .B2(n273), .O(n189) );
  MOAI1S U63 ( .A1(n179), .A2(n273), .B1(buffer[3]), .B2(n273), .O(n190) );
  MOAI1S U64 ( .A1(n178), .A2(n273), .B1(buffer[4]), .B2(n273), .O(n191) );
  MOAI1S U65 ( .A1(n177), .A2(n273), .B1(buffer[5]), .B2(n273), .O(n192) );
  MOAI1S U66 ( .A1(n176), .A2(n273), .B1(buffer[6]), .B2(n273), .O(n193) );
  MOAI1S U67 ( .A1(n175), .A2(n273), .B1(buffer[7]), .B2(n273), .O(n187) );
  MOAI1S U68 ( .A1(n182), .A2(n277), .B1(buffer[40]), .B2(n277), .O(n226) );
  MOAI1S U69 ( .A1(n181), .A2(n277), .B1(buffer[41]), .B2(n277), .O(n228) );
  MOAI1S U70 ( .A1(n180), .A2(n277), .B1(buffer[42]), .B2(n277), .O(n229) );
  MOAI1S U71 ( .A1(n179), .A2(n277), .B1(buffer[43]), .B2(n277), .O(n230) );
  MOAI1S U72 ( .A1(n178), .A2(n277), .B1(buffer[44]), .B2(n277), .O(n231) );
  MOAI1S U73 ( .A1(n177), .A2(n277), .B1(buffer[45]), .B2(n277), .O(n232) );
  MOAI1S U74 ( .A1(n176), .A2(n277), .B1(buffer[46]), .B2(n277), .O(n233) );
  MOAI1S U75 ( .A1(n175), .A2(n277), .B1(buffer[47]), .B2(n277), .O(n227) );
  MOAI1S U76 ( .A1(n182), .A2(n276), .B1(buffer[24]), .B2(n276), .O(n210) );
  MOAI1S U77 ( .A1(n181), .A2(n276), .B1(buffer[25]), .B2(n276), .O(n212) );
  MOAI1S U78 ( .A1(n180), .A2(n276), .B1(buffer[26]), .B2(n276), .O(n213) );
  MOAI1S U79 ( .A1(n179), .A2(n276), .B1(buffer[27]), .B2(n276), .O(n214) );
  MOAI1S U81 ( .A1(n178), .A2(n276), .B1(buffer[28]), .B2(n276), .O(n215) );
  MOAI1S U82 ( .A1(n177), .A2(n276), .B1(buffer[29]), .B2(n276), .O(n216) );
  MOAI1S U83 ( .A1(n176), .A2(n276), .B1(buffer[30]), .B2(n276), .O(n217) );
  BUF1CK U84 ( .I(n159), .O(n164) );
  MOAI1S U85 ( .A1(n175), .A2(n276), .B1(buffer[31]), .B2(n276), .O(n211) );
  MOAI1S U86 ( .A1(n182), .A2(n274), .B1(buffer[8]), .B2(n274), .O(n194) );
  MOAI1S U87 ( .A1(n181), .A2(n274), .B1(buffer[9]), .B2(n274), .O(n196) );
  MOAI1S U88 ( .A1(n180), .A2(n274), .B1(buffer[10]), .B2(n274), .O(n197) );
  MOAI1S U89 ( .A1(n179), .A2(n274), .B1(buffer[11]), .B2(n274), .O(n198) );
  MOAI1S U90 ( .A1(n178), .A2(n274), .B1(buffer[12]), .B2(n274), .O(n199) );
  MOAI1S U91 ( .A1(n177), .A2(n274), .B1(buffer[13]), .B2(n274), .O(n200) );
  BUF1CK U92 ( .I(n158), .O(n163) );
  MOAI1S U93 ( .A1(n176), .A2(n274), .B1(buffer[14]), .B2(n274), .O(n201) );
  BUF1CK U94 ( .I(n158), .O(n162) );
  MOAI1S U95 ( .A1(n175), .A2(n274), .B1(buffer[15]), .B2(n274), .O(n195) );
  MOAI1S U96 ( .A1(n279), .A2(n182), .B1(buffer[56]), .B2(n279), .O(n242) );
  MOAI1S U97 ( .A1(n279), .A2(n181), .B1(buffer[57]), .B2(n279), .O(n244) );
  MOAI1S U100 ( .A1(n279), .A2(n180), .B1(buffer[58]), .B2(n279), .O(n245) );
  MOAI1S U101 ( .A1(n279), .A2(n179), .B1(buffer[59]), .B2(n279), .O(n246) );
  MOAI1S U102 ( .A1(n279), .A2(n178), .B1(buffer[60]), .B2(n279), .O(n247) );
  MOAI1S U103 ( .A1(n279), .A2(n177), .B1(buffer[61]), .B2(n279), .O(n248) );
  BUF1CK U104 ( .I(n160), .O(n166) );
  MOAI1S U107 ( .A1(n279), .A2(n176), .B1(buffer[62]), .B2(n279), .O(n249) );
  BUF1CK U108 ( .I(n159), .O(n165) );
  MOAI1S U109 ( .A1(n279), .A2(n175), .B1(buffer[63]), .B2(n279), .O(n243) );
  OAI12HS U110 ( .B1(n285), .B2(n174), .A1(n284), .O(n260) );
  BUF1CK U111 ( .I(n160), .O(n167) );
  XOR2HS U112 ( .I1(n173), .I2(n283), .O(n259) );
  OAI12HS U113 ( .B1(n282), .B2(n172), .A1(n281), .O(n258) );
  MOAI1S U115 ( .A1(N16), .A2(n271), .B1(n269), .B2(N16), .O(n184) );
  MOAI1S U117 ( .A1(n157), .A2(n271), .B1(n270), .B2(N17), .O(n185) );
  OR2 U118 ( .I1(n157), .I2(n269), .O(n270) );
  XOR2HS U119 ( .I1(n171), .I2(n280), .O(n183) );
  INV1S U120 ( .I(n268), .O(empty) );
  INV1S U121 ( .I(n272), .O(full) );
  BUF1CK U122 ( .I(rst), .O(n161) );
  BUF1CK U123 ( .I(rst), .O(n160) );
  BUF1 U124 ( .I(rst), .O(n159) );
  BUF1S U125 ( .I(rst), .O(n158) );
  NR2P U126 ( .I1(n156), .I2(n157), .O(n148) );
  ND2 U127 ( .I1(n285), .I2(n174), .O(n284) );
  ND3 U128 ( .I1(n173), .I2(n174), .I3(n168), .O(n278) );
  ND3 U129 ( .I1(wr_ptr[2]), .I2(n173), .I3(n168), .O(n275) );
  ND2 U130 ( .I1(n285), .I2(wr_ptr[2]), .O(n273) );
  ND3 U131 ( .I1(wr_ptr[1]), .I2(n174), .I3(n169), .O(n277) );
  ND3 U132 ( .I1(n173), .I2(n174), .I3(n169), .O(n279) );
  ND3 U133 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n169), .O(n274) );
  ND3 U134 ( .I1(wr_ptr[2]), .I2(n173), .I3(n169), .O(n276) );
  NR2P U135 ( .I1(n157), .I2(N17), .O(n1501) );
  NR2P U136 ( .I1(n156), .I2(N16), .O(n149) );
  INV1S U137 ( .I(N16), .O(n157) );
  INV1S U138 ( .I(N15), .O(n171) );
  AOI22S U139 ( .A1(buffer[24]), .A2(n149), .B1(buffer[8]), .B2(n148), .O(n2)
         );
  AOI22S U140 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n1501), .O(n1) );
  AN2 U141 ( .I1(n2), .I2(n1), .O(n6) );
  AOI22S U142 ( .A1(buffer[16]), .A2(n149), .B1(buffer[0]), .B2(n148), .O(n4)
         );
  AOI22S U143 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n1501), .O(n3) );
  ND2 U144 ( .I1(n4), .I2(n3), .O(n5) );
  MOAI1S U145 ( .A1(N15), .A2(n6), .B1(n5), .B2(N15), .O(N55) );
  AOI22S U146 ( .A1(buffer[25]), .A2(n149), .B1(buffer[9]), .B2(n148), .O(n8)
         );
  AOI22S U147 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n1501), .O(n7) );
  AN2 U148 ( .I1(n8), .I2(n7), .O(n18) );
  AOI22S U149 ( .A1(buffer[17]), .A2(n149), .B1(buffer[1]), .B2(n148), .O(n12)
         );
  AOI22S U150 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n1501), .O(
        n10) );
  ND2 U151 ( .I1(n12), .I2(n10), .O(n1500) );
  MOAI1S U152 ( .A1(N15), .A2(n18), .B1(n1500), .B2(N15), .O(N54) );
  AOI22S U153 ( .A1(buffer[26]), .A2(n149), .B1(buffer[10]), .B2(n148), .O(n21) );
  AOI22S U154 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n1501), .O(
        n20) );
  AN2 U155 ( .I1(n21), .I2(n20), .O(n25) );
  AOI22S U156 ( .A1(buffer[18]), .A2(n149), .B1(buffer[2]), .B2(n148), .O(n23)
         );
  AOI22S U157 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n1501), .O(
        n22) );
  ND2 U158 ( .I1(n23), .I2(n22), .O(n24) );
  MOAI1S U159 ( .A1(N15), .A2(n25), .B1(n24), .B2(N15), .O(N53) );
  AOI22S U160 ( .A1(buffer[27]), .A2(n149), .B1(buffer[11]), .B2(n148), .O(n27) );
  AOI22S U161 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n1501), .O(
        n26) );
  AN2 U162 ( .I1(n27), .I2(n26), .O(n41) );
  AOI22S U163 ( .A1(buffer[19]), .A2(n149), .B1(buffer[3]), .B2(n148), .O(n30)
         );
  AOI22S U164 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n1501), .O(
        n28) );
  ND2 U165 ( .I1(n30), .I2(n28), .O(n37) );
  MOAI1S U166 ( .A1(N15), .A2(n41), .B1(n37), .B2(N15), .O(N52) );
  AOI22S U167 ( .A1(buffer[28]), .A2(n149), .B1(buffer[12]), .B2(n148), .O(
        n129) );
  AOI22S U168 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n1501), .O(
        n128) );
  AN2 U169 ( .I1(n129), .I2(n128), .O(n133) );
  AOI22S U170 ( .A1(buffer[20]), .A2(n149), .B1(buffer[4]), .B2(n148), .O(n131) );
  AOI22S U171 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n1501), .O(
        n130) );
  ND2 U172 ( .I1(n131), .I2(n130), .O(n132) );
  MOAI1S U173 ( .A1(N15), .A2(n133), .B1(n132), .B2(N15), .O(N51) );
  AOI22S U174 ( .A1(buffer[29]), .A2(n149), .B1(buffer[13]), .B2(n148), .O(
        n135) );
  AOI22S U175 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n1501), .O(
        n134) );
  AN2 U176 ( .I1(n135), .I2(n134), .O(n139) );
  AOI22S U177 ( .A1(buffer[21]), .A2(n149), .B1(buffer[5]), .B2(n148), .O(n137) );
  AOI22S U178 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n1501), .O(
        n136) );
  ND2 U179 ( .I1(n137), .I2(n136), .O(n138) );
  MOAI1S U180 ( .A1(N15), .A2(n139), .B1(n138), .B2(N15), .O(N50) );
  AOI22S U181 ( .A1(buffer[30]), .A2(n149), .B1(buffer[14]), .B2(n148), .O(
        n141) );
  AOI22S U182 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n1501), .O(
        n140) );
  AN2 U183 ( .I1(n141), .I2(n140), .O(n145) );
  AOI22S U184 ( .A1(buffer[22]), .A2(n149), .B1(buffer[6]), .B2(n148), .O(n143) );
  AOI22S U185 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n1501), .O(
        n142) );
  ND2 U186 ( .I1(n143), .I2(n142), .O(n144) );
  MOAI1S U187 ( .A1(N15), .A2(n145), .B1(n144), .B2(N15), .O(N49) );
  AOI22S U188 ( .A1(buffer[23]), .A2(n149), .B1(buffer[7]), .B2(n148), .O(n147) );
  AOI22S U189 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n1501), .O(
        n146) );
  AN2 U190 ( .I1(n147), .I2(n146), .O(n155) );
  AOI22S U191 ( .A1(buffer[31]), .A2(n149), .B1(buffer[15]), .B2(n148), .O(
        n153) );
  AOI22S U192 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n1501), .O(
        n152) );
  ND2 U193 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U194 ( .A1(n155), .A2(n171), .B1(n154), .B2(n171), .O(N48) );
endmodule


module sync_fifo_5 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n12, n1500, n18, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n30, n37, n41, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n1501, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  AO22 U6 ( .A1(data_out[1]), .A2(n280), .B1(N54), .B2(n170), .O(n257) );
  AO22 U7 ( .A1(data_out[2]), .A2(n280), .B1(N53), .B2(n170), .O(n256) );
  AO22 U8 ( .A1(data_out[3]), .A2(n280), .B1(N52), .B2(n170), .O(n255) );
  AO22 U9 ( .A1(data_out[4]), .A2(n280), .B1(N51), .B2(n170), .O(n254) );
  AO22 U10 ( .A1(data_out[5]), .A2(n280), .B1(N50), .B2(n170), .O(n253) );
  AO22 U11 ( .A1(data_out[6]), .A2(n280), .B1(N49), .B2(n170), .O(n252) );
  AO22 U12 ( .A1(data_out[7]), .A2(n280), .B1(N48), .B2(n170), .O(n251) );
  AO22 U13 ( .A1(data_out[0]), .A2(n280), .B1(N55), .B2(n170), .O(n250) );
  ND2 U80 ( .I1(n282), .I2(n172), .O(n281) );
  ND2 U98 ( .I1(n282), .I2(wr_ptr[0]), .O(n283) );
  AN2 U99 ( .I1(w_en), .I2(n272), .O(n282) );
  AO12 U105 ( .B1(N17), .B2(N16), .A1(n269), .O(n271) );
  ND2 U106 ( .I1(n170), .I2(N15), .O(n269) );
  ND2 U114 ( .I1(n263), .I2(n262), .O(n267) );
  OR3 U116 ( .I1(n265), .I2(N16), .I3(n173), .O(n263) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n183), .CK(clk), .RB(n161), .Q(N15) );
  QDFFRBN data_out_reg_7_ ( .D(n251), .CK(clk), .RB(n158), .Q(data_out[7]) );
  QDFFRBN data_out_reg_6_ ( .D(n252), .CK(clk), .RB(n159), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n253), .CK(clk), .RB(n160), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n254), .CK(clk), .RB(n161), .Q(data_out[4]) );
  QDFFRBN data_out_reg_3_ ( .D(n255), .CK(clk), .RB(n161), .Q(data_out[3]) );
  QDFFRBN data_out_reg_2_ ( .D(n256), .CK(clk), .RB(n161), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n257), .CK(clk), .RB(n161), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n250), .CK(clk), .RB(rst), .Q(data_out[0]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n185), .CK(clk), .RB(rst), .Q(N17) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n184), .CK(clk), .RB(rst), .Q(N16) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n258), .CK(clk), .RB(rst), .Q(wr_ptr[0]) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n259), .CK(clk), .RB(n167), .Q(wr_ptr[1]) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n260), .CK(clk), .RB(n167), .Q(wr_ptr[2]) );
  QDFFRBN buffer_reg_0__7_ ( .D(n243), .CK(clk), .RB(n165), .Q(buffer[63]) );
  QDFFRBN buffer_reg_0__6_ ( .D(n249), .CK(clk), .RB(n166), .Q(buffer[62]) );
  QDFFRBN buffer_reg_0__5_ ( .D(n248), .CK(clk), .RB(n166), .Q(buffer[61]) );
  QDFFRBN buffer_reg_0__4_ ( .D(n247), .CK(clk), .RB(n166), .Q(buffer[60]) );
  QDFFRBN buffer_reg_0__3_ ( .D(n246), .CK(clk), .RB(n166), .Q(buffer[59]) );
  QDFFRBN buffer_reg_0__2_ ( .D(n245), .CK(clk), .RB(n165), .Q(buffer[58]) );
  QDFFRBN buffer_reg_0__1_ ( .D(n244), .CK(clk), .RB(n165), .Q(buffer[57]) );
  QDFFRBN buffer_reg_0__0_ ( .D(n242), .CK(clk), .RB(n165), .Q(buffer[56]) );
  QDFFRBN buffer_reg_6__7_ ( .D(n195), .CK(clk), .RB(n162), .Q(buffer[15]) );
  QDFFRBN buffer_reg_6__6_ ( .D(n201), .CK(clk), .RB(n163), .Q(buffer[14]) );
  QDFFRBN buffer_reg_6__5_ ( .D(n200), .CK(clk), .RB(n163), .Q(buffer[13]) );
  QDFFRBN buffer_reg_6__4_ ( .D(n199), .CK(clk), .RB(n163), .Q(buffer[12]) );
  QDFFRBN buffer_reg_6__3_ ( .D(n198), .CK(clk), .RB(n163), .Q(buffer[11]) );
  QDFFRBN buffer_reg_6__2_ ( .D(n197), .CK(clk), .RB(n163), .Q(buffer[10]) );
  QDFFRBN buffer_reg_6__1_ ( .D(n196), .CK(clk), .RB(n162), .Q(buffer[9]) );
  QDFFRBN buffer_reg_6__0_ ( .D(n194), .CK(clk), .RB(n162), .Q(buffer[8]) );
  QDFFRBN buffer_reg_4__7_ ( .D(n211), .CK(clk), .RB(n164), .Q(buffer[31]) );
  QDFFRBN buffer_reg_4__6_ ( .D(n217), .CK(clk), .RB(n164), .Q(buffer[30]) );
  QDFFRBN buffer_reg_4__5_ ( .D(n216), .CK(clk), .RB(n164), .Q(buffer[29]) );
  QDFFRBN buffer_reg_4__4_ ( .D(n215), .CK(clk), .RB(n164), .Q(buffer[28]) );
  QDFFRBN buffer_reg_4__3_ ( .D(n214), .CK(clk), .RB(n164), .Q(buffer[27]) );
  QDFFRBN buffer_reg_4__2_ ( .D(n213), .CK(clk), .RB(n164), .Q(buffer[26]) );
  QDFFRBN buffer_reg_4__1_ ( .D(n212), .CK(clk), .RB(n164), .Q(buffer[25]) );
  QDFFRBN buffer_reg_4__0_ ( .D(n210), .CK(clk), .RB(n164), .Q(buffer[24]) );
  QDFFRBN buffer_reg_2__7_ ( .D(n227), .CK(clk), .RB(n167), .Q(buffer[47]) );
  QDFFRBN buffer_reg_2__6_ ( .D(n233), .CK(clk), .RB(n167), .Q(buffer[46]) );
  QDFFRBN buffer_reg_2__5_ ( .D(n232), .CK(clk), .RB(n167), .Q(buffer[45]) );
  QDFFRBN buffer_reg_2__4_ ( .D(n231), .CK(clk), .RB(n167), .Q(buffer[44]) );
  QDFFRBN buffer_reg_2__3_ ( .D(n230), .CK(clk), .RB(n167), .Q(buffer[43]) );
  QDFFRBN buffer_reg_2__2_ ( .D(n229), .CK(clk), .RB(n167), .Q(buffer[42]) );
  QDFFRBN buffer_reg_2__1_ ( .D(n228), .CK(clk), .RB(n167), .Q(buffer[41]) );
  QDFFRBN buffer_reg_2__0_ ( .D(n226), .CK(clk), .RB(n167), .Q(buffer[40]) );
  QDFFRBN buffer_reg_7__7_ ( .D(n187), .CK(clk), .RB(n162), .Q(buffer[7]) );
  QDFFRBN buffer_reg_7__6_ ( .D(n193), .CK(clk), .RB(n162), .Q(buffer[6]) );
  QDFFRBN buffer_reg_7__5_ ( .D(n192), .CK(clk), .RB(n162), .Q(buffer[5]) );
  QDFFRBN buffer_reg_7__4_ ( .D(n191), .CK(clk), .RB(n162), .Q(buffer[4]) );
  QDFFRBN buffer_reg_7__3_ ( .D(n190), .CK(clk), .RB(n162), .Q(buffer[3]) );
  QDFFRBN buffer_reg_7__2_ ( .D(n189), .CK(clk), .RB(n162), .Q(buffer[2]) );
  QDFFRBN buffer_reg_7__1_ ( .D(n188), .CK(clk), .RB(n162), .Q(buffer[1]) );
  QDFFRBN buffer_reg_7__0_ ( .D(n186), .CK(clk), .RB(n162), .Q(buffer[0]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n203), .CK(clk), .RB(n163), .Q(buffer[23]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n209), .CK(clk), .RB(n164), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n208), .CK(clk), .RB(n164), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n207), .CK(clk), .RB(n163), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n206), .CK(clk), .RB(n163), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n205), .CK(clk), .RB(n163), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n204), .CK(clk), .RB(n163), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n202), .CK(clk), .RB(n163), .Q(buffer[16]) );
  QDFFRBN buffer_reg_1__7_ ( .D(n235), .CK(clk), .RB(n165), .Q(buffer[55]) );
  QDFFRBN buffer_reg_1__6_ ( .D(n241), .CK(clk), .RB(n165), .Q(buffer[54]) );
  QDFFRBN buffer_reg_1__5_ ( .D(n240), .CK(clk), .RB(n165), .Q(buffer[53]) );
  QDFFRBN buffer_reg_1__4_ ( .D(n239), .CK(clk), .RB(n165), .Q(buffer[52]) );
  QDFFRBN buffer_reg_1__3_ ( .D(n238), .CK(clk), .RB(n165), .Q(buffer[51]) );
  QDFFRBN buffer_reg_1__2_ ( .D(n237), .CK(clk), .RB(n165), .Q(buffer[50]) );
  QDFFRBN buffer_reg_1__1_ ( .D(n236), .CK(clk), .RB(n165), .Q(buffer[49]) );
  QDFFRBN buffer_reg_1__0_ ( .D(n234), .CK(clk), .RB(n164), .Q(buffer[48]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n219), .CK(clk), .RB(n166), .Q(buffer[39]) );
  QDFFRBN buffer_reg_3__6_ ( .D(n225), .CK(clk), .RB(n167), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n224), .CK(clk), .RB(n166), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n223), .CK(clk), .RB(n166), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n222), .CK(clk), .RB(n166), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n221), .CK(clk), .RB(n166), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n220), .CK(clk), .RB(n166), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n218), .CK(clk), .RB(n166), .Q(buffer[32]) );
  INV1S U3 ( .I(N17), .O(n156) );
  INV1S U4 ( .I(n283), .O(n168) );
  INV1S U5 ( .I(n281), .O(n169) );
  NR2P U14 ( .I1(N16), .I2(N17), .O(n151) );
  XNR2HS U15 ( .I1(N17), .I2(wr_ptr[2]), .O(n265) );
  XOR2HS U16 ( .I1(N16), .I2(n173), .O(n264) );
  INV1S U17 ( .I(data_in[0]), .O(n182) );
  INV1S U18 ( .I(data_in[1]), .O(n181) );
  INV1S U19 ( .I(data_in[2]), .O(n180) );
  INV1S U20 ( .I(data_in[3]), .O(n179) );
  INV1S U21 ( .I(data_in[4]), .O(n178) );
  INV1S U22 ( .I(data_in[5]), .O(n177) );
  INV1S U23 ( .I(data_in[6]), .O(n176) );
  INV1S U24 ( .I(data_in[7]), .O(n175) );
  NR2 U25 ( .I1(n283), .I2(n173), .O(n285) );
  INV1S U26 ( .I(wr_ptr[2]), .O(n174) );
  INV1S U27 ( .I(wr_ptr[1]), .O(n173) );
  INV1S U28 ( .I(wr_ptr[0]), .O(n172) );
  INV1S U29 ( .I(n280), .O(n170) );
  ND2 U30 ( .I1(r_en), .I2(n268), .O(n280) );
  ND3 U31 ( .I1(n265), .I2(n264), .I3(n261), .O(n268) );
  XOR2HS U32 ( .I1(n171), .I2(wr_ptr[0]), .O(n261) );
  AOI13HS U33 ( .B1(n267), .B2(n171), .B3(wr_ptr[0]), .A1(n266), .O(n272) );
  AN4B1S U34 ( .I1(n265), .I2(n172), .I3(n264), .B1(n171), .O(n266) );
  ND3 U35 ( .I1(N16), .I2(n173), .I3(n265), .O(n262) );
  MOAI1S U36 ( .A1(n182), .A2(n284), .B1(buffer[32]), .B2(n284), .O(n218) );
  MOAI1S U37 ( .A1(n181), .A2(n284), .B1(buffer[33]), .B2(n284), .O(n220) );
  MOAI1S U38 ( .A1(n180), .A2(n284), .B1(buffer[34]), .B2(n284), .O(n221) );
  MOAI1S U39 ( .A1(n179), .A2(n284), .B1(buffer[35]), .B2(n284), .O(n222) );
  MOAI1S U40 ( .A1(n178), .A2(n284), .B1(buffer[36]), .B2(n284), .O(n223) );
  MOAI1S U41 ( .A1(n177), .A2(n284), .B1(buffer[37]), .B2(n284), .O(n224) );
  MOAI1S U42 ( .A1(n176), .A2(n284), .B1(buffer[38]), .B2(n284), .O(n225) );
  MOAI1S U43 ( .A1(n175), .A2(n284), .B1(buffer[39]), .B2(n284), .O(n219) );
  MOAI1S U44 ( .A1(n182), .A2(n278), .B1(buffer[48]), .B2(n278), .O(n234) );
  MOAI1S U45 ( .A1(n181), .A2(n278), .B1(buffer[49]), .B2(n278), .O(n236) );
  MOAI1S U46 ( .A1(n180), .A2(n278), .B1(buffer[50]), .B2(n278), .O(n237) );
  MOAI1S U47 ( .A1(n179), .A2(n278), .B1(buffer[51]), .B2(n278), .O(n238) );
  MOAI1S U48 ( .A1(n178), .A2(n278), .B1(buffer[52]), .B2(n278), .O(n239) );
  MOAI1S U49 ( .A1(n177), .A2(n278), .B1(buffer[53]), .B2(n278), .O(n240) );
  MOAI1S U50 ( .A1(n176), .A2(n278), .B1(buffer[54]), .B2(n278), .O(n241) );
  MOAI1S U51 ( .A1(n175), .A2(n278), .B1(buffer[55]), .B2(n278), .O(n235) );
  MOAI1S U52 ( .A1(n182), .A2(n275), .B1(buffer[16]), .B2(n275), .O(n202) );
  MOAI1S U53 ( .A1(n181), .A2(n275), .B1(buffer[17]), .B2(n275), .O(n204) );
  MOAI1S U54 ( .A1(n180), .A2(n275), .B1(buffer[18]), .B2(n275), .O(n205) );
  MOAI1S U55 ( .A1(n179), .A2(n275), .B1(buffer[19]), .B2(n275), .O(n206) );
  MOAI1S U56 ( .A1(n178), .A2(n275), .B1(buffer[20]), .B2(n275), .O(n207) );
  MOAI1S U57 ( .A1(n177), .A2(n275), .B1(buffer[21]), .B2(n275), .O(n208) );
  MOAI1S U58 ( .A1(n176), .A2(n275), .B1(buffer[22]), .B2(n275), .O(n209) );
  MOAI1S U59 ( .A1(n175), .A2(n275), .B1(buffer[23]), .B2(n275), .O(n203) );
  MOAI1S U60 ( .A1(n182), .A2(n273), .B1(buffer[0]), .B2(n273), .O(n186) );
  MOAI1S U61 ( .A1(n181), .A2(n273), .B1(buffer[1]), .B2(n273), .O(n188) );
  MOAI1S U62 ( .A1(n180), .A2(n273), .B1(buffer[2]), .B2(n273), .O(n189) );
  MOAI1S U63 ( .A1(n179), .A2(n273), .B1(buffer[3]), .B2(n273), .O(n190) );
  MOAI1S U64 ( .A1(n178), .A2(n273), .B1(buffer[4]), .B2(n273), .O(n191) );
  MOAI1S U65 ( .A1(n177), .A2(n273), .B1(buffer[5]), .B2(n273), .O(n192) );
  MOAI1S U66 ( .A1(n176), .A2(n273), .B1(buffer[6]), .B2(n273), .O(n193) );
  MOAI1S U67 ( .A1(n175), .A2(n273), .B1(buffer[7]), .B2(n273), .O(n187) );
  MOAI1S U68 ( .A1(n182), .A2(n277), .B1(buffer[40]), .B2(n277), .O(n226) );
  MOAI1S U69 ( .A1(n181), .A2(n277), .B1(buffer[41]), .B2(n277), .O(n228) );
  MOAI1S U70 ( .A1(n180), .A2(n277), .B1(buffer[42]), .B2(n277), .O(n229) );
  MOAI1S U71 ( .A1(n179), .A2(n277), .B1(buffer[43]), .B2(n277), .O(n230) );
  MOAI1S U72 ( .A1(n178), .A2(n277), .B1(buffer[44]), .B2(n277), .O(n231) );
  MOAI1S U73 ( .A1(n177), .A2(n277), .B1(buffer[45]), .B2(n277), .O(n232) );
  MOAI1S U74 ( .A1(n176), .A2(n277), .B1(buffer[46]), .B2(n277), .O(n233) );
  MOAI1S U75 ( .A1(n175), .A2(n277), .B1(buffer[47]), .B2(n277), .O(n227) );
  MOAI1S U76 ( .A1(n182), .A2(n276), .B1(buffer[24]), .B2(n276), .O(n210) );
  MOAI1S U77 ( .A1(n181), .A2(n276), .B1(buffer[25]), .B2(n276), .O(n212) );
  MOAI1S U78 ( .A1(n180), .A2(n276), .B1(buffer[26]), .B2(n276), .O(n213) );
  MOAI1S U79 ( .A1(n179), .A2(n276), .B1(buffer[27]), .B2(n276), .O(n214) );
  MOAI1S U81 ( .A1(n178), .A2(n276), .B1(buffer[28]), .B2(n276), .O(n215) );
  MOAI1S U82 ( .A1(n177), .A2(n276), .B1(buffer[29]), .B2(n276), .O(n216) );
  MOAI1S U83 ( .A1(n176), .A2(n276), .B1(buffer[30]), .B2(n276), .O(n217) );
  BUF1CK U84 ( .I(n159), .O(n164) );
  MOAI1S U85 ( .A1(n175), .A2(n276), .B1(buffer[31]), .B2(n276), .O(n211) );
  MOAI1S U86 ( .A1(n182), .A2(n274), .B1(buffer[8]), .B2(n274), .O(n194) );
  MOAI1S U87 ( .A1(n181), .A2(n274), .B1(buffer[9]), .B2(n274), .O(n196) );
  MOAI1S U88 ( .A1(n180), .A2(n274), .B1(buffer[10]), .B2(n274), .O(n197) );
  MOAI1S U89 ( .A1(n179), .A2(n274), .B1(buffer[11]), .B2(n274), .O(n198) );
  MOAI1S U90 ( .A1(n178), .A2(n274), .B1(buffer[12]), .B2(n274), .O(n199) );
  MOAI1S U91 ( .A1(n177), .A2(n274), .B1(buffer[13]), .B2(n274), .O(n200) );
  BUF1CK U92 ( .I(n158), .O(n163) );
  MOAI1S U93 ( .A1(n176), .A2(n274), .B1(buffer[14]), .B2(n274), .O(n201) );
  BUF1CK U94 ( .I(n158), .O(n162) );
  MOAI1S U95 ( .A1(n175), .A2(n274), .B1(buffer[15]), .B2(n274), .O(n195) );
  MOAI1S U96 ( .A1(n279), .A2(n182), .B1(buffer[56]), .B2(n279), .O(n242) );
  MOAI1S U97 ( .A1(n279), .A2(n181), .B1(buffer[57]), .B2(n279), .O(n244) );
  MOAI1S U100 ( .A1(n279), .A2(n180), .B1(buffer[58]), .B2(n279), .O(n245) );
  MOAI1S U101 ( .A1(n279), .A2(n179), .B1(buffer[59]), .B2(n279), .O(n246) );
  MOAI1S U102 ( .A1(n279), .A2(n178), .B1(buffer[60]), .B2(n279), .O(n247) );
  MOAI1S U103 ( .A1(n279), .A2(n177), .B1(buffer[61]), .B2(n279), .O(n248) );
  BUF1CK U104 ( .I(n160), .O(n166) );
  MOAI1S U107 ( .A1(n279), .A2(n176), .B1(buffer[62]), .B2(n279), .O(n249) );
  BUF1CK U108 ( .I(n159), .O(n165) );
  MOAI1S U109 ( .A1(n279), .A2(n175), .B1(buffer[63]), .B2(n279), .O(n243) );
  OAI12HS U110 ( .B1(n285), .B2(n174), .A1(n284), .O(n260) );
  BUF1CK U111 ( .I(n160), .O(n167) );
  XOR2HS U112 ( .I1(n173), .I2(n283), .O(n259) );
  OAI12HS U113 ( .B1(n282), .B2(n172), .A1(n281), .O(n258) );
  MOAI1S U115 ( .A1(N16), .A2(n271), .B1(n269), .B2(N16), .O(n184) );
  MOAI1S U117 ( .A1(n157), .A2(n271), .B1(n270), .B2(N17), .O(n185) );
  OR2 U118 ( .I1(n157), .I2(n269), .O(n270) );
  XOR2HS U119 ( .I1(n171), .I2(n280), .O(n183) );
  INV1S U120 ( .I(n268), .O(empty) );
  INV1S U121 ( .I(n272), .O(full) );
  BUF1CK U122 ( .I(rst), .O(n161) );
  BUF1CK U123 ( .I(rst), .O(n160) );
  BUF1CK U124 ( .I(rst), .O(n159) );
  BUF1S U125 ( .I(rst), .O(n158) );
  NR2P U126 ( .I1(n156), .I2(n157), .O(n148) );
  ND2 U127 ( .I1(n285), .I2(n174), .O(n284) );
  ND3 U128 ( .I1(n173), .I2(n174), .I3(n168), .O(n278) );
  ND3 U129 ( .I1(wr_ptr[2]), .I2(n173), .I3(n168), .O(n275) );
  ND2 U130 ( .I1(n285), .I2(wr_ptr[2]), .O(n273) );
  ND3 U131 ( .I1(wr_ptr[1]), .I2(n174), .I3(n169), .O(n277) );
  ND3 U132 ( .I1(n173), .I2(n174), .I3(n169), .O(n279) );
  ND3 U133 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n169), .O(n274) );
  ND3 U134 ( .I1(wr_ptr[2]), .I2(n173), .I3(n169), .O(n276) );
  NR2P U135 ( .I1(n157), .I2(N17), .O(n1501) );
  NR2P U136 ( .I1(n156), .I2(N16), .O(n149) );
  INV1S U137 ( .I(N16), .O(n157) );
  INV1S U138 ( .I(N15), .O(n171) );
  AOI22S U139 ( .A1(buffer[24]), .A2(n149), .B1(buffer[8]), .B2(n148), .O(n2)
         );
  AOI22S U140 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n1501), .O(n1) );
  AN2 U141 ( .I1(n2), .I2(n1), .O(n6) );
  AOI22S U142 ( .A1(buffer[16]), .A2(n149), .B1(buffer[0]), .B2(n148), .O(n4)
         );
  AOI22S U143 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n1501), .O(n3) );
  ND2 U144 ( .I1(n4), .I2(n3), .O(n5) );
  MOAI1S U145 ( .A1(N15), .A2(n6), .B1(n5), .B2(N15), .O(N55) );
  AOI22S U146 ( .A1(buffer[25]), .A2(n149), .B1(buffer[9]), .B2(n148), .O(n8)
         );
  AOI22S U147 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n1501), .O(n7) );
  AN2 U148 ( .I1(n8), .I2(n7), .O(n18) );
  AOI22S U149 ( .A1(buffer[17]), .A2(n149), .B1(buffer[1]), .B2(n148), .O(n12)
         );
  AOI22S U150 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n1501), .O(
        n10) );
  ND2 U151 ( .I1(n12), .I2(n10), .O(n1500) );
  MOAI1S U152 ( .A1(N15), .A2(n18), .B1(n1500), .B2(N15), .O(N54) );
  AOI22S U153 ( .A1(buffer[26]), .A2(n149), .B1(buffer[10]), .B2(n148), .O(n21) );
  AOI22S U154 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n1501), .O(
        n20) );
  AN2 U155 ( .I1(n21), .I2(n20), .O(n25) );
  AOI22S U156 ( .A1(buffer[18]), .A2(n149), .B1(buffer[2]), .B2(n148), .O(n23)
         );
  AOI22S U157 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n1501), .O(
        n22) );
  ND2 U158 ( .I1(n23), .I2(n22), .O(n24) );
  MOAI1S U159 ( .A1(N15), .A2(n25), .B1(n24), .B2(N15), .O(N53) );
  AOI22S U160 ( .A1(buffer[27]), .A2(n149), .B1(buffer[11]), .B2(n148), .O(n27) );
  AOI22S U161 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n1501), .O(
        n26) );
  AN2 U162 ( .I1(n27), .I2(n26), .O(n41) );
  AOI22S U163 ( .A1(buffer[19]), .A2(n149), .B1(buffer[3]), .B2(n148), .O(n30)
         );
  AOI22S U164 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n1501), .O(
        n28) );
  ND2 U165 ( .I1(n30), .I2(n28), .O(n37) );
  MOAI1S U166 ( .A1(N15), .A2(n41), .B1(n37), .B2(N15), .O(N52) );
  AOI22S U167 ( .A1(buffer[28]), .A2(n149), .B1(buffer[12]), .B2(n148), .O(
        n129) );
  AOI22S U168 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n1501), .O(
        n128) );
  AN2 U169 ( .I1(n129), .I2(n128), .O(n133) );
  AOI22S U170 ( .A1(buffer[20]), .A2(n149), .B1(buffer[4]), .B2(n148), .O(n131) );
  AOI22S U171 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n1501), .O(
        n130) );
  ND2 U172 ( .I1(n131), .I2(n130), .O(n132) );
  MOAI1S U173 ( .A1(N15), .A2(n133), .B1(n132), .B2(N15), .O(N51) );
  AOI22S U174 ( .A1(buffer[29]), .A2(n149), .B1(buffer[13]), .B2(n148), .O(
        n135) );
  AOI22S U175 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n1501), .O(
        n134) );
  AN2 U176 ( .I1(n135), .I2(n134), .O(n139) );
  AOI22S U177 ( .A1(buffer[21]), .A2(n149), .B1(buffer[5]), .B2(n148), .O(n137) );
  AOI22S U178 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n1501), .O(
        n136) );
  ND2 U179 ( .I1(n137), .I2(n136), .O(n138) );
  MOAI1S U180 ( .A1(N15), .A2(n139), .B1(n138), .B2(N15), .O(N50) );
  AOI22S U181 ( .A1(buffer[30]), .A2(n149), .B1(buffer[14]), .B2(n148), .O(
        n141) );
  AOI22S U182 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n1501), .O(
        n140) );
  AN2 U183 ( .I1(n141), .I2(n140), .O(n145) );
  AOI22S U184 ( .A1(buffer[22]), .A2(n149), .B1(buffer[6]), .B2(n148), .O(n143) );
  AOI22S U185 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n1501), .O(
        n142) );
  ND2 U186 ( .I1(n143), .I2(n142), .O(n144) );
  MOAI1S U187 ( .A1(N15), .A2(n145), .B1(n144), .B2(N15), .O(N49) );
  AOI22S U188 ( .A1(buffer[23]), .A2(n149), .B1(buffer[7]), .B2(n148), .O(n147) );
  AOI22S U189 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n1501), .O(
        n146) );
  AN2 U190 ( .I1(n147), .I2(n146), .O(n155) );
  AOI22S U191 ( .A1(buffer[31]), .A2(n149), .B1(buffer[15]), .B2(n148), .O(
        n153) );
  AOI22S U192 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n1501), .O(
        n152) );
  ND2 U193 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U194 ( .A1(n155), .A2(n171), .B1(n154), .B2(n171), .O(N48) );
endmodule


module sync_fifo_4 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n12, n1500, n18, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n30, n37, n41, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n1501, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  AO22 U6 ( .A1(data_out[1]), .A2(n280), .B1(N54), .B2(n170), .O(n257) );
  AO22 U7 ( .A1(data_out[2]), .A2(n280), .B1(N53), .B2(n170), .O(n256) );
  AO22 U8 ( .A1(data_out[3]), .A2(n280), .B1(N52), .B2(n170), .O(n255) );
  AO22 U9 ( .A1(data_out[4]), .A2(n280), .B1(N51), .B2(n170), .O(n254) );
  AO22 U10 ( .A1(data_out[5]), .A2(n280), .B1(N50), .B2(n170), .O(n253) );
  AO22 U11 ( .A1(data_out[6]), .A2(n280), .B1(N49), .B2(n170), .O(n252) );
  AO22 U12 ( .A1(data_out[7]), .A2(n280), .B1(N48), .B2(n170), .O(n251) );
  AO22 U13 ( .A1(data_out[0]), .A2(n280), .B1(N55), .B2(n170), .O(n250) );
  ND2 U80 ( .I1(n282), .I2(n172), .O(n281) );
  ND2 U98 ( .I1(n282), .I2(wr_ptr[0]), .O(n283) );
  AN2 U99 ( .I1(w_en), .I2(n272), .O(n282) );
  AO12 U105 ( .B1(N17), .B2(N16), .A1(n269), .O(n271) );
  ND2 U106 ( .I1(n170), .I2(N15), .O(n269) );
  ND2 U114 ( .I1(n263), .I2(n262), .O(n267) );
  OR3 U116 ( .I1(n265), .I2(N16), .I3(n173), .O(n263) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n183), .CK(clk), .RB(n161), .Q(N15) );
  QDFFRBN data_out_reg_7_ ( .D(n251), .CK(clk), .RB(n160), .Q(data_out[7]) );
  QDFFRBN data_out_reg_6_ ( .D(n252), .CK(clk), .RB(n161), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n253), .CK(clk), .RB(n158), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n254), .CK(clk), .RB(n159), .Q(data_out[4]) );
  QDFFRBN data_out_reg_3_ ( .D(n255), .CK(clk), .RB(n160), .Q(data_out[3]) );
  QDFFRBN data_out_reg_2_ ( .D(n256), .CK(clk), .RB(n161), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n257), .CK(clk), .RB(n161), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n250), .CK(clk), .RB(n161), .Q(data_out[0]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n185), .CK(clk), .RB(n161), .Q(N17) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n184), .CK(clk), .RB(rst), .Q(N16) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n258), .CK(clk), .RB(rst), .Q(wr_ptr[0]) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n259), .CK(clk), .RB(n167), .Q(wr_ptr[1]) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n260), .CK(clk), .RB(n167), .Q(wr_ptr[2]) );
  QDFFRBN buffer_reg_0__7_ ( .D(n243), .CK(clk), .RB(n165), .Q(buffer[63]) );
  QDFFRBN buffer_reg_0__6_ ( .D(n249), .CK(clk), .RB(n166), .Q(buffer[62]) );
  QDFFRBN buffer_reg_0__5_ ( .D(n248), .CK(clk), .RB(n166), .Q(buffer[61]) );
  QDFFRBN buffer_reg_0__4_ ( .D(n247), .CK(clk), .RB(n166), .Q(buffer[60]) );
  QDFFRBN buffer_reg_0__3_ ( .D(n246), .CK(clk), .RB(n166), .Q(buffer[59]) );
  QDFFRBN buffer_reg_0__2_ ( .D(n245), .CK(clk), .RB(n165), .Q(buffer[58]) );
  QDFFRBN buffer_reg_0__1_ ( .D(n244), .CK(clk), .RB(n165), .Q(buffer[57]) );
  QDFFRBN buffer_reg_0__0_ ( .D(n242), .CK(clk), .RB(n165), .Q(buffer[56]) );
  QDFFRBN buffer_reg_6__7_ ( .D(n195), .CK(clk), .RB(n162), .Q(buffer[15]) );
  QDFFRBN buffer_reg_6__6_ ( .D(n201), .CK(clk), .RB(n163), .Q(buffer[14]) );
  QDFFRBN buffer_reg_6__5_ ( .D(n200), .CK(clk), .RB(n163), .Q(buffer[13]) );
  QDFFRBN buffer_reg_6__4_ ( .D(n199), .CK(clk), .RB(n163), .Q(buffer[12]) );
  QDFFRBN buffer_reg_6__3_ ( .D(n198), .CK(clk), .RB(n163), .Q(buffer[11]) );
  QDFFRBN buffer_reg_6__2_ ( .D(n197), .CK(clk), .RB(n163), .Q(buffer[10]) );
  QDFFRBN buffer_reg_6__1_ ( .D(n196), .CK(clk), .RB(n162), .Q(buffer[9]) );
  QDFFRBN buffer_reg_6__0_ ( .D(n194), .CK(clk), .RB(n162), .Q(buffer[8]) );
  QDFFRBN buffer_reg_4__7_ ( .D(n211), .CK(clk), .RB(n164), .Q(buffer[31]) );
  QDFFRBN buffer_reg_4__6_ ( .D(n217), .CK(clk), .RB(n164), .Q(buffer[30]) );
  QDFFRBN buffer_reg_4__5_ ( .D(n216), .CK(clk), .RB(n164), .Q(buffer[29]) );
  QDFFRBN buffer_reg_4__4_ ( .D(n215), .CK(clk), .RB(n164), .Q(buffer[28]) );
  QDFFRBN buffer_reg_4__3_ ( .D(n214), .CK(clk), .RB(n164), .Q(buffer[27]) );
  QDFFRBN buffer_reg_4__2_ ( .D(n213), .CK(clk), .RB(n164), .Q(buffer[26]) );
  QDFFRBN buffer_reg_4__1_ ( .D(n212), .CK(clk), .RB(n164), .Q(buffer[25]) );
  QDFFRBN buffer_reg_4__0_ ( .D(n210), .CK(clk), .RB(n164), .Q(buffer[24]) );
  QDFFRBN buffer_reg_2__7_ ( .D(n227), .CK(clk), .RB(n167), .Q(buffer[47]) );
  QDFFRBN buffer_reg_2__6_ ( .D(n233), .CK(clk), .RB(n167), .Q(buffer[46]) );
  QDFFRBN buffer_reg_2__5_ ( .D(n232), .CK(clk), .RB(n167), .Q(buffer[45]) );
  QDFFRBN buffer_reg_2__4_ ( .D(n231), .CK(clk), .RB(n167), .Q(buffer[44]) );
  QDFFRBN buffer_reg_2__3_ ( .D(n230), .CK(clk), .RB(n167), .Q(buffer[43]) );
  QDFFRBN buffer_reg_2__2_ ( .D(n229), .CK(clk), .RB(n167), .Q(buffer[42]) );
  QDFFRBN buffer_reg_2__1_ ( .D(n228), .CK(clk), .RB(n167), .Q(buffer[41]) );
  QDFFRBN buffer_reg_2__0_ ( .D(n226), .CK(clk), .RB(n167), .Q(buffer[40]) );
  QDFFRBN buffer_reg_7__7_ ( .D(n187), .CK(clk), .RB(n162), .Q(buffer[7]) );
  QDFFRBN buffer_reg_7__6_ ( .D(n193), .CK(clk), .RB(n162), .Q(buffer[6]) );
  QDFFRBN buffer_reg_7__5_ ( .D(n192), .CK(clk), .RB(n162), .Q(buffer[5]) );
  QDFFRBN buffer_reg_7__4_ ( .D(n191), .CK(clk), .RB(n162), .Q(buffer[4]) );
  QDFFRBN buffer_reg_7__3_ ( .D(n190), .CK(clk), .RB(n162), .Q(buffer[3]) );
  QDFFRBN buffer_reg_7__2_ ( .D(n189), .CK(clk), .RB(n162), .Q(buffer[2]) );
  QDFFRBN buffer_reg_7__1_ ( .D(n188), .CK(clk), .RB(n162), .Q(buffer[1]) );
  QDFFRBN buffer_reg_7__0_ ( .D(n186), .CK(clk), .RB(n162), .Q(buffer[0]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n203), .CK(clk), .RB(n163), .Q(buffer[23]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n209), .CK(clk), .RB(n164), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n208), .CK(clk), .RB(n164), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n207), .CK(clk), .RB(n163), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n206), .CK(clk), .RB(n163), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n205), .CK(clk), .RB(n163), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n204), .CK(clk), .RB(n163), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n202), .CK(clk), .RB(n163), .Q(buffer[16]) );
  QDFFRBN buffer_reg_1__7_ ( .D(n235), .CK(clk), .RB(n165), .Q(buffer[55]) );
  QDFFRBN buffer_reg_1__6_ ( .D(n241), .CK(clk), .RB(n165), .Q(buffer[54]) );
  QDFFRBN buffer_reg_1__5_ ( .D(n240), .CK(clk), .RB(n165), .Q(buffer[53]) );
  QDFFRBN buffer_reg_1__4_ ( .D(n239), .CK(clk), .RB(n165), .Q(buffer[52]) );
  QDFFRBN buffer_reg_1__3_ ( .D(n238), .CK(clk), .RB(n165), .Q(buffer[51]) );
  QDFFRBN buffer_reg_1__2_ ( .D(n237), .CK(clk), .RB(n165), .Q(buffer[50]) );
  QDFFRBN buffer_reg_1__1_ ( .D(n236), .CK(clk), .RB(n165), .Q(buffer[49]) );
  QDFFRBN buffer_reg_1__0_ ( .D(n234), .CK(clk), .RB(n164), .Q(buffer[48]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n219), .CK(clk), .RB(n166), .Q(buffer[39]) );
  QDFFRBN buffer_reg_3__6_ ( .D(n225), .CK(clk), .RB(n167), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n224), .CK(clk), .RB(n166), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n223), .CK(clk), .RB(n166), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n222), .CK(clk), .RB(n166), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n221), .CK(clk), .RB(n166), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n220), .CK(clk), .RB(n166), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n218), .CK(clk), .RB(n166), .Q(buffer[32]) );
  INV1S U3 ( .I(N17), .O(n156) );
  INV1S U4 ( .I(n283), .O(n168) );
  INV1S U5 ( .I(n281), .O(n169) );
  NR2P U14 ( .I1(N16), .I2(N17), .O(n151) );
  XNR2HS U15 ( .I1(N17), .I2(wr_ptr[2]), .O(n265) );
  XOR2HS U16 ( .I1(N16), .I2(n173), .O(n264) );
  INV1S U17 ( .I(data_in[0]), .O(n182) );
  INV1S U18 ( .I(data_in[1]), .O(n181) );
  INV1S U19 ( .I(data_in[2]), .O(n180) );
  INV1S U20 ( .I(data_in[3]), .O(n179) );
  INV1S U21 ( .I(data_in[4]), .O(n178) );
  INV1S U22 ( .I(data_in[5]), .O(n177) );
  INV1S U23 ( .I(data_in[6]), .O(n176) );
  INV1S U24 ( .I(data_in[7]), .O(n175) );
  NR2 U25 ( .I1(n283), .I2(n173), .O(n285) );
  INV1S U26 ( .I(wr_ptr[2]), .O(n174) );
  INV1S U27 ( .I(wr_ptr[1]), .O(n173) );
  INV1S U28 ( .I(wr_ptr[0]), .O(n172) );
  INV1S U29 ( .I(n280), .O(n170) );
  ND2 U30 ( .I1(r_en), .I2(n268), .O(n280) );
  ND3 U31 ( .I1(n265), .I2(n264), .I3(n261), .O(n268) );
  XOR2HS U32 ( .I1(n171), .I2(wr_ptr[0]), .O(n261) );
  AOI13HS U33 ( .B1(n267), .B2(n171), .B3(wr_ptr[0]), .A1(n266), .O(n272) );
  AN4B1S U34 ( .I1(n265), .I2(n172), .I3(n264), .B1(n171), .O(n266) );
  ND3 U35 ( .I1(N16), .I2(n173), .I3(n265), .O(n262) );
  MOAI1S U36 ( .A1(n182), .A2(n284), .B1(buffer[32]), .B2(n284), .O(n218) );
  MOAI1S U37 ( .A1(n181), .A2(n284), .B1(buffer[33]), .B2(n284), .O(n220) );
  MOAI1S U38 ( .A1(n180), .A2(n284), .B1(buffer[34]), .B2(n284), .O(n221) );
  MOAI1S U39 ( .A1(n179), .A2(n284), .B1(buffer[35]), .B2(n284), .O(n222) );
  MOAI1S U40 ( .A1(n178), .A2(n284), .B1(buffer[36]), .B2(n284), .O(n223) );
  MOAI1S U41 ( .A1(n177), .A2(n284), .B1(buffer[37]), .B2(n284), .O(n224) );
  MOAI1S U42 ( .A1(n176), .A2(n284), .B1(buffer[38]), .B2(n284), .O(n225) );
  MOAI1S U43 ( .A1(n175), .A2(n284), .B1(buffer[39]), .B2(n284), .O(n219) );
  MOAI1S U44 ( .A1(n182), .A2(n278), .B1(buffer[48]), .B2(n278), .O(n234) );
  MOAI1S U45 ( .A1(n181), .A2(n278), .B1(buffer[49]), .B2(n278), .O(n236) );
  MOAI1S U46 ( .A1(n180), .A2(n278), .B1(buffer[50]), .B2(n278), .O(n237) );
  MOAI1S U47 ( .A1(n179), .A2(n278), .B1(buffer[51]), .B2(n278), .O(n238) );
  MOAI1S U48 ( .A1(n178), .A2(n278), .B1(buffer[52]), .B2(n278), .O(n239) );
  MOAI1S U49 ( .A1(n177), .A2(n278), .B1(buffer[53]), .B2(n278), .O(n240) );
  MOAI1S U50 ( .A1(n176), .A2(n278), .B1(buffer[54]), .B2(n278), .O(n241) );
  MOAI1S U51 ( .A1(n175), .A2(n278), .B1(buffer[55]), .B2(n278), .O(n235) );
  MOAI1S U52 ( .A1(n182), .A2(n275), .B1(buffer[16]), .B2(n275), .O(n202) );
  MOAI1S U53 ( .A1(n181), .A2(n275), .B1(buffer[17]), .B2(n275), .O(n204) );
  MOAI1S U54 ( .A1(n180), .A2(n275), .B1(buffer[18]), .B2(n275), .O(n205) );
  MOAI1S U55 ( .A1(n179), .A2(n275), .B1(buffer[19]), .B2(n275), .O(n206) );
  MOAI1S U56 ( .A1(n178), .A2(n275), .B1(buffer[20]), .B2(n275), .O(n207) );
  MOAI1S U57 ( .A1(n177), .A2(n275), .B1(buffer[21]), .B2(n275), .O(n208) );
  MOAI1S U58 ( .A1(n176), .A2(n275), .B1(buffer[22]), .B2(n275), .O(n209) );
  MOAI1S U59 ( .A1(n175), .A2(n275), .B1(buffer[23]), .B2(n275), .O(n203) );
  MOAI1S U60 ( .A1(n182), .A2(n273), .B1(buffer[0]), .B2(n273), .O(n186) );
  MOAI1S U61 ( .A1(n181), .A2(n273), .B1(buffer[1]), .B2(n273), .O(n188) );
  MOAI1S U62 ( .A1(n180), .A2(n273), .B1(buffer[2]), .B2(n273), .O(n189) );
  MOAI1S U63 ( .A1(n179), .A2(n273), .B1(buffer[3]), .B2(n273), .O(n190) );
  MOAI1S U64 ( .A1(n178), .A2(n273), .B1(buffer[4]), .B2(n273), .O(n191) );
  MOAI1S U65 ( .A1(n177), .A2(n273), .B1(buffer[5]), .B2(n273), .O(n192) );
  MOAI1S U66 ( .A1(n176), .A2(n273), .B1(buffer[6]), .B2(n273), .O(n193) );
  MOAI1S U67 ( .A1(n175), .A2(n273), .B1(buffer[7]), .B2(n273), .O(n187) );
  MOAI1S U68 ( .A1(n182), .A2(n277), .B1(buffer[40]), .B2(n277), .O(n226) );
  MOAI1S U69 ( .A1(n181), .A2(n277), .B1(buffer[41]), .B2(n277), .O(n228) );
  MOAI1S U70 ( .A1(n180), .A2(n277), .B1(buffer[42]), .B2(n277), .O(n229) );
  MOAI1S U71 ( .A1(n179), .A2(n277), .B1(buffer[43]), .B2(n277), .O(n230) );
  MOAI1S U72 ( .A1(n178), .A2(n277), .B1(buffer[44]), .B2(n277), .O(n231) );
  MOAI1S U73 ( .A1(n177), .A2(n277), .B1(buffer[45]), .B2(n277), .O(n232) );
  MOAI1S U74 ( .A1(n176), .A2(n277), .B1(buffer[46]), .B2(n277), .O(n233) );
  MOAI1S U75 ( .A1(n175), .A2(n277), .B1(buffer[47]), .B2(n277), .O(n227) );
  MOAI1S U76 ( .A1(n182), .A2(n276), .B1(buffer[24]), .B2(n276), .O(n210) );
  MOAI1S U77 ( .A1(n181), .A2(n276), .B1(buffer[25]), .B2(n276), .O(n212) );
  MOAI1S U78 ( .A1(n180), .A2(n276), .B1(buffer[26]), .B2(n276), .O(n213) );
  MOAI1S U79 ( .A1(n179), .A2(n276), .B1(buffer[27]), .B2(n276), .O(n214) );
  MOAI1S U81 ( .A1(n178), .A2(n276), .B1(buffer[28]), .B2(n276), .O(n215) );
  MOAI1S U82 ( .A1(n177), .A2(n276), .B1(buffer[29]), .B2(n276), .O(n216) );
  MOAI1S U83 ( .A1(n176), .A2(n276), .B1(buffer[30]), .B2(n276), .O(n217) );
  BUF1CK U84 ( .I(n159), .O(n164) );
  MOAI1S U85 ( .A1(n175), .A2(n276), .B1(buffer[31]), .B2(n276), .O(n211) );
  MOAI1S U86 ( .A1(n182), .A2(n274), .B1(buffer[8]), .B2(n274), .O(n194) );
  MOAI1S U87 ( .A1(n181), .A2(n274), .B1(buffer[9]), .B2(n274), .O(n196) );
  MOAI1S U88 ( .A1(n180), .A2(n274), .B1(buffer[10]), .B2(n274), .O(n197) );
  MOAI1S U89 ( .A1(n179), .A2(n274), .B1(buffer[11]), .B2(n274), .O(n198) );
  MOAI1S U90 ( .A1(n178), .A2(n274), .B1(buffer[12]), .B2(n274), .O(n199) );
  MOAI1S U91 ( .A1(n177), .A2(n274), .B1(buffer[13]), .B2(n274), .O(n200) );
  BUF1CK U92 ( .I(n158), .O(n163) );
  MOAI1S U93 ( .A1(n176), .A2(n274), .B1(buffer[14]), .B2(n274), .O(n201) );
  BUF1CK U94 ( .I(n158), .O(n162) );
  MOAI1S U95 ( .A1(n175), .A2(n274), .B1(buffer[15]), .B2(n274), .O(n195) );
  MOAI1S U96 ( .A1(n279), .A2(n182), .B1(buffer[56]), .B2(n279), .O(n242) );
  MOAI1S U97 ( .A1(n279), .A2(n181), .B1(buffer[57]), .B2(n279), .O(n244) );
  MOAI1S U100 ( .A1(n279), .A2(n180), .B1(buffer[58]), .B2(n279), .O(n245) );
  MOAI1S U101 ( .A1(n279), .A2(n179), .B1(buffer[59]), .B2(n279), .O(n246) );
  MOAI1S U102 ( .A1(n279), .A2(n178), .B1(buffer[60]), .B2(n279), .O(n247) );
  MOAI1S U103 ( .A1(n279), .A2(n177), .B1(buffer[61]), .B2(n279), .O(n248) );
  BUF1CK U104 ( .I(n160), .O(n166) );
  MOAI1S U107 ( .A1(n279), .A2(n176), .B1(buffer[62]), .B2(n279), .O(n249) );
  BUF1CK U108 ( .I(n159), .O(n165) );
  MOAI1S U109 ( .A1(n279), .A2(n175), .B1(buffer[63]), .B2(n279), .O(n243) );
  OAI12HS U110 ( .B1(n285), .B2(n174), .A1(n284), .O(n260) );
  BUF1CK U111 ( .I(n160), .O(n167) );
  XOR2HS U112 ( .I1(n173), .I2(n283), .O(n259) );
  OAI12HS U113 ( .B1(n282), .B2(n172), .A1(n281), .O(n258) );
  MOAI1S U115 ( .A1(N16), .A2(n271), .B1(n269), .B2(N16), .O(n184) );
  MOAI1S U117 ( .A1(n157), .A2(n271), .B1(n270), .B2(N17), .O(n185) );
  OR2 U118 ( .I1(n157), .I2(n269), .O(n270) );
  XOR2HS U119 ( .I1(n171), .I2(n280), .O(n183) );
  INV1S U120 ( .I(n268), .O(empty) );
  INV1S U121 ( .I(n272), .O(full) );
  BUF1CK U122 ( .I(rst), .O(n161) );
  BUF1CK U123 ( .I(rst), .O(n160) );
  BUF1CK U124 ( .I(rst), .O(n159) );
  BUF1S U125 ( .I(rst), .O(n158) );
  NR2P U126 ( .I1(n156), .I2(n157), .O(n148) );
  ND2 U127 ( .I1(n285), .I2(n174), .O(n284) );
  ND3 U128 ( .I1(n173), .I2(n174), .I3(n168), .O(n278) );
  ND3 U129 ( .I1(wr_ptr[2]), .I2(n173), .I3(n168), .O(n275) );
  ND2 U130 ( .I1(n285), .I2(wr_ptr[2]), .O(n273) );
  ND3 U131 ( .I1(wr_ptr[1]), .I2(n174), .I3(n169), .O(n277) );
  ND3 U132 ( .I1(n173), .I2(n174), .I3(n169), .O(n279) );
  ND3 U133 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n169), .O(n274) );
  ND3 U134 ( .I1(wr_ptr[2]), .I2(n173), .I3(n169), .O(n276) );
  NR2P U135 ( .I1(n157), .I2(N17), .O(n1501) );
  NR2P U136 ( .I1(n156), .I2(N16), .O(n149) );
  INV1S U137 ( .I(N16), .O(n157) );
  INV1S U138 ( .I(N15), .O(n171) );
  AOI22S U139 ( .A1(buffer[24]), .A2(n149), .B1(buffer[8]), .B2(n148), .O(n2)
         );
  AOI22S U140 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n1501), .O(n1) );
  AN2 U141 ( .I1(n2), .I2(n1), .O(n6) );
  AOI22S U142 ( .A1(buffer[16]), .A2(n149), .B1(buffer[0]), .B2(n148), .O(n4)
         );
  AOI22S U143 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n1501), .O(n3) );
  ND2 U144 ( .I1(n4), .I2(n3), .O(n5) );
  MOAI1S U145 ( .A1(N15), .A2(n6), .B1(n5), .B2(N15), .O(N55) );
  AOI22S U146 ( .A1(buffer[25]), .A2(n149), .B1(buffer[9]), .B2(n148), .O(n8)
         );
  AOI22S U147 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n1501), .O(n7) );
  AN2 U148 ( .I1(n8), .I2(n7), .O(n18) );
  AOI22S U149 ( .A1(buffer[17]), .A2(n149), .B1(buffer[1]), .B2(n148), .O(n12)
         );
  AOI22S U150 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n1501), .O(
        n10) );
  ND2 U151 ( .I1(n12), .I2(n10), .O(n1500) );
  MOAI1S U152 ( .A1(N15), .A2(n18), .B1(n1500), .B2(N15), .O(N54) );
  AOI22S U153 ( .A1(buffer[26]), .A2(n149), .B1(buffer[10]), .B2(n148), .O(n21) );
  AOI22S U154 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n1501), .O(
        n20) );
  AN2 U155 ( .I1(n21), .I2(n20), .O(n25) );
  AOI22S U156 ( .A1(buffer[18]), .A2(n149), .B1(buffer[2]), .B2(n148), .O(n23)
         );
  AOI22S U157 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n1501), .O(
        n22) );
  ND2 U158 ( .I1(n23), .I2(n22), .O(n24) );
  MOAI1S U159 ( .A1(N15), .A2(n25), .B1(n24), .B2(N15), .O(N53) );
  AOI22S U160 ( .A1(buffer[27]), .A2(n149), .B1(buffer[11]), .B2(n148), .O(n27) );
  AOI22S U161 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n1501), .O(
        n26) );
  AN2 U162 ( .I1(n27), .I2(n26), .O(n41) );
  AOI22S U163 ( .A1(buffer[19]), .A2(n149), .B1(buffer[3]), .B2(n148), .O(n30)
         );
  AOI22S U164 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n1501), .O(
        n28) );
  ND2 U165 ( .I1(n30), .I2(n28), .O(n37) );
  MOAI1S U166 ( .A1(N15), .A2(n41), .B1(n37), .B2(N15), .O(N52) );
  AOI22S U167 ( .A1(buffer[28]), .A2(n149), .B1(buffer[12]), .B2(n148), .O(
        n129) );
  AOI22S U168 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n1501), .O(
        n128) );
  AN2 U169 ( .I1(n129), .I2(n128), .O(n133) );
  AOI22S U170 ( .A1(buffer[20]), .A2(n149), .B1(buffer[4]), .B2(n148), .O(n131) );
  AOI22S U171 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n1501), .O(
        n130) );
  ND2 U172 ( .I1(n131), .I2(n130), .O(n132) );
  MOAI1S U173 ( .A1(N15), .A2(n133), .B1(n132), .B2(N15), .O(N51) );
  AOI22S U174 ( .A1(buffer[29]), .A2(n149), .B1(buffer[13]), .B2(n148), .O(
        n135) );
  AOI22S U175 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n1501), .O(
        n134) );
  AN2 U176 ( .I1(n135), .I2(n134), .O(n139) );
  AOI22S U177 ( .A1(buffer[21]), .A2(n149), .B1(buffer[5]), .B2(n148), .O(n137) );
  AOI22S U178 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n1501), .O(
        n136) );
  ND2 U179 ( .I1(n137), .I2(n136), .O(n138) );
  MOAI1S U180 ( .A1(N15), .A2(n139), .B1(n138), .B2(N15), .O(N50) );
  AOI22S U181 ( .A1(buffer[30]), .A2(n149), .B1(buffer[14]), .B2(n148), .O(
        n141) );
  AOI22S U182 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n1501), .O(
        n140) );
  AN2 U183 ( .I1(n141), .I2(n140), .O(n145) );
  AOI22S U184 ( .A1(buffer[22]), .A2(n149), .B1(buffer[6]), .B2(n148), .O(n143) );
  AOI22S U185 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n1501), .O(
        n142) );
  ND2 U186 ( .I1(n143), .I2(n142), .O(n144) );
  MOAI1S U187 ( .A1(N15), .A2(n145), .B1(n144), .B2(N15), .O(N49) );
  AOI22S U188 ( .A1(buffer[23]), .A2(n149), .B1(buffer[7]), .B2(n148), .O(n147) );
  AOI22S U189 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n1501), .O(
        n146) );
  AN2 U190 ( .I1(n147), .I2(n146), .O(n155) );
  AOI22S U191 ( .A1(buffer[31]), .A2(n149), .B1(buffer[15]), .B2(n148), .O(
        n153) );
  AOI22S U192 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n1501), .O(
        n152) );
  ND2 U193 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U194 ( .A1(n155), .A2(n171), .B1(n154), .B2(n171), .O(N48) );
endmodule


module sync_fifo_3 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n12, n1500, n18, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n30, n37, n41, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n1501, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  AO22 U6 ( .A1(data_out[1]), .A2(n279), .B1(N54), .B2(n169), .O(n256) );
  AO22 U7 ( .A1(data_out[2]), .A2(n279), .B1(N53), .B2(n169), .O(n255) );
  AO22 U8 ( .A1(data_out[3]), .A2(n279), .B1(N52), .B2(n169), .O(n254) );
  AO22 U9 ( .A1(data_out[4]), .A2(n279), .B1(N51), .B2(n169), .O(n253) );
  AO22 U10 ( .A1(data_out[5]), .A2(n279), .B1(N50), .B2(n169), .O(n252) );
  AO22 U11 ( .A1(data_out[6]), .A2(n279), .B1(N49), .B2(n169), .O(n251) );
  AO22 U12 ( .A1(data_out[7]), .A2(n279), .B1(N48), .B2(n169), .O(n250) );
  AO22 U13 ( .A1(data_out[0]), .A2(n279), .B1(N55), .B2(n169), .O(n249) );
  ND2 U80 ( .I1(n281), .I2(n171), .O(n280) );
  ND2 U98 ( .I1(n281), .I2(wr_ptr[0]), .O(n282) );
  AN2 U99 ( .I1(w_en), .I2(n271), .O(n281) );
  AO12 U105 ( .B1(N17), .B2(N16), .A1(n268), .O(n270) );
  ND2 U106 ( .I1(n169), .I2(N15), .O(n268) );
  ND2 U114 ( .I1(n262), .I2(n261), .O(n266) );
  OR3 U116 ( .I1(n264), .I2(N16), .I3(n172), .O(n262) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n182), .CK(clk), .RB(n161), .Q(N15) );
  QDFFRBN data_out_reg_7_ ( .D(n250), .CK(clk), .RB(n160), .Q(data_out[7]) );
  QDFFRBN data_out_reg_6_ ( .D(n251), .CK(clk), .RB(n161), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n252), .CK(clk), .RB(n161), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n253), .CK(clk), .RB(n161), .Q(data_out[4]) );
  QDFFRBN data_out_reg_3_ ( .D(n254), .CK(clk), .RB(n161), .Q(data_out[3]) );
  QDFFRBN data_out_reg_2_ ( .D(n255), .CK(clk), .RB(rst), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n256), .CK(clk), .RB(rst), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n249), .CK(clk), .RB(rst), .Q(data_out[0]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n184), .CK(clk), .RB(rst), .Q(N17) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n183), .CK(clk), .RB(rst), .Q(N16) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n257), .CK(clk), .RB(rst), .Q(wr_ptr[0]) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n258), .CK(clk), .RB(n166), .Q(wr_ptr[1]) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n259), .CK(clk), .RB(n166), .Q(wr_ptr[2]) );
  QDFFRBN buffer_reg_0__7_ ( .D(n242), .CK(clk), .RB(n158), .Q(buffer[63]) );
  QDFFRBN buffer_reg_0__6_ ( .D(n248), .CK(clk), .RB(n165), .Q(buffer[62]) );
  QDFFRBN buffer_reg_0__5_ ( .D(n247), .CK(clk), .RB(n165), .Q(buffer[61]) );
  QDFFRBN buffer_reg_0__4_ ( .D(n246), .CK(clk), .RB(n165), .Q(buffer[60]) );
  QDFFRBN buffer_reg_0__3_ ( .D(n245), .CK(clk), .RB(n165), .Q(buffer[59]) );
  QDFFRBN buffer_reg_0__2_ ( .D(n244), .CK(clk), .RB(n159), .Q(buffer[58]) );
  QDFFRBN buffer_reg_0__1_ ( .D(n243), .CK(clk), .RB(n158), .Q(buffer[57]) );
  QDFFRBN buffer_reg_0__0_ ( .D(n241), .CK(clk), .RB(n159), .Q(buffer[56]) );
  QDFFRBN buffer_reg_6__7_ ( .D(n194), .CK(clk), .RB(n162), .Q(buffer[15]) );
  QDFFRBN buffer_reg_6__6_ ( .D(n200), .CK(clk), .RB(n163), .Q(buffer[14]) );
  QDFFRBN buffer_reg_6__5_ ( .D(n199), .CK(clk), .RB(n163), .Q(buffer[13]) );
  QDFFRBN buffer_reg_6__4_ ( .D(n198), .CK(clk), .RB(n163), .Q(buffer[12]) );
  QDFFRBN buffer_reg_6__3_ ( .D(n197), .CK(clk), .RB(n163), .Q(buffer[11]) );
  QDFFRBN buffer_reg_6__2_ ( .D(n196), .CK(clk), .RB(n163), .Q(buffer[10]) );
  QDFFRBN buffer_reg_6__1_ ( .D(n195), .CK(clk), .RB(n162), .Q(buffer[9]) );
  QDFFRBN buffer_reg_6__0_ ( .D(n193), .CK(clk), .RB(n162), .Q(buffer[8]) );
  QDFFRBN buffer_reg_4__7_ ( .D(n210), .CK(clk), .RB(n164), .Q(buffer[31]) );
  QDFFRBN buffer_reg_4__6_ ( .D(n216), .CK(clk), .RB(n164), .Q(buffer[30]) );
  QDFFRBN buffer_reg_4__5_ ( .D(n215), .CK(clk), .RB(n164), .Q(buffer[29]) );
  QDFFRBN buffer_reg_4__4_ ( .D(n214), .CK(clk), .RB(n164), .Q(buffer[28]) );
  QDFFRBN buffer_reg_4__3_ ( .D(n213), .CK(clk), .RB(n164), .Q(buffer[27]) );
  QDFFRBN buffer_reg_4__2_ ( .D(n212), .CK(clk), .RB(n164), .Q(buffer[26]) );
  QDFFRBN buffer_reg_4__1_ ( .D(n211), .CK(clk), .RB(n164), .Q(buffer[25]) );
  QDFFRBN buffer_reg_4__0_ ( .D(n209), .CK(clk), .RB(n164), .Q(buffer[24]) );
  QDFFRBN buffer_reg_2__7_ ( .D(n226), .CK(clk), .RB(n166), .Q(buffer[47]) );
  QDFFRBN buffer_reg_2__6_ ( .D(n232), .CK(clk), .RB(n166), .Q(buffer[46]) );
  QDFFRBN buffer_reg_2__5_ ( .D(n231), .CK(clk), .RB(n166), .Q(buffer[45]) );
  QDFFRBN buffer_reg_2__4_ ( .D(n230), .CK(clk), .RB(n166), .Q(buffer[44]) );
  QDFFRBN buffer_reg_2__3_ ( .D(n229), .CK(clk), .RB(n166), .Q(buffer[43]) );
  QDFFRBN buffer_reg_2__2_ ( .D(n228), .CK(clk), .RB(n166), .Q(buffer[42]) );
  QDFFRBN buffer_reg_2__1_ ( .D(n227), .CK(clk), .RB(n166), .Q(buffer[41]) );
  QDFFRBN buffer_reg_2__0_ ( .D(n225), .CK(clk), .RB(n166), .Q(buffer[40]) );
  QDFFRBN buffer_reg_7__7_ ( .D(n186), .CK(clk), .RB(n162), .Q(buffer[7]) );
  QDFFRBN buffer_reg_7__6_ ( .D(n192), .CK(clk), .RB(n162), .Q(buffer[6]) );
  QDFFRBN buffer_reg_7__5_ ( .D(n191), .CK(clk), .RB(n162), .Q(buffer[5]) );
  QDFFRBN buffer_reg_7__4_ ( .D(n190), .CK(clk), .RB(n162), .Q(buffer[4]) );
  QDFFRBN buffer_reg_7__3_ ( .D(n189), .CK(clk), .RB(n162), .Q(buffer[3]) );
  QDFFRBN buffer_reg_7__2_ ( .D(n188), .CK(clk), .RB(n162), .Q(buffer[2]) );
  QDFFRBN buffer_reg_7__1_ ( .D(n187), .CK(clk), .RB(n162), .Q(buffer[1]) );
  QDFFRBN buffer_reg_7__0_ ( .D(n185), .CK(clk), .RB(n162), .Q(buffer[0]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n202), .CK(clk), .RB(n163), .Q(buffer[23]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n208), .CK(clk), .RB(n164), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n207), .CK(clk), .RB(n164), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n206), .CK(clk), .RB(n163), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n205), .CK(clk), .RB(n163), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n204), .CK(clk), .RB(n163), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n203), .CK(clk), .RB(n163), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n201), .CK(clk), .RB(n163), .Q(buffer[16]) );
  QDFFRBN buffer_reg_1__7_ ( .D(n234), .CK(clk), .RB(n158), .Q(buffer[55]) );
  QDFFRBN buffer_reg_1__6_ ( .D(n240), .CK(clk), .RB(n159), .Q(buffer[54]) );
  QDFFRBN buffer_reg_1__5_ ( .D(n239), .CK(clk), .RB(n159), .Q(buffer[53]) );
  QDFFRBN buffer_reg_1__4_ ( .D(n238), .CK(clk), .RB(n159), .Q(buffer[52]) );
  QDFFRBN buffer_reg_1__3_ ( .D(n237), .CK(clk), .RB(rst), .Q(buffer[51]) );
  QDFFRBN buffer_reg_1__2_ ( .D(n236), .CK(clk), .RB(rst), .Q(buffer[50]) );
  QDFFRBN buffer_reg_1__1_ ( .D(n235), .CK(clk), .RB(rst), .Q(buffer[49]) );
  QDFFRBN buffer_reg_1__0_ ( .D(n233), .CK(clk), .RB(n164), .Q(buffer[48]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n218), .CK(clk), .RB(n165), .Q(buffer[39]) );
  QDFFRBN buffer_reg_3__6_ ( .D(n224), .CK(clk), .RB(n166), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n223), .CK(clk), .RB(n165), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n222), .CK(clk), .RB(n165), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n221), .CK(clk), .RB(n165), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n220), .CK(clk), .RB(n165), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n219), .CK(clk), .RB(n165), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n217), .CK(clk), .RB(n165), .Q(buffer[32]) );
  INV1S U3 ( .I(N17), .O(n156) );
  INV1S U4 ( .I(n282), .O(n167) );
  INV1S U5 ( .I(n280), .O(n168) );
  NR2P U14 ( .I1(N16), .I2(N17), .O(n151) );
  XNR2HS U15 ( .I1(N17), .I2(wr_ptr[2]), .O(n264) );
  XOR2HS U16 ( .I1(N16), .I2(n172), .O(n263) );
  INV1S U17 ( .I(data_in[0]), .O(n181) );
  INV1S U18 ( .I(data_in[1]), .O(n180) );
  INV1S U19 ( .I(data_in[2]), .O(n179) );
  INV1S U20 ( .I(data_in[3]), .O(n178) );
  INV1S U21 ( .I(data_in[4]), .O(n177) );
  INV1S U22 ( .I(data_in[5]), .O(n176) );
  INV1S U23 ( .I(data_in[6]), .O(n175) );
  INV1S U24 ( .I(data_in[7]), .O(n174) );
  NR2 U25 ( .I1(n282), .I2(n172), .O(n284) );
  INV1S U26 ( .I(wr_ptr[2]), .O(n173) );
  INV1S U27 ( .I(wr_ptr[1]), .O(n172) );
  INV1S U28 ( .I(wr_ptr[0]), .O(n171) );
  INV1S U29 ( .I(n279), .O(n169) );
  ND2 U30 ( .I1(r_en), .I2(n267), .O(n279) );
  ND3 U31 ( .I1(n264), .I2(n263), .I3(n260), .O(n267) );
  XOR2HS U32 ( .I1(n170), .I2(wr_ptr[0]), .O(n260) );
  AOI13HS U33 ( .B1(n266), .B2(n170), .B3(wr_ptr[0]), .A1(n265), .O(n271) );
  AN4B1S U34 ( .I1(n264), .I2(n171), .I3(n263), .B1(n170), .O(n265) );
  ND3 U35 ( .I1(N16), .I2(n172), .I3(n264), .O(n261) );
  MOAI1S U36 ( .A1(n181), .A2(n283), .B1(buffer[32]), .B2(n283), .O(n217) );
  MOAI1S U37 ( .A1(n180), .A2(n283), .B1(buffer[33]), .B2(n283), .O(n219) );
  MOAI1S U38 ( .A1(n179), .A2(n283), .B1(buffer[34]), .B2(n283), .O(n220) );
  MOAI1S U39 ( .A1(n178), .A2(n283), .B1(buffer[35]), .B2(n283), .O(n221) );
  MOAI1S U40 ( .A1(n177), .A2(n283), .B1(buffer[36]), .B2(n283), .O(n222) );
  MOAI1S U41 ( .A1(n176), .A2(n283), .B1(buffer[37]), .B2(n283), .O(n223) );
  MOAI1S U42 ( .A1(n175), .A2(n283), .B1(buffer[38]), .B2(n283), .O(n224) );
  MOAI1S U43 ( .A1(n174), .A2(n283), .B1(buffer[39]), .B2(n283), .O(n218) );
  MOAI1S U44 ( .A1(n181), .A2(n277), .B1(buffer[48]), .B2(n277), .O(n233) );
  MOAI1S U45 ( .A1(n180), .A2(n277), .B1(buffer[49]), .B2(n277), .O(n235) );
  MOAI1S U46 ( .A1(n179), .A2(n277), .B1(buffer[50]), .B2(n277), .O(n236) );
  MOAI1S U47 ( .A1(n178), .A2(n277), .B1(buffer[51]), .B2(n277), .O(n237) );
  MOAI1S U48 ( .A1(n177), .A2(n277), .B1(buffer[52]), .B2(n277), .O(n238) );
  MOAI1S U49 ( .A1(n176), .A2(n277), .B1(buffer[53]), .B2(n277), .O(n239) );
  MOAI1S U50 ( .A1(n175), .A2(n277), .B1(buffer[54]), .B2(n277), .O(n240) );
  MOAI1S U51 ( .A1(n174), .A2(n277), .B1(buffer[55]), .B2(n277), .O(n234) );
  MOAI1S U52 ( .A1(n181), .A2(n274), .B1(buffer[16]), .B2(n274), .O(n201) );
  MOAI1S U53 ( .A1(n180), .A2(n274), .B1(buffer[17]), .B2(n274), .O(n203) );
  MOAI1S U54 ( .A1(n179), .A2(n274), .B1(buffer[18]), .B2(n274), .O(n204) );
  MOAI1S U55 ( .A1(n178), .A2(n274), .B1(buffer[19]), .B2(n274), .O(n205) );
  MOAI1S U56 ( .A1(n177), .A2(n274), .B1(buffer[20]), .B2(n274), .O(n206) );
  MOAI1S U57 ( .A1(n176), .A2(n274), .B1(buffer[21]), .B2(n274), .O(n207) );
  MOAI1S U58 ( .A1(n175), .A2(n274), .B1(buffer[22]), .B2(n274), .O(n208) );
  MOAI1S U59 ( .A1(n174), .A2(n274), .B1(buffer[23]), .B2(n274), .O(n202) );
  MOAI1S U60 ( .A1(n181), .A2(n272), .B1(buffer[0]), .B2(n272), .O(n185) );
  MOAI1S U61 ( .A1(n180), .A2(n272), .B1(buffer[1]), .B2(n272), .O(n187) );
  MOAI1S U62 ( .A1(n179), .A2(n272), .B1(buffer[2]), .B2(n272), .O(n188) );
  MOAI1S U63 ( .A1(n178), .A2(n272), .B1(buffer[3]), .B2(n272), .O(n189) );
  MOAI1S U64 ( .A1(n177), .A2(n272), .B1(buffer[4]), .B2(n272), .O(n190) );
  MOAI1S U65 ( .A1(n176), .A2(n272), .B1(buffer[5]), .B2(n272), .O(n191) );
  MOAI1S U66 ( .A1(n175), .A2(n272), .B1(buffer[6]), .B2(n272), .O(n192) );
  MOAI1S U67 ( .A1(n174), .A2(n272), .B1(buffer[7]), .B2(n272), .O(n186) );
  MOAI1S U68 ( .A1(n181), .A2(n276), .B1(buffer[40]), .B2(n276), .O(n225) );
  MOAI1S U69 ( .A1(n180), .A2(n276), .B1(buffer[41]), .B2(n276), .O(n227) );
  MOAI1S U70 ( .A1(n179), .A2(n276), .B1(buffer[42]), .B2(n276), .O(n228) );
  MOAI1S U71 ( .A1(n178), .A2(n276), .B1(buffer[43]), .B2(n276), .O(n229) );
  MOAI1S U72 ( .A1(n177), .A2(n276), .B1(buffer[44]), .B2(n276), .O(n230) );
  MOAI1S U73 ( .A1(n176), .A2(n276), .B1(buffer[45]), .B2(n276), .O(n231) );
  MOAI1S U74 ( .A1(n175), .A2(n276), .B1(buffer[46]), .B2(n276), .O(n232) );
  MOAI1S U75 ( .A1(n174), .A2(n276), .B1(buffer[47]), .B2(n276), .O(n226) );
  MOAI1S U76 ( .A1(n181), .A2(n275), .B1(buffer[24]), .B2(n275), .O(n209) );
  MOAI1S U77 ( .A1(n180), .A2(n275), .B1(buffer[25]), .B2(n275), .O(n211) );
  MOAI1S U78 ( .A1(n179), .A2(n275), .B1(buffer[26]), .B2(n275), .O(n212) );
  MOAI1S U79 ( .A1(n178), .A2(n275), .B1(buffer[27]), .B2(n275), .O(n213) );
  MOAI1S U81 ( .A1(n177), .A2(n275), .B1(buffer[28]), .B2(n275), .O(n214) );
  MOAI1S U82 ( .A1(n176), .A2(n275), .B1(buffer[29]), .B2(n275), .O(n215) );
  MOAI1S U83 ( .A1(n175), .A2(n275), .B1(buffer[30]), .B2(n275), .O(n216) );
  BUF1CK U84 ( .I(n159), .O(n164) );
  MOAI1S U85 ( .A1(n174), .A2(n275), .B1(buffer[31]), .B2(n275), .O(n210) );
  MOAI1S U86 ( .A1(n181), .A2(n273), .B1(buffer[8]), .B2(n273), .O(n193) );
  MOAI1S U87 ( .A1(n180), .A2(n273), .B1(buffer[9]), .B2(n273), .O(n195) );
  MOAI1S U88 ( .A1(n179), .A2(n273), .B1(buffer[10]), .B2(n273), .O(n196) );
  MOAI1S U89 ( .A1(n178), .A2(n273), .B1(buffer[11]), .B2(n273), .O(n197) );
  MOAI1S U90 ( .A1(n177), .A2(n273), .B1(buffer[12]), .B2(n273), .O(n198) );
  MOAI1S U91 ( .A1(n176), .A2(n273), .B1(buffer[13]), .B2(n273), .O(n199) );
  BUF1CK U92 ( .I(n158), .O(n163) );
  MOAI1S U93 ( .A1(n175), .A2(n273), .B1(buffer[14]), .B2(n273), .O(n200) );
  BUF1CK U94 ( .I(n158), .O(n162) );
  MOAI1S U95 ( .A1(n174), .A2(n273), .B1(buffer[15]), .B2(n273), .O(n194) );
  MOAI1S U96 ( .A1(n278), .A2(n181), .B1(buffer[56]), .B2(n278), .O(n241) );
  MOAI1S U97 ( .A1(n278), .A2(n180), .B1(buffer[57]), .B2(n278), .O(n243) );
  MOAI1S U100 ( .A1(n278), .A2(n179), .B1(buffer[58]), .B2(n278), .O(n244) );
  MOAI1S U101 ( .A1(n278), .A2(n178), .B1(buffer[59]), .B2(n278), .O(n245) );
  MOAI1S U102 ( .A1(n278), .A2(n177), .B1(buffer[60]), .B2(n278), .O(n246) );
  MOAI1S U103 ( .A1(n278), .A2(n176), .B1(buffer[61]), .B2(n278), .O(n247) );
  BUF1CK U104 ( .I(n160), .O(n165) );
  MOAI1S U107 ( .A1(n278), .A2(n175), .B1(buffer[62]), .B2(n278), .O(n248) );
  MOAI1S U108 ( .A1(n278), .A2(n174), .B1(buffer[63]), .B2(n278), .O(n242) );
  OAI12HS U109 ( .B1(n284), .B2(n173), .A1(n283), .O(n259) );
  BUF1CK U110 ( .I(n160), .O(n166) );
  XOR2HS U111 ( .I1(n172), .I2(n282), .O(n258) );
  OAI12HS U112 ( .B1(n281), .B2(n171), .A1(n280), .O(n257) );
  MOAI1S U113 ( .A1(N16), .A2(n270), .B1(n268), .B2(N16), .O(n183) );
  MOAI1S U115 ( .A1(n157), .A2(n270), .B1(n269), .B2(N17), .O(n184) );
  OR2 U117 ( .I1(n157), .I2(n268), .O(n269) );
  XOR2HS U118 ( .I1(n170), .I2(n279), .O(n182) );
  INV1S U119 ( .I(n267), .O(empty) );
  INV1S U120 ( .I(n271), .O(full) );
  BUF1S U121 ( .I(rst), .O(n159) );
  BUF1S U122 ( .I(rst), .O(n158) );
  BUF1S U123 ( .I(rst), .O(n161) );
  BUF1S U124 ( .I(rst), .O(n160) );
  NR2P U125 ( .I1(n156), .I2(n157), .O(n148) );
  ND2 U126 ( .I1(n284), .I2(n173), .O(n283) );
  ND3 U127 ( .I1(n172), .I2(n173), .I3(n167), .O(n277) );
  ND3 U128 ( .I1(wr_ptr[2]), .I2(n172), .I3(n167), .O(n274) );
  ND2 U129 ( .I1(n284), .I2(wr_ptr[2]), .O(n272) );
  ND3 U130 ( .I1(wr_ptr[1]), .I2(n173), .I3(n168), .O(n276) );
  ND3 U131 ( .I1(n172), .I2(n173), .I3(n168), .O(n278) );
  ND3 U132 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n168), .O(n273) );
  ND3 U133 ( .I1(wr_ptr[2]), .I2(n172), .I3(n168), .O(n275) );
  NR2P U134 ( .I1(n157), .I2(N17), .O(n1501) );
  NR2P U135 ( .I1(n156), .I2(N16), .O(n149) );
  INV1S U136 ( .I(N16), .O(n157) );
  INV1S U137 ( .I(N15), .O(n170) );
  AOI22S U138 ( .A1(buffer[24]), .A2(n149), .B1(buffer[8]), .B2(n148), .O(n2)
         );
  AOI22S U139 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n1501), .O(n1) );
  AN2 U140 ( .I1(n2), .I2(n1), .O(n6) );
  AOI22S U141 ( .A1(buffer[16]), .A2(n149), .B1(buffer[0]), .B2(n148), .O(n4)
         );
  AOI22S U142 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n1501), .O(n3) );
  ND2 U143 ( .I1(n4), .I2(n3), .O(n5) );
  MOAI1S U144 ( .A1(N15), .A2(n6), .B1(n5), .B2(N15), .O(N55) );
  AOI22S U145 ( .A1(buffer[25]), .A2(n149), .B1(buffer[9]), .B2(n148), .O(n8)
         );
  AOI22S U146 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n1501), .O(n7) );
  AN2 U147 ( .I1(n8), .I2(n7), .O(n18) );
  AOI22S U148 ( .A1(buffer[17]), .A2(n149), .B1(buffer[1]), .B2(n148), .O(n12)
         );
  AOI22S U149 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n1501), .O(
        n10) );
  ND2 U150 ( .I1(n12), .I2(n10), .O(n1500) );
  MOAI1S U151 ( .A1(N15), .A2(n18), .B1(n1500), .B2(N15), .O(N54) );
  AOI22S U152 ( .A1(buffer[26]), .A2(n149), .B1(buffer[10]), .B2(n148), .O(n21) );
  AOI22S U153 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n1501), .O(
        n20) );
  AN2 U154 ( .I1(n21), .I2(n20), .O(n25) );
  AOI22S U155 ( .A1(buffer[18]), .A2(n149), .B1(buffer[2]), .B2(n148), .O(n23)
         );
  AOI22S U156 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n1501), .O(
        n22) );
  ND2 U157 ( .I1(n23), .I2(n22), .O(n24) );
  MOAI1S U158 ( .A1(N15), .A2(n25), .B1(n24), .B2(N15), .O(N53) );
  AOI22S U159 ( .A1(buffer[27]), .A2(n149), .B1(buffer[11]), .B2(n148), .O(n27) );
  AOI22S U160 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n1501), .O(
        n26) );
  AN2 U161 ( .I1(n27), .I2(n26), .O(n41) );
  AOI22S U162 ( .A1(buffer[19]), .A2(n149), .B1(buffer[3]), .B2(n148), .O(n30)
         );
  AOI22S U163 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n1501), .O(
        n28) );
  ND2 U164 ( .I1(n30), .I2(n28), .O(n37) );
  MOAI1S U165 ( .A1(N15), .A2(n41), .B1(n37), .B2(N15), .O(N52) );
  AOI22S U166 ( .A1(buffer[28]), .A2(n149), .B1(buffer[12]), .B2(n148), .O(
        n129) );
  AOI22S U167 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n1501), .O(
        n128) );
  AN2 U168 ( .I1(n129), .I2(n128), .O(n133) );
  AOI22S U169 ( .A1(buffer[20]), .A2(n149), .B1(buffer[4]), .B2(n148), .O(n131) );
  AOI22S U170 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n1501), .O(
        n130) );
  ND2 U171 ( .I1(n131), .I2(n130), .O(n132) );
  MOAI1S U172 ( .A1(N15), .A2(n133), .B1(n132), .B2(N15), .O(N51) );
  AOI22S U173 ( .A1(buffer[29]), .A2(n149), .B1(buffer[13]), .B2(n148), .O(
        n135) );
  AOI22S U174 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n1501), .O(
        n134) );
  AN2 U175 ( .I1(n135), .I2(n134), .O(n139) );
  AOI22S U176 ( .A1(buffer[21]), .A2(n149), .B1(buffer[5]), .B2(n148), .O(n137) );
  AOI22S U177 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n1501), .O(
        n136) );
  ND2 U178 ( .I1(n137), .I2(n136), .O(n138) );
  MOAI1S U179 ( .A1(N15), .A2(n139), .B1(n138), .B2(N15), .O(N50) );
  AOI22S U180 ( .A1(buffer[30]), .A2(n149), .B1(buffer[14]), .B2(n148), .O(
        n141) );
  AOI22S U181 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n1501), .O(
        n140) );
  AN2 U182 ( .I1(n141), .I2(n140), .O(n145) );
  AOI22S U183 ( .A1(buffer[22]), .A2(n149), .B1(buffer[6]), .B2(n148), .O(n143) );
  AOI22S U184 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n1501), .O(
        n142) );
  ND2 U185 ( .I1(n143), .I2(n142), .O(n144) );
  MOAI1S U186 ( .A1(N15), .A2(n145), .B1(n144), .B2(N15), .O(N49) );
  AOI22S U187 ( .A1(buffer[23]), .A2(n149), .B1(buffer[7]), .B2(n148), .O(n147) );
  AOI22S U188 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n1501), .O(
        n146) );
  AN2 U189 ( .I1(n147), .I2(n146), .O(n155) );
  AOI22S U190 ( .A1(buffer[31]), .A2(n149), .B1(buffer[15]), .B2(n148), .O(
        n153) );
  AOI22S U191 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n1501), .O(
        n152) );
  ND2 U192 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U193 ( .A1(n155), .A2(n170), .B1(n154), .B2(n170), .O(N48) );
endmodule


module sync_fifo_2 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n12, n1500, n18, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n30, n37, n41, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n1501, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  AO22 U6 ( .A1(data_out[1]), .A2(n279), .B1(N54), .B2(n169), .O(n256) );
  AO22 U7 ( .A1(data_out[2]), .A2(n279), .B1(N53), .B2(n169), .O(n255) );
  AO22 U8 ( .A1(data_out[3]), .A2(n279), .B1(N52), .B2(n169), .O(n254) );
  AO22 U9 ( .A1(data_out[4]), .A2(n279), .B1(N51), .B2(n169), .O(n253) );
  AO22 U10 ( .A1(data_out[5]), .A2(n279), .B1(N50), .B2(n169), .O(n252) );
  AO22 U11 ( .A1(data_out[6]), .A2(n279), .B1(N49), .B2(n169), .O(n251) );
  AO22 U12 ( .A1(data_out[7]), .A2(n279), .B1(N48), .B2(n169), .O(n250) );
  AO22 U13 ( .A1(data_out[0]), .A2(n279), .B1(N55), .B2(n169), .O(n249) );
  ND2 U80 ( .I1(n281), .I2(n171), .O(n280) );
  ND2 U98 ( .I1(n281), .I2(wr_ptr[0]), .O(n282) );
  AN2 U99 ( .I1(w_en), .I2(n271), .O(n281) );
  AO12 U105 ( .B1(N17), .B2(N16), .A1(n268), .O(n270) );
  ND2 U106 ( .I1(n169), .I2(N15), .O(n268) );
  ND2 U114 ( .I1(n262), .I2(n261), .O(n266) );
  OR3 U116 ( .I1(n264), .I2(N16), .I3(n172), .O(n262) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n182), .CK(clk), .RB(n161), .Q(N15) );
  QDFFRBN data_out_reg_7_ ( .D(n250), .CK(clk), .RB(rst), .Q(data_out[7]) );
  QDFFRBN data_out_reg_6_ ( .D(n251), .CK(clk), .RB(rst), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n252), .CK(clk), .RB(rst), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n253), .CK(clk), .RB(rst), .Q(data_out[4]) );
  QDFFRBN data_out_reg_3_ ( .D(n254), .CK(clk), .RB(rst), .Q(data_out[3]) );
  QDFFRBN data_out_reg_2_ ( .D(n255), .CK(clk), .RB(rst), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n256), .CK(clk), .RB(rst), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n249), .CK(clk), .RB(rst), .Q(data_out[0]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n184), .CK(clk), .RB(rst), .Q(N17) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n183), .CK(clk), .RB(rst), .Q(N16) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n257), .CK(clk), .RB(rst), .Q(wr_ptr[0]) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n258), .CK(clk), .RB(n158), .Q(wr_ptr[1]) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n259), .CK(clk), .RB(n159), .Q(wr_ptr[2]) );
  QDFFRBN buffer_reg_0__7_ ( .D(n242), .CK(clk), .RB(n165), .Q(buffer[63]) );
  QDFFRBN buffer_reg_0__6_ ( .D(n248), .CK(clk), .RB(n166), .Q(buffer[62]) );
  QDFFRBN buffer_reg_0__5_ ( .D(n247), .CK(clk), .RB(n166), .Q(buffer[61]) );
  QDFFRBN buffer_reg_0__4_ ( .D(n246), .CK(clk), .RB(n166), .Q(buffer[60]) );
  QDFFRBN buffer_reg_0__3_ ( .D(n245), .CK(clk), .RB(n166), .Q(buffer[59]) );
  QDFFRBN buffer_reg_0__2_ ( .D(n244), .CK(clk), .RB(n165), .Q(buffer[58]) );
  QDFFRBN buffer_reg_0__1_ ( .D(n243), .CK(clk), .RB(n165), .Q(buffer[57]) );
  QDFFRBN buffer_reg_0__0_ ( .D(n241), .CK(clk), .RB(n165), .Q(buffer[56]) );
  QDFFRBN buffer_reg_6__7_ ( .D(n194), .CK(clk), .RB(n162), .Q(buffer[15]) );
  QDFFRBN buffer_reg_6__6_ ( .D(n200), .CK(clk), .RB(n163), .Q(buffer[14]) );
  QDFFRBN buffer_reg_6__5_ ( .D(n199), .CK(clk), .RB(n163), .Q(buffer[13]) );
  QDFFRBN buffer_reg_6__4_ ( .D(n198), .CK(clk), .RB(n163), .Q(buffer[12]) );
  QDFFRBN buffer_reg_6__3_ ( .D(n197), .CK(clk), .RB(n163), .Q(buffer[11]) );
  QDFFRBN buffer_reg_6__2_ ( .D(n196), .CK(clk), .RB(n163), .Q(buffer[10]) );
  QDFFRBN buffer_reg_6__1_ ( .D(n195), .CK(clk), .RB(n162), .Q(buffer[9]) );
  QDFFRBN buffer_reg_6__0_ ( .D(n193), .CK(clk), .RB(n162), .Q(buffer[8]) );
  QDFFRBN buffer_reg_4__7_ ( .D(n210), .CK(clk), .RB(n164), .Q(buffer[31]) );
  QDFFRBN buffer_reg_4__6_ ( .D(n216), .CK(clk), .RB(n164), .Q(buffer[30]) );
  QDFFRBN buffer_reg_4__5_ ( .D(n215), .CK(clk), .RB(n164), .Q(buffer[29]) );
  QDFFRBN buffer_reg_4__4_ ( .D(n214), .CK(clk), .RB(n164), .Q(buffer[28]) );
  QDFFRBN buffer_reg_4__3_ ( .D(n213), .CK(clk), .RB(n164), .Q(buffer[27]) );
  QDFFRBN buffer_reg_4__2_ ( .D(n212), .CK(clk), .RB(n164), .Q(buffer[26]) );
  QDFFRBN buffer_reg_4__1_ ( .D(n211), .CK(clk), .RB(n164), .Q(buffer[25]) );
  QDFFRBN buffer_reg_4__0_ ( .D(n209), .CK(clk), .RB(n164), .Q(buffer[24]) );
  QDFFRBN buffer_reg_2__7_ ( .D(n226), .CK(clk), .RB(n160), .Q(buffer[47]) );
  QDFFRBN buffer_reg_2__6_ ( .D(n232), .CK(clk), .RB(n158), .Q(buffer[46]) );
  QDFFRBN buffer_reg_2__5_ ( .D(n231), .CK(clk), .RB(n159), .Q(buffer[45]) );
  QDFFRBN buffer_reg_2__4_ ( .D(n230), .CK(clk), .RB(n160), .Q(buffer[44]) );
  QDFFRBN buffer_reg_2__3_ ( .D(n229), .CK(clk), .RB(n160), .Q(buffer[43]) );
  QDFFRBN buffer_reg_2__2_ ( .D(n228), .CK(clk), .RB(n160), .Q(buffer[42]) );
  QDFFRBN buffer_reg_2__1_ ( .D(n227), .CK(clk), .RB(rst), .Q(buffer[41]) );
  QDFFRBN buffer_reg_2__0_ ( .D(n225), .CK(clk), .RB(rst), .Q(buffer[40]) );
  QDFFRBN buffer_reg_7__7_ ( .D(n186), .CK(clk), .RB(n162), .Q(buffer[7]) );
  QDFFRBN buffer_reg_7__6_ ( .D(n192), .CK(clk), .RB(n162), .Q(buffer[6]) );
  QDFFRBN buffer_reg_7__5_ ( .D(n191), .CK(clk), .RB(n162), .Q(buffer[5]) );
  QDFFRBN buffer_reg_7__4_ ( .D(n190), .CK(clk), .RB(n162), .Q(buffer[4]) );
  QDFFRBN buffer_reg_7__3_ ( .D(n189), .CK(clk), .RB(n162), .Q(buffer[3]) );
  QDFFRBN buffer_reg_7__2_ ( .D(n188), .CK(clk), .RB(n162), .Q(buffer[2]) );
  QDFFRBN buffer_reg_7__1_ ( .D(n187), .CK(clk), .RB(n162), .Q(buffer[1]) );
  QDFFRBN buffer_reg_7__0_ ( .D(n185), .CK(clk), .RB(n162), .Q(buffer[0]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n202), .CK(clk), .RB(n163), .Q(buffer[23]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n208), .CK(clk), .RB(n164), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n207), .CK(clk), .RB(n164), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n206), .CK(clk), .RB(n163), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n205), .CK(clk), .RB(n163), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n204), .CK(clk), .RB(n163), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n203), .CK(clk), .RB(n163), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n201), .CK(clk), .RB(n163), .Q(buffer[16]) );
  QDFFRBN buffer_reg_1__7_ ( .D(n234), .CK(clk), .RB(n165), .Q(buffer[55]) );
  QDFFRBN buffer_reg_1__6_ ( .D(n240), .CK(clk), .RB(n165), .Q(buffer[54]) );
  QDFFRBN buffer_reg_1__5_ ( .D(n239), .CK(clk), .RB(n165), .Q(buffer[53]) );
  QDFFRBN buffer_reg_1__4_ ( .D(n238), .CK(clk), .RB(n165), .Q(buffer[52]) );
  QDFFRBN buffer_reg_1__3_ ( .D(n237), .CK(clk), .RB(n165), .Q(buffer[51]) );
  QDFFRBN buffer_reg_1__2_ ( .D(n236), .CK(clk), .RB(n165), .Q(buffer[50]) );
  QDFFRBN buffer_reg_1__1_ ( .D(n235), .CK(clk), .RB(n165), .Q(buffer[49]) );
  QDFFRBN buffer_reg_1__0_ ( .D(n233), .CK(clk), .RB(n164), .Q(buffer[48]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n218), .CK(clk), .RB(n166), .Q(buffer[39]) );
  QDFFRBN buffer_reg_3__6_ ( .D(n224), .CK(clk), .RB(rst), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n223), .CK(clk), .RB(n166), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n222), .CK(clk), .RB(n166), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n221), .CK(clk), .RB(n166), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n220), .CK(clk), .RB(n166), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n219), .CK(clk), .RB(n166), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n217), .CK(clk), .RB(n166), .Q(buffer[32]) );
  INV1S U3 ( .I(N17), .O(n156) );
  INV1S U4 ( .I(n282), .O(n167) );
  INV1S U5 ( .I(n280), .O(n168) );
  NR2P U14 ( .I1(N16), .I2(N17), .O(n151) );
  XNR2HS U15 ( .I1(N17), .I2(wr_ptr[2]), .O(n264) );
  XOR2HS U16 ( .I1(N16), .I2(n172), .O(n263) );
  INV1S U17 ( .I(data_in[0]), .O(n181) );
  INV1S U18 ( .I(data_in[1]), .O(n180) );
  INV1S U19 ( .I(data_in[2]), .O(n179) );
  INV1S U20 ( .I(data_in[3]), .O(n178) );
  INV1S U21 ( .I(data_in[4]), .O(n177) );
  INV1S U22 ( .I(data_in[5]), .O(n176) );
  INV1S U23 ( .I(data_in[6]), .O(n175) );
  INV1S U24 ( .I(data_in[7]), .O(n174) );
  NR2 U25 ( .I1(n282), .I2(n172), .O(n284) );
  INV1S U26 ( .I(wr_ptr[2]), .O(n173) );
  INV1S U27 ( .I(wr_ptr[1]), .O(n172) );
  INV1S U28 ( .I(wr_ptr[0]), .O(n171) );
  INV1S U29 ( .I(n279), .O(n169) );
  ND2 U30 ( .I1(r_en), .I2(n267), .O(n279) );
  ND3 U31 ( .I1(n264), .I2(n263), .I3(n260), .O(n267) );
  XOR2HS U32 ( .I1(n170), .I2(wr_ptr[0]), .O(n260) );
  AOI13HS U33 ( .B1(n266), .B2(n170), .B3(wr_ptr[0]), .A1(n265), .O(n271) );
  AN4B1S U34 ( .I1(n264), .I2(n171), .I3(n263), .B1(n170), .O(n265) );
  ND3 U35 ( .I1(N16), .I2(n172), .I3(n264), .O(n261) );
  MOAI1S U36 ( .A1(n181), .A2(n283), .B1(buffer[32]), .B2(n283), .O(n217) );
  MOAI1S U37 ( .A1(n180), .A2(n283), .B1(buffer[33]), .B2(n283), .O(n219) );
  MOAI1S U38 ( .A1(n179), .A2(n283), .B1(buffer[34]), .B2(n283), .O(n220) );
  MOAI1S U39 ( .A1(n178), .A2(n283), .B1(buffer[35]), .B2(n283), .O(n221) );
  MOAI1S U40 ( .A1(n177), .A2(n283), .B1(buffer[36]), .B2(n283), .O(n222) );
  MOAI1S U41 ( .A1(n176), .A2(n283), .B1(buffer[37]), .B2(n283), .O(n223) );
  MOAI1S U42 ( .A1(n175), .A2(n283), .B1(buffer[38]), .B2(n283), .O(n224) );
  MOAI1S U43 ( .A1(n174), .A2(n283), .B1(buffer[39]), .B2(n283), .O(n218) );
  MOAI1S U44 ( .A1(n181), .A2(n277), .B1(buffer[48]), .B2(n277), .O(n233) );
  MOAI1S U45 ( .A1(n180), .A2(n277), .B1(buffer[49]), .B2(n277), .O(n235) );
  MOAI1S U46 ( .A1(n179), .A2(n277), .B1(buffer[50]), .B2(n277), .O(n236) );
  MOAI1S U47 ( .A1(n178), .A2(n277), .B1(buffer[51]), .B2(n277), .O(n237) );
  MOAI1S U48 ( .A1(n177), .A2(n277), .B1(buffer[52]), .B2(n277), .O(n238) );
  MOAI1S U49 ( .A1(n176), .A2(n277), .B1(buffer[53]), .B2(n277), .O(n239) );
  MOAI1S U50 ( .A1(n175), .A2(n277), .B1(buffer[54]), .B2(n277), .O(n240) );
  MOAI1S U51 ( .A1(n174), .A2(n277), .B1(buffer[55]), .B2(n277), .O(n234) );
  MOAI1S U52 ( .A1(n181), .A2(n274), .B1(buffer[16]), .B2(n274), .O(n201) );
  MOAI1S U53 ( .A1(n180), .A2(n274), .B1(buffer[17]), .B2(n274), .O(n203) );
  MOAI1S U54 ( .A1(n179), .A2(n274), .B1(buffer[18]), .B2(n274), .O(n204) );
  MOAI1S U55 ( .A1(n178), .A2(n274), .B1(buffer[19]), .B2(n274), .O(n205) );
  MOAI1S U56 ( .A1(n177), .A2(n274), .B1(buffer[20]), .B2(n274), .O(n206) );
  MOAI1S U57 ( .A1(n176), .A2(n274), .B1(buffer[21]), .B2(n274), .O(n207) );
  MOAI1S U58 ( .A1(n175), .A2(n274), .B1(buffer[22]), .B2(n274), .O(n208) );
  MOAI1S U59 ( .A1(n174), .A2(n274), .B1(buffer[23]), .B2(n274), .O(n202) );
  MOAI1S U60 ( .A1(n181), .A2(n272), .B1(buffer[0]), .B2(n272), .O(n185) );
  MOAI1S U61 ( .A1(n180), .A2(n272), .B1(buffer[1]), .B2(n272), .O(n187) );
  MOAI1S U62 ( .A1(n179), .A2(n272), .B1(buffer[2]), .B2(n272), .O(n188) );
  MOAI1S U63 ( .A1(n178), .A2(n272), .B1(buffer[3]), .B2(n272), .O(n189) );
  MOAI1S U64 ( .A1(n177), .A2(n272), .B1(buffer[4]), .B2(n272), .O(n190) );
  MOAI1S U65 ( .A1(n176), .A2(n272), .B1(buffer[5]), .B2(n272), .O(n191) );
  MOAI1S U66 ( .A1(n175), .A2(n272), .B1(buffer[6]), .B2(n272), .O(n192) );
  MOAI1S U67 ( .A1(n174), .A2(n272), .B1(buffer[7]), .B2(n272), .O(n186) );
  MOAI1S U68 ( .A1(n181), .A2(n276), .B1(buffer[40]), .B2(n276), .O(n225) );
  MOAI1S U69 ( .A1(n180), .A2(n276), .B1(buffer[41]), .B2(n276), .O(n227) );
  MOAI1S U70 ( .A1(n179), .A2(n276), .B1(buffer[42]), .B2(n276), .O(n228) );
  MOAI1S U71 ( .A1(n178), .A2(n276), .B1(buffer[43]), .B2(n276), .O(n229) );
  MOAI1S U72 ( .A1(n177), .A2(n276), .B1(buffer[44]), .B2(n276), .O(n230) );
  MOAI1S U73 ( .A1(n176), .A2(n276), .B1(buffer[45]), .B2(n276), .O(n231) );
  MOAI1S U74 ( .A1(n175), .A2(n276), .B1(buffer[46]), .B2(n276), .O(n232) );
  MOAI1S U75 ( .A1(n174), .A2(n276), .B1(buffer[47]), .B2(n276), .O(n226) );
  MOAI1S U76 ( .A1(n181), .A2(n275), .B1(buffer[24]), .B2(n275), .O(n209) );
  MOAI1S U77 ( .A1(n180), .A2(n275), .B1(buffer[25]), .B2(n275), .O(n211) );
  MOAI1S U78 ( .A1(n179), .A2(n275), .B1(buffer[26]), .B2(n275), .O(n212) );
  MOAI1S U79 ( .A1(n178), .A2(n275), .B1(buffer[27]), .B2(n275), .O(n213) );
  MOAI1S U81 ( .A1(n177), .A2(n275), .B1(buffer[28]), .B2(n275), .O(n214) );
  MOAI1S U82 ( .A1(n176), .A2(n275), .B1(buffer[29]), .B2(n275), .O(n215) );
  MOAI1S U83 ( .A1(n175), .A2(n275), .B1(buffer[30]), .B2(n275), .O(n216) );
  BUF1CK U84 ( .I(n159), .O(n164) );
  MOAI1S U85 ( .A1(n174), .A2(n275), .B1(buffer[31]), .B2(n275), .O(n210) );
  MOAI1S U86 ( .A1(n181), .A2(n273), .B1(buffer[8]), .B2(n273), .O(n193) );
  MOAI1S U87 ( .A1(n180), .A2(n273), .B1(buffer[9]), .B2(n273), .O(n195) );
  MOAI1S U88 ( .A1(n179), .A2(n273), .B1(buffer[10]), .B2(n273), .O(n196) );
  MOAI1S U89 ( .A1(n178), .A2(n273), .B1(buffer[11]), .B2(n273), .O(n197) );
  MOAI1S U90 ( .A1(n177), .A2(n273), .B1(buffer[12]), .B2(n273), .O(n198) );
  MOAI1S U91 ( .A1(n176), .A2(n273), .B1(buffer[13]), .B2(n273), .O(n199) );
  BUF1CK U92 ( .I(n158), .O(n163) );
  MOAI1S U93 ( .A1(n175), .A2(n273), .B1(buffer[14]), .B2(n273), .O(n200) );
  BUF1CK U94 ( .I(n158), .O(n162) );
  MOAI1S U95 ( .A1(n174), .A2(n273), .B1(buffer[15]), .B2(n273), .O(n194) );
  MOAI1S U96 ( .A1(n278), .A2(n181), .B1(buffer[56]), .B2(n278), .O(n241) );
  MOAI1S U97 ( .A1(n278), .A2(n180), .B1(buffer[57]), .B2(n278), .O(n243) );
  MOAI1S U100 ( .A1(n278), .A2(n179), .B1(buffer[58]), .B2(n278), .O(n244) );
  MOAI1S U101 ( .A1(n278), .A2(n178), .B1(buffer[59]), .B2(n278), .O(n245) );
  MOAI1S U102 ( .A1(n278), .A2(n177), .B1(buffer[60]), .B2(n278), .O(n246) );
  MOAI1S U103 ( .A1(n278), .A2(n176), .B1(buffer[61]), .B2(n278), .O(n247) );
  BUF1CK U104 ( .I(n160), .O(n166) );
  MOAI1S U107 ( .A1(n278), .A2(n175), .B1(buffer[62]), .B2(n278), .O(n248) );
  BUF1CK U108 ( .I(n159), .O(n165) );
  MOAI1S U109 ( .A1(n278), .A2(n174), .B1(buffer[63]), .B2(n278), .O(n242) );
  OAI12HS U110 ( .B1(n284), .B2(n173), .A1(n283), .O(n259) );
  XOR2HS U111 ( .I1(n172), .I2(n282), .O(n258) );
  OAI12HS U112 ( .B1(n281), .B2(n171), .A1(n280), .O(n257) );
  MOAI1S U113 ( .A1(N16), .A2(n270), .B1(n268), .B2(N16), .O(n183) );
  MOAI1S U115 ( .A1(n157), .A2(n270), .B1(n269), .B2(N17), .O(n184) );
  OR2 U117 ( .I1(n157), .I2(n268), .O(n269) );
  XOR2HS U118 ( .I1(n170), .I2(n279), .O(n182) );
  INV1S U119 ( .I(n267), .O(empty) );
  INV1S U120 ( .I(n271), .O(full) );
  BUF1CK U121 ( .I(rst), .O(n160) );
  BUF1S U122 ( .I(rst), .O(n159) );
  BUF1S U123 ( .I(rst), .O(n158) );
  BUF1CK U124 ( .I(rst), .O(n161) );
  NR2P U125 ( .I1(n156), .I2(n157), .O(n148) );
  ND2 U126 ( .I1(n284), .I2(n173), .O(n283) );
  ND3 U127 ( .I1(n172), .I2(n173), .I3(n167), .O(n277) );
  ND3 U128 ( .I1(wr_ptr[2]), .I2(n172), .I3(n167), .O(n274) );
  ND2 U129 ( .I1(n284), .I2(wr_ptr[2]), .O(n272) );
  ND3 U130 ( .I1(wr_ptr[1]), .I2(n173), .I3(n168), .O(n276) );
  ND3 U131 ( .I1(n172), .I2(n173), .I3(n168), .O(n278) );
  ND3 U132 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n168), .O(n273) );
  ND3 U133 ( .I1(wr_ptr[2]), .I2(n172), .I3(n168), .O(n275) );
  NR2P U134 ( .I1(n157), .I2(N17), .O(n1501) );
  NR2P U135 ( .I1(n156), .I2(N16), .O(n149) );
  INV1S U136 ( .I(N16), .O(n157) );
  INV1S U137 ( .I(N15), .O(n170) );
  AOI22S U138 ( .A1(buffer[24]), .A2(n149), .B1(buffer[8]), .B2(n148), .O(n2)
         );
  AOI22S U139 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n1501), .O(n1) );
  AN2 U140 ( .I1(n2), .I2(n1), .O(n6) );
  AOI22S U141 ( .A1(buffer[16]), .A2(n149), .B1(buffer[0]), .B2(n148), .O(n4)
         );
  AOI22S U142 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n1501), .O(n3) );
  ND2 U143 ( .I1(n4), .I2(n3), .O(n5) );
  MOAI1S U144 ( .A1(N15), .A2(n6), .B1(n5), .B2(N15), .O(N55) );
  AOI22S U145 ( .A1(buffer[25]), .A2(n149), .B1(buffer[9]), .B2(n148), .O(n8)
         );
  AOI22S U146 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n1501), .O(n7) );
  AN2 U147 ( .I1(n8), .I2(n7), .O(n18) );
  AOI22S U148 ( .A1(buffer[17]), .A2(n149), .B1(buffer[1]), .B2(n148), .O(n12)
         );
  AOI22S U149 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n1501), .O(
        n10) );
  ND2 U150 ( .I1(n12), .I2(n10), .O(n1500) );
  MOAI1S U151 ( .A1(N15), .A2(n18), .B1(n1500), .B2(N15), .O(N54) );
  AOI22S U152 ( .A1(buffer[26]), .A2(n149), .B1(buffer[10]), .B2(n148), .O(n21) );
  AOI22S U153 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n1501), .O(
        n20) );
  AN2 U154 ( .I1(n21), .I2(n20), .O(n25) );
  AOI22S U155 ( .A1(buffer[18]), .A2(n149), .B1(buffer[2]), .B2(n148), .O(n23)
         );
  AOI22S U156 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n1501), .O(
        n22) );
  ND2 U157 ( .I1(n23), .I2(n22), .O(n24) );
  MOAI1S U158 ( .A1(N15), .A2(n25), .B1(n24), .B2(N15), .O(N53) );
  AOI22S U159 ( .A1(buffer[27]), .A2(n149), .B1(buffer[11]), .B2(n148), .O(n27) );
  AOI22S U160 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n1501), .O(
        n26) );
  AN2 U161 ( .I1(n27), .I2(n26), .O(n41) );
  AOI22S U162 ( .A1(buffer[19]), .A2(n149), .B1(buffer[3]), .B2(n148), .O(n30)
         );
  AOI22S U163 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n1501), .O(
        n28) );
  ND2 U164 ( .I1(n30), .I2(n28), .O(n37) );
  MOAI1S U165 ( .A1(N15), .A2(n41), .B1(n37), .B2(N15), .O(N52) );
  AOI22S U166 ( .A1(buffer[28]), .A2(n149), .B1(buffer[12]), .B2(n148), .O(
        n129) );
  AOI22S U167 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n1501), .O(
        n128) );
  AN2 U168 ( .I1(n129), .I2(n128), .O(n133) );
  AOI22S U169 ( .A1(buffer[20]), .A2(n149), .B1(buffer[4]), .B2(n148), .O(n131) );
  AOI22S U170 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n1501), .O(
        n130) );
  ND2 U171 ( .I1(n131), .I2(n130), .O(n132) );
  MOAI1S U172 ( .A1(N15), .A2(n133), .B1(n132), .B2(N15), .O(N51) );
  AOI22S U173 ( .A1(buffer[29]), .A2(n149), .B1(buffer[13]), .B2(n148), .O(
        n135) );
  AOI22S U174 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n1501), .O(
        n134) );
  AN2 U175 ( .I1(n135), .I2(n134), .O(n139) );
  AOI22S U176 ( .A1(buffer[21]), .A2(n149), .B1(buffer[5]), .B2(n148), .O(n137) );
  AOI22S U177 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n1501), .O(
        n136) );
  ND2 U178 ( .I1(n137), .I2(n136), .O(n138) );
  MOAI1S U179 ( .A1(N15), .A2(n139), .B1(n138), .B2(N15), .O(N50) );
  AOI22S U180 ( .A1(buffer[30]), .A2(n149), .B1(buffer[14]), .B2(n148), .O(
        n141) );
  AOI22S U181 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n1501), .O(
        n140) );
  AN2 U182 ( .I1(n141), .I2(n140), .O(n145) );
  AOI22S U183 ( .A1(buffer[22]), .A2(n149), .B1(buffer[6]), .B2(n148), .O(n143) );
  AOI22S U184 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n1501), .O(
        n142) );
  ND2 U185 ( .I1(n143), .I2(n142), .O(n144) );
  MOAI1S U186 ( .A1(N15), .A2(n145), .B1(n144), .B2(N15), .O(N49) );
  AOI22S U187 ( .A1(buffer[23]), .A2(n149), .B1(buffer[7]), .B2(n148), .O(n147) );
  AOI22S U188 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n1501), .O(
        n146) );
  AN2 U189 ( .I1(n147), .I2(n146), .O(n155) );
  AOI22S U190 ( .A1(buffer[31]), .A2(n149), .B1(buffer[15]), .B2(n148), .O(
        n153) );
  AOI22S U191 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n1501), .O(
        n152) );
  ND2 U192 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U193 ( .A1(n155), .A2(n170), .B1(n154), .B2(n170), .O(N48) );
endmodule


module sync_fifo_1 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n12, n1500, n18, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n30, n37, n41, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n1501, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  AO22 U6 ( .A1(data_out[1]), .A2(n278), .B1(N54), .B2(n168), .O(n255) );
  AO22 U7 ( .A1(data_out[2]), .A2(n278), .B1(N53), .B2(n168), .O(n254) );
  AO22 U8 ( .A1(data_out[3]), .A2(n278), .B1(N52), .B2(n168), .O(n253) );
  AO22 U9 ( .A1(data_out[4]), .A2(n278), .B1(N51), .B2(n168), .O(n252) );
  AO22 U10 ( .A1(data_out[5]), .A2(n278), .B1(N50), .B2(n168), .O(n251) );
  AO22 U11 ( .A1(data_out[6]), .A2(n278), .B1(N49), .B2(n168), .O(n250) );
  AO22 U12 ( .A1(data_out[7]), .A2(n278), .B1(N48), .B2(n168), .O(n249) );
  AO22 U13 ( .A1(data_out[0]), .A2(n278), .B1(N55), .B2(n168), .O(n248) );
  ND2 U80 ( .I1(n280), .I2(n170), .O(n279) );
  ND2 U98 ( .I1(n280), .I2(wr_ptr[0]), .O(n281) );
  AN2 U99 ( .I1(w_en), .I2(n270), .O(n280) );
  AO12 U105 ( .B1(N17), .B2(N16), .A1(n267), .O(n269) );
  ND2 U106 ( .I1(n168), .I2(N15), .O(n267) );
  ND2 U114 ( .I1(n261), .I2(n260), .O(n265) );
  OR3 U116 ( .I1(n263), .I2(N16), .I3(n171), .O(n261) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n181), .CK(clk), .RB(rst), .Q(N15) );
  QDFFRBN data_out_reg_7_ ( .D(n249), .CK(clk), .RB(rst), .Q(data_out[7]) );
  QDFFRBN data_out_reg_6_ ( .D(n250), .CK(clk), .RB(rst), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n251), .CK(clk), .RB(rst), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n252), .CK(clk), .RB(rst), .Q(data_out[4]) );
  QDFFRBN data_out_reg_3_ ( .D(n253), .CK(clk), .RB(rst), .Q(data_out[3]) );
  QDFFRBN data_out_reg_2_ ( .D(n254), .CK(clk), .RB(rst), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n255), .CK(clk), .RB(rst), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n248), .CK(clk), .RB(rst), .Q(data_out[0]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n183), .CK(clk), .RB(rst), .Q(N17) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n182), .CK(clk), .RB(rst), .Q(N16) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n256), .CK(clk), .RB(rst), .Q(wr_ptr[0]) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n257), .CK(clk), .RB(n160), .Q(wr_ptr[1]) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n258), .CK(clk), .RB(n158), .Q(wr_ptr[2]) );
  QDFFRBN buffer_reg_0__7_ ( .D(n241), .CK(clk), .RB(n164), .Q(buffer[63]) );
  QDFFRBN buffer_reg_0__6_ ( .D(n247), .CK(clk), .RB(n165), .Q(buffer[62]) );
  QDFFRBN buffer_reg_0__5_ ( .D(n246), .CK(clk), .RB(n165), .Q(buffer[61]) );
  QDFFRBN buffer_reg_0__4_ ( .D(n245), .CK(clk), .RB(n165), .Q(buffer[60]) );
  QDFFRBN buffer_reg_0__3_ ( .D(n244), .CK(clk), .RB(n165), .Q(buffer[59]) );
  QDFFRBN buffer_reg_0__2_ ( .D(n243), .CK(clk), .RB(n164), .Q(buffer[58]) );
  QDFFRBN buffer_reg_0__1_ ( .D(n242), .CK(clk), .RB(n164), .Q(buffer[57]) );
  QDFFRBN buffer_reg_0__0_ ( .D(n240), .CK(clk), .RB(n164), .Q(buffer[56]) );
  QDFFRBN buffer_reg_6__7_ ( .D(n193), .CK(clk), .RB(n161), .Q(buffer[15]) );
  QDFFRBN buffer_reg_6__6_ ( .D(n199), .CK(clk), .RB(n162), .Q(buffer[14]) );
  QDFFRBN buffer_reg_6__5_ ( .D(n198), .CK(clk), .RB(n162), .Q(buffer[13]) );
  QDFFRBN buffer_reg_6__4_ ( .D(n197), .CK(clk), .RB(n162), .Q(buffer[12]) );
  QDFFRBN buffer_reg_6__3_ ( .D(n196), .CK(clk), .RB(n162), .Q(buffer[11]) );
  QDFFRBN buffer_reg_6__2_ ( .D(n195), .CK(clk), .RB(n162), .Q(buffer[10]) );
  QDFFRBN buffer_reg_6__1_ ( .D(n194), .CK(clk), .RB(n161), .Q(buffer[9]) );
  QDFFRBN buffer_reg_6__0_ ( .D(n192), .CK(clk), .RB(n161), .Q(buffer[8]) );
  QDFFRBN buffer_reg_4__7_ ( .D(n209), .CK(clk), .RB(n163), .Q(buffer[31]) );
  QDFFRBN buffer_reg_4__6_ ( .D(n215), .CK(clk), .RB(n163), .Q(buffer[30]) );
  QDFFRBN buffer_reg_4__5_ ( .D(n214), .CK(clk), .RB(n163), .Q(buffer[29]) );
  QDFFRBN buffer_reg_4__4_ ( .D(n213), .CK(clk), .RB(n163), .Q(buffer[28]) );
  QDFFRBN buffer_reg_4__3_ ( .D(n212), .CK(clk), .RB(n163), .Q(buffer[27]) );
  QDFFRBN buffer_reg_4__2_ ( .D(n211), .CK(clk), .RB(n163), .Q(buffer[26]) );
  QDFFRBN buffer_reg_4__1_ ( .D(n210), .CK(clk), .RB(n163), .Q(buffer[25]) );
  QDFFRBN buffer_reg_4__0_ ( .D(n208), .CK(clk), .RB(n163), .Q(buffer[24]) );
  QDFFRBN buffer_reg_2__7_ ( .D(n225), .CK(clk), .RB(n159), .Q(buffer[47]) );
  QDFFRBN buffer_reg_2__6_ ( .D(n231), .CK(clk), .RB(n160), .Q(buffer[46]) );
  QDFFRBN buffer_reg_2__5_ ( .D(n230), .CK(clk), .RB(n158), .Q(buffer[45]) );
  QDFFRBN buffer_reg_2__4_ ( .D(n229), .CK(clk), .RB(n159), .Q(buffer[44]) );
  QDFFRBN buffer_reg_2__3_ ( .D(n228), .CK(clk), .RB(n160), .Q(buffer[43]) );
  QDFFRBN buffer_reg_2__2_ ( .D(n227), .CK(clk), .RB(n160), .Q(buffer[42]) );
  QDFFRBN buffer_reg_2__1_ ( .D(n226), .CK(clk), .RB(n160), .Q(buffer[41]) );
  QDFFRBN buffer_reg_2__0_ ( .D(n224), .CK(clk), .RB(rst), .Q(buffer[40]) );
  QDFFRBN buffer_reg_7__7_ ( .D(n185), .CK(clk), .RB(n161), .Q(buffer[7]) );
  QDFFRBN buffer_reg_7__6_ ( .D(n191), .CK(clk), .RB(n161), .Q(buffer[6]) );
  QDFFRBN buffer_reg_7__5_ ( .D(n190), .CK(clk), .RB(n161), .Q(buffer[5]) );
  QDFFRBN buffer_reg_7__4_ ( .D(n189), .CK(clk), .RB(n161), .Q(buffer[4]) );
  QDFFRBN buffer_reg_7__3_ ( .D(n188), .CK(clk), .RB(n161), .Q(buffer[3]) );
  QDFFRBN buffer_reg_7__2_ ( .D(n187), .CK(clk), .RB(n161), .Q(buffer[2]) );
  QDFFRBN buffer_reg_7__1_ ( .D(n186), .CK(clk), .RB(n161), .Q(buffer[1]) );
  QDFFRBN buffer_reg_7__0_ ( .D(n184), .CK(clk), .RB(n161), .Q(buffer[0]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n201), .CK(clk), .RB(n162), .Q(buffer[23]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n207), .CK(clk), .RB(n163), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n206), .CK(clk), .RB(n163), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n205), .CK(clk), .RB(n162), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n204), .CK(clk), .RB(n162), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n203), .CK(clk), .RB(n162), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n202), .CK(clk), .RB(n162), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n200), .CK(clk), .RB(n162), .Q(buffer[16]) );
  QDFFRBN buffer_reg_1__7_ ( .D(n233), .CK(clk), .RB(n164), .Q(buffer[55]) );
  QDFFRBN buffer_reg_1__6_ ( .D(n239), .CK(clk), .RB(n164), .Q(buffer[54]) );
  QDFFRBN buffer_reg_1__5_ ( .D(n238), .CK(clk), .RB(n164), .Q(buffer[53]) );
  QDFFRBN buffer_reg_1__4_ ( .D(n237), .CK(clk), .RB(n164), .Q(buffer[52]) );
  QDFFRBN buffer_reg_1__3_ ( .D(n236), .CK(clk), .RB(n164), .Q(buffer[51]) );
  QDFFRBN buffer_reg_1__2_ ( .D(n235), .CK(clk), .RB(n164), .Q(buffer[50]) );
  QDFFRBN buffer_reg_1__1_ ( .D(n234), .CK(clk), .RB(n164), .Q(buffer[49]) );
  QDFFRBN buffer_reg_1__0_ ( .D(n232), .CK(clk), .RB(n163), .Q(buffer[48]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n217), .CK(clk), .RB(n165), .Q(buffer[39]) );
  QDFFRBN buffer_reg_3__6_ ( .D(n223), .CK(clk), .RB(rst), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n222), .CK(clk), .RB(n165), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n221), .CK(clk), .RB(n165), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n220), .CK(clk), .RB(n165), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n219), .CK(clk), .RB(n165), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n218), .CK(clk), .RB(n165), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n216), .CK(clk), .RB(n165), .Q(buffer[32]) );
  INV1S U3 ( .I(N17), .O(n156) );
  INV1S U4 ( .I(n281), .O(n166) );
  INV1S U5 ( .I(n279), .O(n167) );
  NR2P U14 ( .I1(N16), .I2(N17), .O(n151) );
  XNR2HS U15 ( .I1(N17), .I2(wr_ptr[2]), .O(n263) );
  XOR2HS U16 ( .I1(N16), .I2(n171), .O(n262) );
  INV1S U17 ( .I(data_in[0]), .O(n180) );
  INV1S U18 ( .I(data_in[1]), .O(n179) );
  INV1S U19 ( .I(data_in[2]), .O(n178) );
  INV1S U20 ( .I(data_in[3]), .O(n177) );
  INV1S U21 ( .I(data_in[4]), .O(n176) );
  INV1S U22 ( .I(data_in[5]), .O(n175) );
  INV1S U23 ( .I(data_in[6]), .O(n174) );
  INV1S U24 ( .I(data_in[7]), .O(n173) );
  NR2 U25 ( .I1(n281), .I2(n171), .O(n283) );
  INV1S U26 ( .I(wr_ptr[2]), .O(n172) );
  INV1S U27 ( .I(wr_ptr[1]), .O(n171) );
  INV1S U28 ( .I(wr_ptr[0]), .O(n170) );
  INV1S U29 ( .I(n278), .O(n168) );
  ND2 U30 ( .I1(r_en), .I2(n266), .O(n278) );
  ND3 U31 ( .I1(n263), .I2(n262), .I3(n259), .O(n266) );
  XOR2HS U32 ( .I1(n169), .I2(wr_ptr[0]), .O(n259) );
  AOI13HS U33 ( .B1(n265), .B2(n169), .B3(wr_ptr[0]), .A1(n264), .O(n270) );
  AN4B1S U34 ( .I1(n263), .I2(n170), .I3(n262), .B1(n169), .O(n264) );
  ND3 U35 ( .I1(N16), .I2(n171), .I3(n263), .O(n260) );
  MOAI1S U36 ( .A1(n180), .A2(n282), .B1(buffer[32]), .B2(n282), .O(n216) );
  MOAI1S U37 ( .A1(n179), .A2(n282), .B1(buffer[33]), .B2(n282), .O(n218) );
  MOAI1S U38 ( .A1(n178), .A2(n282), .B1(buffer[34]), .B2(n282), .O(n219) );
  MOAI1S U39 ( .A1(n177), .A2(n282), .B1(buffer[35]), .B2(n282), .O(n220) );
  MOAI1S U40 ( .A1(n176), .A2(n282), .B1(buffer[36]), .B2(n282), .O(n221) );
  MOAI1S U41 ( .A1(n175), .A2(n282), .B1(buffer[37]), .B2(n282), .O(n222) );
  MOAI1S U42 ( .A1(n174), .A2(n282), .B1(buffer[38]), .B2(n282), .O(n223) );
  MOAI1S U43 ( .A1(n173), .A2(n282), .B1(buffer[39]), .B2(n282), .O(n217) );
  MOAI1S U44 ( .A1(n180), .A2(n276), .B1(buffer[48]), .B2(n276), .O(n232) );
  MOAI1S U45 ( .A1(n179), .A2(n276), .B1(buffer[49]), .B2(n276), .O(n234) );
  MOAI1S U46 ( .A1(n178), .A2(n276), .B1(buffer[50]), .B2(n276), .O(n235) );
  MOAI1S U47 ( .A1(n177), .A2(n276), .B1(buffer[51]), .B2(n276), .O(n236) );
  MOAI1S U48 ( .A1(n176), .A2(n276), .B1(buffer[52]), .B2(n276), .O(n237) );
  MOAI1S U49 ( .A1(n175), .A2(n276), .B1(buffer[53]), .B2(n276), .O(n238) );
  MOAI1S U50 ( .A1(n174), .A2(n276), .B1(buffer[54]), .B2(n276), .O(n239) );
  MOAI1S U51 ( .A1(n173), .A2(n276), .B1(buffer[55]), .B2(n276), .O(n233) );
  MOAI1S U52 ( .A1(n180), .A2(n273), .B1(buffer[16]), .B2(n273), .O(n200) );
  MOAI1S U53 ( .A1(n179), .A2(n273), .B1(buffer[17]), .B2(n273), .O(n202) );
  MOAI1S U54 ( .A1(n178), .A2(n273), .B1(buffer[18]), .B2(n273), .O(n203) );
  MOAI1S U55 ( .A1(n177), .A2(n273), .B1(buffer[19]), .B2(n273), .O(n204) );
  MOAI1S U56 ( .A1(n176), .A2(n273), .B1(buffer[20]), .B2(n273), .O(n205) );
  MOAI1S U57 ( .A1(n175), .A2(n273), .B1(buffer[21]), .B2(n273), .O(n206) );
  MOAI1S U58 ( .A1(n174), .A2(n273), .B1(buffer[22]), .B2(n273), .O(n207) );
  MOAI1S U59 ( .A1(n173), .A2(n273), .B1(buffer[23]), .B2(n273), .O(n201) );
  MOAI1S U60 ( .A1(n180), .A2(n271), .B1(buffer[0]), .B2(n271), .O(n184) );
  MOAI1S U61 ( .A1(n179), .A2(n271), .B1(buffer[1]), .B2(n271), .O(n186) );
  MOAI1S U62 ( .A1(n178), .A2(n271), .B1(buffer[2]), .B2(n271), .O(n187) );
  MOAI1S U63 ( .A1(n177), .A2(n271), .B1(buffer[3]), .B2(n271), .O(n188) );
  MOAI1S U64 ( .A1(n176), .A2(n271), .B1(buffer[4]), .B2(n271), .O(n189) );
  MOAI1S U65 ( .A1(n175), .A2(n271), .B1(buffer[5]), .B2(n271), .O(n190) );
  MOAI1S U66 ( .A1(n174), .A2(n271), .B1(buffer[6]), .B2(n271), .O(n191) );
  MOAI1S U67 ( .A1(n173), .A2(n271), .B1(buffer[7]), .B2(n271), .O(n185) );
  MOAI1S U68 ( .A1(n180), .A2(n275), .B1(buffer[40]), .B2(n275), .O(n224) );
  MOAI1S U69 ( .A1(n179), .A2(n275), .B1(buffer[41]), .B2(n275), .O(n226) );
  MOAI1S U70 ( .A1(n178), .A2(n275), .B1(buffer[42]), .B2(n275), .O(n227) );
  MOAI1S U71 ( .A1(n177), .A2(n275), .B1(buffer[43]), .B2(n275), .O(n228) );
  MOAI1S U72 ( .A1(n176), .A2(n275), .B1(buffer[44]), .B2(n275), .O(n229) );
  MOAI1S U73 ( .A1(n175), .A2(n275), .B1(buffer[45]), .B2(n275), .O(n230) );
  MOAI1S U74 ( .A1(n174), .A2(n275), .B1(buffer[46]), .B2(n275), .O(n231) );
  MOAI1S U75 ( .A1(n173), .A2(n275), .B1(buffer[47]), .B2(n275), .O(n225) );
  MOAI1S U76 ( .A1(n180), .A2(n274), .B1(buffer[24]), .B2(n274), .O(n208) );
  MOAI1S U77 ( .A1(n179), .A2(n274), .B1(buffer[25]), .B2(n274), .O(n210) );
  MOAI1S U78 ( .A1(n178), .A2(n274), .B1(buffer[26]), .B2(n274), .O(n211) );
  MOAI1S U79 ( .A1(n177), .A2(n274), .B1(buffer[27]), .B2(n274), .O(n212) );
  MOAI1S U81 ( .A1(n176), .A2(n274), .B1(buffer[28]), .B2(n274), .O(n213) );
  MOAI1S U82 ( .A1(n175), .A2(n274), .B1(buffer[29]), .B2(n274), .O(n214) );
  MOAI1S U83 ( .A1(n174), .A2(n274), .B1(buffer[30]), .B2(n274), .O(n215) );
  BUF1CK U84 ( .I(n159), .O(n163) );
  MOAI1S U85 ( .A1(n173), .A2(n274), .B1(buffer[31]), .B2(n274), .O(n209) );
  MOAI1S U86 ( .A1(n180), .A2(n272), .B1(buffer[8]), .B2(n272), .O(n192) );
  MOAI1S U87 ( .A1(n179), .A2(n272), .B1(buffer[9]), .B2(n272), .O(n194) );
  MOAI1S U88 ( .A1(n178), .A2(n272), .B1(buffer[10]), .B2(n272), .O(n195) );
  MOAI1S U89 ( .A1(n177), .A2(n272), .B1(buffer[11]), .B2(n272), .O(n196) );
  MOAI1S U90 ( .A1(n176), .A2(n272), .B1(buffer[12]), .B2(n272), .O(n197) );
  MOAI1S U91 ( .A1(n175), .A2(n272), .B1(buffer[13]), .B2(n272), .O(n198) );
  BUF1CK U92 ( .I(n158), .O(n162) );
  MOAI1S U93 ( .A1(n174), .A2(n272), .B1(buffer[14]), .B2(n272), .O(n199) );
  BUF1CK U94 ( .I(n158), .O(n161) );
  MOAI1S U95 ( .A1(n173), .A2(n272), .B1(buffer[15]), .B2(n272), .O(n193) );
  MOAI1S U96 ( .A1(n277), .A2(n180), .B1(buffer[56]), .B2(n277), .O(n240) );
  MOAI1S U97 ( .A1(n277), .A2(n179), .B1(buffer[57]), .B2(n277), .O(n242) );
  MOAI1S U100 ( .A1(n277), .A2(n178), .B1(buffer[58]), .B2(n277), .O(n243) );
  MOAI1S U101 ( .A1(n277), .A2(n177), .B1(buffer[59]), .B2(n277), .O(n244) );
  MOAI1S U102 ( .A1(n277), .A2(n176), .B1(buffer[60]), .B2(n277), .O(n245) );
  MOAI1S U103 ( .A1(n277), .A2(n175), .B1(buffer[61]), .B2(n277), .O(n246) );
  BUF1CK U104 ( .I(n160), .O(n165) );
  MOAI1S U107 ( .A1(n277), .A2(n174), .B1(buffer[62]), .B2(n277), .O(n247) );
  BUF1CK U108 ( .I(n159), .O(n164) );
  MOAI1S U109 ( .A1(n277), .A2(n173), .B1(buffer[63]), .B2(n277), .O(n241) );
  OAI12HS U110 ( .B1(n283), .B2(n172), .A1(n282), .O(n258) );
  XOR2HS U111 ( .I1(n171), .I2(n281), .O(n257) );
  OAI12HS U112 ( .B1(n280), .B2(n170), .A1(n279), .O(n256) );
  MOAI1S U113 ( .A1(N16), .A2(n269), .B1(n267), .B2(N16), .O(n182) );
  MOAI1S U115 ( .A1(n157), .A2(n269), .B1(n268), .B2(N17), .O(n183) );
  OR2 U117 ( .I1(n157), .I2(n267), .O(n268) );
  XOR2HS U118 ( .I1(n169), .I2(n278), .O(n181) );
  INV1S U119 ( .I(n266), .O(empty) );
  INV1S U120 ( .I(n270), .O(full) );
  BUF1S U121 ( .I(rst), .O(n160) );
  BUF1S U122 ( .I(rst), .O(n159) );
  BUF1S U123 ( .I(rst), .O(n158) );
  NR2P U124 ( .I1(n156), .I2(n157), .O(n148) );
  ND2 U125 ( .I1(n283), .I2(n172), .O(n282) );
  ND3 U126 ( .I1(n171), .I2(n172), .I3(n166), .O(n276) );
  ND3 U127 ( .I1(wr_ptr[2]), .I2(n171), .I3(n166), .O(n273) );
  ND2 U128 ( .I1(n283), .I2(wr_ptr[2]), .O(n271) );
  ND3 U129 ( .I1(wr_ptr[1]), .I2(n172), .I3(n167), .O(n275) );
  ND3 U130 ( .I1(n171), .I2(n172), .I3(n167), .O(n277) );
  ND3 U131 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n167), .O(n272) );
  ND3 U132 ( .I1(wr_ptr[2]), .I2(n171), .I3(n167), .O(n274) );
  NR2P U133 ( .I1(n157), .I2(N17), .O(n1501) );
  NR2P U134 ( .I1(n156), .I2(N16), .O(n149) );
  INV1S U135 ( .I(N16), .O(n157) );
  INV1S U136 ( .I(N15), .O(n169) );
  AOI22S U137 ( .A1(buffer[24]), .A2(n149), .B1(buffer[8]), .B2(n148), .O(n2)
         );
  AOI22S U138 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n1501), .O(n1) );
  AN2 U139 ( .I1(n2), .I2(n1), .O(n6) );
  AOI22S U140 ( .A1(buffer[16]), .A2(n149), .B1(buffer[0]), .B2(n148), .O(n4)
         );
  AOI22S U141 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n1501), .O(n3) );
  ND2 U142 ( .I1(n4), .I2(n3), .O(n5) );
  MOAI1S U143 ( .A1(N15), .A2(n6), .B1(n5), .B2(N15), .O(N55) );
  AOI22S U144 ( .A1(buffer[25]), .A2(n149), .B1(buffer[9]), .B2(n148), .O(n8)
         );
  AOI22S U145 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n1501), .O(n7) );
  AN2 U146 ( .I1(n8), .I2(n7), .O(n18) );
  AOI22S U147 ( .A1(buffer[17]), .A2(n149), .B1(buffer[1]), .B2(n148), .O(n12)
         );
  AOI22S U148 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n1501), .O(
        n10) );
  ND2 U149 ( .I1(n12), .I2(n10), .O(n1500) );
  MOAI1S U150 ( .A1(N15), .A2(n18), .B1(n1500), .B2(N15), .O(N54) );
  AOI22S U151 ( .A1(buffer[26]), .A2(n149), .B1(buffer[10]), .B2(n148), .O(n21) );
  AOI22S U152 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n1501), .O(
        n20) );
  AN2 U153 ( .I1(n21), .I2(n20), .O(n25) );
  AOI22S U154 ( .A1(buffer[18]), .A2(n149), .B1(buffer[2]), .B2(n148), .O(n23)
         );
  AOI22S U155 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n1501), .O(
        n22) );
  ND2 U156 ( .I1(n23), .I2(n22), .O(n24) );
  MOAI1S U157 ( .A1(N15), .A2(n25), .B1(n24), .B2(N15), .O(N53) );
  AOI22S U158 ( .A1(buffer[27]), .A2(n149), .B1(buffer[11]), .B2(n148), .O(n27) );
  AOI22S U159 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n1501), .O(
        n26) );
  AN2 U160 ( .I1(n27), .I2(n26), .O(n41) );
  AOI22S U161 ( .A1(buffer[19]), .A2(n149), .B1(buffer[3]), .B2(n148), .O(n30)
         );
  AOI22S U162 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n1501), .O(
        n28) );
  ND2 U163 ( .I1(n30), .I2(n28), .O(n37) );
  MOAI1S U164 ( .A1(N15), .A2(n41), .B1(n37), .B2(N15), .O(N52) );
  AOI22S U165 ( .A1(buffer[28]), .A2(n149), .B1(buffer[12]), .B2(n148), .O(
        n129) );
  AOI22S U166 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n1501), .O(
        n128) );
  AN2 U167 ( .I1(n129), .I2(n128), .O(n133) );
  AOI22S U168 ( .A1(buffer[20]), .A2(n149), .B1(buffer[4]), .B2(n148), .O(n131) );
  AOI22S U169 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n1501), .O(
        n130) );
  ND2 U170 ( .I1(n131), .I2(n130), .O(n132) );
  MOAI1S U171 ( .A1(N15), .A2(n133), .B1(n132), .B2(N15), .O(N51) );
  AOI22S U172 ( .A1(buffer[29]), .A2(n149), .B1(buffer[13]), .B2(n148), .O(
        n135) );
  AOI22S U173 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n1501), .O(
        n134) );
  AN2 U174 ( .I1(n135), .I2(n134), .O(n139) );
  AOI22S U175 ( .A1(buffer[21]), .A2(n149), .B1(buffer[5]), .B2(n148), .O(n137) );
  AOI22S U176 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n1501), .O(
        n136) );
  ND2 U177 ( .I1(n137), .I2(n136), .O(n138) );
  MOAI1S U178 ( .A1(N15), .A2(n139), .B1(n138), .B2(N15), .O(N50) );
  AOI22S U179 ( .A1(buffer[30]), .A2(n149), .B1(buffer[14]), .B2(n148), .O(
        n141) );
  AOI22S U180 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n1501), .O(
        n140) );
  AN2 U181 ( .I1(n141), .I2(n140), .O(n145) );
  AOI22S U182 ( .A1(buffer[22]), .A2(n149), .B1(buffer[6]), .B2(n148), .O(n143) );
  AOI22S U183 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n1501), .O(
        n142) );
  ND2 U184 ( .I1(n143), .I2(n142), .O(n144) );
  MOAI1S U185 ( .A1(N15), .A2(n145), .B1(n144), .B2(N15), .O(N49) );
  AOI22S U186 ( .A1(buffer[23]), .A2(n149), .B1(buffer[7]), .B2(n148), .O(n147) );
  AOI22S U187 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n1501), .O(
        n146) );
  AN2 U188 ( .I1(n147), .I2(n146), .O(n155) );
  AOI22S U189 ( .A1(buffer[31]), .A2(n149), .B1(buffer[15]), .B2(n148), .O(
        n153) );
  AOI22S U190 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n1501), .O(
        n152) );
  ND2 U191 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U192 ( .A1(n155), .A2(n169), .B1(n154), .B2(n169), .O(N48) );
endmodule


module sync_fifo_0 ( clk, rst, data_in, w_en, r_en, data_out, empty, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, w_en, r_en;
  output empty, full;
  wire   N15, N16, N17, N48, N49, N50, N51, N52, N53, N54, N55, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n12, n1500, n18, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n30, n37, n41, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n1501, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283;
  wire   [2:0] wr_ptr;
  wire   [63:0] buffer;

  AO22 U6 ( .A1(data_out[1]), .A2(n278), .B1(N54), .B2(n168), .O(n255) );
  AO22 U7 ( .A1(data_out[2]), .A2(n278), .B1(N53), .B2(n168), .O(n254) );
  AO22 U8 ( .A1(data_out[3]), .A2(n278), .B1(N52), .B2(n168), .O(n253) );
  AO22 U9 ( .A1(data_out[4]), .A2(n278), .B1(N51), .B2(n168), .O(n252) );
  AO22 U10 ( .A1(data_out[5]), .A2(n278), .B1(N50), .B2(n168), .O(n251) );
  AO22 U11 ( .A1(data_out[6]), .A2(n278), .B1(N49), .B2(n168), .O(n250) );
  AO22 U12 ( .A1(data_out[7]), .A2(n278), .B1(N48), .B2(n168), .O(n249) );
  AO22 U13 ( .A1(data_out[0]), .A2(n278), .B1(N55), .B2(n168), .O(n248) );
  ND2 U80 ( .I1(n280), .I2(n170), .O(n279) );
  ND2 U98 ( .I1(n280), .I2(wr_ptr[0]), .O(n281) );
  AN2 U99 ( .I1(w_en), .I2(n270), .O(n280) );
  AO12 U105 ( .B1(N17), .B2(N16), .A1(n267), .O(n269) );
  ND2 U106 ( .I1(n168), .I2(N15), .O(n267) );
  ND2 U114 ( .I1(n261), .I2(n260), .O(n265) );
  OR3 U116 ( .I1(n263), .I2(N16), .I3(n171), .O(n261) );
  QDFFRBN rd_ptr_reg_0_ ( .D(n181), .CK(clk), .RB(rst), .Q(N15) );
  QDFFRBN data_out_reg_7_ ( .D(n249), .CK(clk), .RB(n165), .Q(data_out[7]) );
  QDFFRBN data_out_reg_6_ ( .D(n250), .CK(clk), .RB(n165), .Q(data_out[6]) );
  QDFFRBN data_out_reg_5_ ( .D(n251), .CK(clk), .RB(n165), .Q(data_out[5]) );
  QDFFRBN data_out_reg_4_ ( .D(n252), .CK(clk), .RB(n165), .Q(data_out[4]) );
  QDFFRBN data_out_reg_3_ ( .D(n253), .CK(clk), .RB(n165), .Q(data_out[3]) );
  QDFFRBN data_out_reg_2_ ( .D(n254), .CK(clk), .RB(n165), .Q(data_out[2]) );
  QDFFRBN data_out_reg_1_ ( .D(n255), .CK(clk), .RB(n165), .Q(data_out[1]) );
  QDFFRBN data_out_reg_0_ ( .D(n248), .CK(clk), .RB(n165), .Q(data_out[0]) );
  QDFFRBN rd_ptr_reg_2_ ( .D(n183), .CK(clk), .RB(n165), .Q(N17) );
  QDFFRBN rd_ptr_reg_1_ ( .D(n182), .CK(clk), .RB(n165), .Q(N16) );
  QDFFRBN wr_ptr_reg_0_ ( .D(n256), .CK(clk), .RB(n165), .Q(wr_ptr[0]) );
  QDFFRBN wr_ptr_reg_1_ ( .D(n257), .CK(clk), .RB(n164), .Q(wr_ptr[1]) );
  QDFFRBN wr_ptr_reg_2_ ( .D(n258), .CK(clk), .RB(n164), .Q(wr_ptr[2]) );
  QDFFRBN buffer_reg_0__7_ ( .D(n241), .CK(clk), .RB(n159), .Q(buffer[63]) );
  QDFFRBN buffer_reg_0__6_ ( .D(n247), .CK(clk), .RB(n163), .Q(buffer[62]) );
  QDFFRBN buffer_reg_0__5_ ( .D(n246), .CK(clk), .RB(n163), .Q(buffer[61]) );
  QDFFRBN buffer_reg_0__4_ ( .D(n245), .CK(clk), .RB(n163), .Q(buffer[60]) );
  QDFFRBN buffer_reg_0__3_ ( .D(n244), .CK(clk), .RB(n163), .Q(buffer[59]) );
  QDFFRBN buffer_reg_0__2_ ( .D(n243), .CK(clk), .RB(n158), .Q(buffer[58]) );
  QDFFRBN buffer_reg_0__1_ ( .D(n242), .CK(clk), .RB(n159), .Q(buffer[57]) );
  QDFFRBN buffer_reg_0__0_ ( .D(n240), .CK(clk), .RB(n158), .Q(buffer[56]) );
  QDFFRBN buffer_reg_6__7_ ( .D(n193), .CK(clk), .RB(n160), .Q(buffer[15]) );
  QDFFRBN buffer_reg_6__6_ ( .D(n199), .CK(clk), .RB(n161), .Q(buffer[14]) );
  QDFFRBN buffer_reg_6__5_ ( .D(n198), .CK(clk), .RB(n161), .Q(buffer[13]) );
  QDFFRBN buffer_reg_6__4_ ( .D(n197), .CK(clk), .RB(n161), .Q(buffer[12]) );
  QDFFRBN buffer_reg_6__3_ ( .D(n196), .CK(clk), .RB(n161), .Q(buffer[11]) );
  QDFFRBN buffer_reg_6__2_ ( .D(n195), .CK(clk), .RB(n161), .Q(buffer[10]) );
  QDFFRBN buffer_reg_6__1_ ( .D(n194), .CK(clk), .RB(n160), .Q(buffer[9]) );
  QDFFRBN buffer_reg_6__0_ ( .D(n192), .CK(clk), .RB(n160), .Q(buffer[8]) );
  QDFFRBN buffer_reg_4__7_ ( .D(n209), .CK(clk), .RB(n162), .Q(buffer[31]) );
  QDFFRBN buffer_reg_4__6_ ( .D(n215), .CK(clk), .RB(n162), .Q(buffer[30]) );
  QDFFRBN buffer_reg_4__5_ ( .D(n214), .CK(clk), .RB(n162), .Q(buffer[29]) );
  QDFFRBN buffer_reg_4__4_ ( .D(n213), .CK(clk), .RB(n162), .Q(buffer[28]) );
  QDFFRBN buffer_reg_4__3_ ( .D(n212), .CK(clk), .RB(n162), .Q(buffer[27]) );
  QDFFRBN buffer_reg_4__2_ ( .D(n211), .CK(clk), .RB(n162), .Q(buffer[26]) );
  QDFFRBN buffer_reg_4__1_ ( .D(n210), .CK(clk), .RB(n162), .Q(buffer[25]) );
  QDFFRBN buffer_reg_4__0_ ( .D(n208), .CK(clk), .RB(n162), .Q(buffer[24]) );
  QDFFRBN buffer_reg_2__7_ ( .D(n225), .CK(clk), .RB(n164), .Q(buffer[47]) );
  QDFFRBN buffer_reg_2__6_ ( .D(n231), .CK(clk), .RB(n164), .Q(buffer[46]) );
  QDFFRBN buffer_reg_2__5_ ( .D(n230), .CK(clk), .RB(n164), .Q(buffer[45]) );
  QDFFRBN buffer_reg_2__4_ ( .D(n229), .CK(clk), .RB(n164), .Q(buffer[44]) );
  QDFFRBN buffer_reg_2__3_ ( .D(n228), .CK(clk), .RB(n164), .Q(buffer[43]) );
  QDFFRBN buffer_reg_2__2_ ( .D(n227), .CK(clk), .RB(n164), .Q(buffer[42]) );
  QDFFRBN buffer_reg_2__1_ ( .D(n226), .CK(clk), .RB(n164), .Q(buffer[41]) );
  QDFFRBN buffer_reg_2__0_ ( .D(n224), .CK(clk), .RB(n164), .Q(buffer[40]) );
  QDFFRBN buffer_reg_7__7_ ( .D(n185), .CK(clk), .RB(n160), .Q(buffer[7]) );
  QDFFRBN buffer_reg_7__6_ ( .D(n191), .CK(clk), .RB(n160), .Q(buffer[6]) );
  QDFFRBN buffer_reg_7__5_ ( .D(n190), .CK(clk), .RB(n160), .Q(buffer[5]) );
  QDFFRBN buffer_reg_7__4_ ( .D(n189), .CK(clk), .RB(n160), .Q(buffer[4]) );
  QDFFRBN buffer_reg_7__3_ ( .D(n188), .CK(clk), .RB(n160), .Q(buffer[3]) );
  QDFFRBN buffer_reg_7__2_ ( .D(n187), .CK(clk), .RB(n160), .Q(buffer[2]) );
  QDFFRBN buffer_reg_7__1_ ( .D(n186), .CK(clk), .RB(n160), .Q(buffer[1]) );
  QDFFRBN buffer_reg_7__0_ ( .D(n184), .CK(clk), .RB(n160), .Q(buffer[0]) );
  QDFFRBN buffer_reg_5__7_ ( .D(n201), .CK(clk), .RB(n161), .Q(buffer[23]) );
  QDFFRBN buffer_reg_5__6_ ( .D(n207), .CK(clk), .RB(n162), .Q(buffer[22]) );
  QDFFRBN buffer_reg_5__5_ ( .D(n206), .CK(clk), .RB(n162), .Q(buffer[21]) );
  QDFFRBN buffer_reg_5__4_ ( .D(n205), .CK(clk), .RB(n161), .Q(buffer[20]) );
  QDFFRBN buffer_reg_5__3_ ( .D(n204), .CK(clk), .RB(n161), .Q(buffer[19]) );
  QDFFRBN buffer_reg_5__2_ ( .D(n203), .CK(clk), .RB(n161), .Q(buffer[18]) );
  QDFFRBN buffer_reg_5__1_ ( .D(n202), .CK(clk), .RB(n161), .Q(buffer[17]) );
  QDFFRBN buffer_reg_5__0_ ( .D(n200), .CK(clk), .RB(n161), .Q(buffer[16]) );
  QDFFRBN buffer_reg_1__7_ ( .D(n233), .CK(clk), .RB(n159), .Q(buffer[55]) );
  QDFFRBN buffer_reg_1__6_ ( .D(n239), .CK(clk), .RB(n158), .Q(buffer[54]) );
  QDFFRBN buffer_reg_1__5_ ( .D(n238), .CK(clk), .RB(n159), .Q(buffer[53]) );
  QDFFRBN buffer_reg_1__4_ ( .D(n237), .CK(clk), .RB(n159), .Q(buffer[52]) );
  QDFFRBN buffer_reg_1__3_ ( .D(n236), .CK(clk), .RB(n159), .Q(buffer[51]) );
  QDFFRBN buffer_reg_1__2_ ( .D(n235), .CK(clk), .RB(rst), .Q(buffer[50]) );
  QDFFRBN buffer_reg_1__1_ ( .D(n234), .CK(clk), .RB(rst), .Q(buffer[49]) );
  QDFFRBN buffer_reg_1__0_ ( .D(n232), .CK(clk), .RB(n162), .Q(buffer[48]) );
  QDFFRBN buffer_reg_3__7_ ( .D(n217), .CK(clk), .RB(n163), .Q(buffer[39]) );
  QDFFRBN buffer_reg_3__6_ ( .D(n223), .CK(clk), .RB(n164), .Q(buffer[38]) );
  QDFFRBN buffer_reg_3__5_ ( .D(n222), .CK(clk), .RB(n163), .Q(buffer[37]) );
  QDFFRBN buffer_reg_3__4_ ( .D(n221), .CK(clk), .RB(n163), .Q(buffer[36]) );
  QDFFRBN buffer_reg_3__3_ ( .D(n220), .CK(clk), .RB(n163), .Q(buffer[35]) );
  QDFFRBN buffer_reg_3__2_ ( .D(n219), .CK(clk), .RB(n163), .Q(buffer[34]) );
  QDFFRBN buffer_reg_3__1_ ( .D(n218), .CK(clk), .RB(n163), .Q(buffer[33]) );
  QDFFRBN buffer_reg_3__0_ ( .D(n216), .CK(clk), .RB(n163), .Q(buffer[32]) );
  INV1S U3 ( .I(N17), .O(n156) );
  INV1S U4 ( .I(n281), .O(n166) );
  INV1S U5 ( .I(n279), .O(n167) );
  NR2P U14 ( .I1(N16), .I2(N17), .O(n151) );
  XNR2HS U15 ( .I1(N17), .I2(wr_ptr[2]), .O(n263) );
  XOR2HS U16 ( .I1(N16), .I2(n171), .O(n262) );
  INV1S U17 ( .I(data_in[0]), .O(n180) );
  INV1S U18 ( .I(data_in[1]), .O(n179) );
  INV1S U19 ( .I(data_in[2]), .O(n178) );
  INV1S U20 ( .I(data_in[3]), .O(n177) );
  INV1S U21 ( .I(data_in[4]), .O(n176) );
  INV1S U22 ( .I(data_in[5]), .O(n175) );
  INV1S U23 ( .I(data_in[6]), .O(n174) );
  INV1S U24 ( .I(data_in[7]), .O(n173) );
  NR2 U25 ( .I1(n281), .I2(n171), .O(n283) );
  INV1S U26 ( .I(wr_ptr[2]), .O(n172) );
  INV1S U27 ( .I(wr_ptr[1]), .O(n171) );
  INV1S U28 ( .I(wr_ptr[0]), .O(n170) );
  INV1S U29 ( .I(n278), .O(n168) );
  ND2 U30 ( .I1(r_en), .I2(n266), .O(n278) );
  ND3 U31 ( .I1(n263), .I2(n262), .I3(n259), .O(n266) );
  XOR2HS U32 ( .I1(n169), .I2(wr_ptr[0]), .O(n259) );
  AOI13HS U33 ( .B1(n265), .B2(n169), .B3(wr_ptr[0]), .A1(n264), .O(n270) );
  AN4B1S U34 ( .I1(n263), .I2(n170), .I3(n262), .B1(n169), .O(n264) );
  ND3 U35 ( .I1(N16), .I2(n171), .I3(n263), .O(n260) );
  MOAI1S U36 ( .A1(n180), .A2(n282), .B1(buffer[32]), .B2(n282), .O(n216) );
  MOAI1S U37 ( .A1(n179), .A2(n282), .B1(buffer[33]), .B2(n282), .O(n218) );
  MOAI1S U38 ( .A1(n178), .A2(n282), .B1(buffer[34]), .B2(n282), .O(n219) );
  MOAI1S U39 ( .A1(n177), .A2(n282), .B1(buffer[35]), .B2(n282), .O(n220) );
  MOAI1S U40 ( .A1(n176), .A2(n282), .B1(buffer[36]), .B2(n282), .O(n221) );
  MOAI1S U41 ( .A1(n175), .A2(n282), .B1(buffer[37]), .B2(n282), .O(n222) );
  MOAI1S U42 ( .A1(n174), .A2(n282), .B1(buffer[38]), .B2(n282), .O(n223) );
  MOAI1S U43 ( .A1(n173), .A2(n282), .B1(buffer[39]), .B2(n282), .O(n217) );
  MOAI1S U44 ( .A1(n180), .A2(n276), .B1(buffer[48]), .B2(n276), .O(n232) );
  MOAI1S U45 ( .A1(n179), .A2(n276), .B1(buffer[49]), .B2(n276), .O(n234) );
  MOAI1S U46 ( .A1(n178), .A2(n276), .B1(buffer[50]), .B2(n276), .O(n235) );
  MOAI1S U47 ( .A1(n177), .A2(n276), .B1(buffer[51]), .B2(n276), .O(n236) );
  MOAI1S U48 ( .A1(n176), .A2(n276), .B1(buffer[52]), .B2(n276), .O(n237) );
  MOAI1S U49 ( .A1(n175), .A2(n276), .B1(buffer[53]), .B2(n276), .O(n238) );
  MOAI1S U50 ( .A1(n174), .A2(n276), .B1(buffer[54]), .B2(n276), .O(n239) );
  MOAI1S U51 ( .A1(n173), .A2(n276), .B1(buffer[55]), .B2(n276), .O(n233) );
  MOAI1S U52 ( .A1(n180), .A2(n273), .B1(buffer[16]), .B2(n273), .O(n200) );
  MOAI1S U53 ( .A1(n179), .A2(n273), .B1(buffer[17]), .B2(n273), .O(n202) );
  MOAI1S U54 ( .A1(n178), .A2(n273), .B1(buffer[18]), .B2(n273), .O(n203) );
  MOAI1S U55 ( .A1(n177), .A2(n273), .B1(buffer[19]), .B2(n273), .O(n204) );
  MOAI1S U56 ( .A1(n176), .A2(n273), .B1(buffer[20]), .B2(n273), .O(n205) );
  MOAI1S U57 ( .A1(n175), .A2(n273), .B1(buffer[21]), .B2(n273), .O(n206) );
  MOAI1S U58 ( .A1(n174), .A2(n273), .B1(buffer[22]), .B2(n273), .O(n207) );
  MOAI1S U59 ( .A1(n173), .A2(n273), .B1(buffer[23]), .B2(n273), .O(n201) );
  MOAI1S U60 ( .A1(n180), .A2(n271), .B1(buffer[0]), .B2(n271), .O(n184) );
  MOAI1S U61 ( .A1(n179), .A2(n271), .B1(buffer[1]), .B2(n271), .O(n186) );
  MOAI1S U62 ( .A1(n178), .A2(n271), .B1(buffer[2]), .B2(n271), .O(n187) );
  MOAI1S U63 ( .A1(n177), .A2(n271), .B1(buffer[3]), .B2(n271), .O(n188) );
  MOAI1S U64 ( .A1(n176), .A2(n271), .B1(buffer[4]), .B2(n271), .O(n189) );
  MOAI1S U65 ( .A1(n175), .A2(n271), .B1(buffer[5]), .B2(n271), .O(n190) );
  MOAI1S U66 ( .A1(n174), .A2(n271), .B1(buffer[6]), .B2(n271), .O(n191) );
  MOAI1S U67 ( .A1(n173), .A2(n271), .B1(buffer[7]), .B2(n271), .O(n185) );
  MOAI1S U68 ( .A1(n180), .A2(n275), .B1(buffer[40]), .B2(n275), .O(n224) );
  MOAI1S U69 ( .A1(n179), .A2(n275), .B1(buffer[41]), .B2(n275), .O(n226) );
  MOAI1S U70 ( .A1(n178), .A2(n275), .B1(buffer[42]), .B2(n275), .O(n227) );
  MOAI1S U71 ( .A1(n177), .A2(n275), .B1(buffer[43]), .B2(n275), .O(n228) );
  MOAI1S U72 ( .A1(n176), .A2(n275), .B1(buffer[44]), .B2(n275), .O(n229) );
  MOAI1S U73 ( .A1(n175), .A2(n275), .B1(buffer[45]), .B2(n275), .O(n230) );
  MOAI1S U74 ( .A1(n174), .A2(n275), .B1(buffer[46]), .B2(n275), .O(n231) );
  MOAI1S U75 ( .A1(n173), .A2(n275), .B1(buffer[47]), .B2(n275), .O(n225) );
  MOAI1S U76 ( .A1(n180), .A2(n274), .B1(buffer[24]), .B2(n274), .O(n208) );
  MOAI1S U77 ( .A1(n179), .A2(n274), .B1(buffer[25]), .B2(n274), .O(n210) );
  MOAI1S U78 ( .A1(n178), .A2(n274), .B1(buffer[26]), .B2(n274), .O(n211) );
  MOAI1S U79 ( .A1(n177), .A2(n274), .B1(buffer[27]), .B2(n274), .O(n212) );
  MOAI1S U81 ( .A1(n176), .A2(n274), .B1(buffer[28]), .B2(n274), .O(n213) );
  MOAI1S U82 ( .A1(n175), .A2(n274), .B1(buffer[29]), .B2(n274), .O(n214) );
  MOAI1S U83 ( .A1(n174), .A2(n274), .B1(buffer[30]), .B2(n274), .O(n215) );
  BUF1CK U84 ( .I(n159), .O(n162) );
  MOAI1S U85 ( .A1(n173), .A2(n274), .B1(buffer[31]), .B2(n274), .O(n209) );
  MOAI1S U86 ( .A1(n180), .A2(n272), .B1(buffer[8]), .B2(n272), .O(n192) );
  MOAI1S U87 ( .A1(n179), .A2(n272), .B1(buffer[9]), .B2(n272), .O(n194) );
  MOAI1S U88 ( .A1(n178), .A2(n272), .B1(buffer[10]), .B2(n272), .O(n195) );
  MOAI1S U89 ( .A1(n177), .A2(n272), .B1(buffer[11]), .B2(n272), .O(n196) );
  MOAI1S U90 ( .A1(n176), .A2(n272), .B1(buffer[12]), .B2(n272), .O(n197) );
  MOAI1S U91 ( .A1(n175), .A2(n272), .B1(buffer[13]), .B2(n272), .O(n198) );
  MOAI1S U92 ( .A1(n174), .A2(n272), .B1(buffer[14]), .B2(n272), .O(n199) );
  BUF1CK U93 ( .I(n158), .O(n160) );
  MOAI1S U94 ( .A1(n173), .A2(n272), .B1(buffer[15]), .B2(n272), .O(n193) );
  MOAI1S U95 ( .A1(n277), .A2(n180), .B1(buffer[56]), .B2(n277), .O(n240) );
  MOAI1S U96 ( .A1(n277), .A2(n179), .B1(buffer[57]), .B2(n277), .O(n242) );
  MOAI1S U97 ( .A1(n277), .A2(n178), .B1(buffer[58]), .B2(n277), .O(n243) );
  MOAI1S U100 ( .A1(n277), .A2(n177), .B1(buffer[59]), .B2(n277), .O(n244) );
  MOAI1S U101 ( .A1(n277), .A2(n176), .B1(buffer[60]), .B2(n277), .O(n245) );
  MOAI1S U102 ( .A1(n277), .A2(n175), .B1(buffer[61]), .B2(n277), .O(n246) );
  BUF1CK U103 ( .I(n161), .O(n163) );
  MOAI1S U104 ( .A1(n277), .A2(n174), .B1(buffer[62]), .B2(n277), .O(n247) );
  MOAI1S U107 ( .A1(n277), .A2(n173), .B1(buffer[63]), .B2(n277), .O(n241) );
  OAI12HS U108 ( .B1(n283), .B2(n172), .A1(n282), .O(n258) );
  BUF1CK U109 ( .I(n159), .O(n164) );
  XOR2HS U110 ( .I1(n171), .I2(n281), .O(n257) );
  OAI12HS U111 ( .B1(n280), .B2(n170), .A1(n279), .O(n256) );
  MOAI1S U112 ( .A1(N16), .A2(n269), .B1(n267), .B2(N16), .O(n182) );
  MOAI1S U113 ( .A1(n157), .A2(n269), .B1(n268), .B2(N17), .O(n183) );
  OR2 U115 ( .I1(n157), .I2(n267), .O(n268) );
  BUF1CK U117 ( .I(n158), .O(n165) );
  XOR2HS U118 ( .I1(n169), .I2(n278), .O(n181) );
  INV1S U119 ( .I(n266), .O(empty) );
  INV1S U120 ( .I(n270), .O(full) );
  BUF1CK U121 ( .I(n158), .O(n161) );
  BUF1S U122 ( .I(rst), .O(n159) );
  BUF1S U123 ( .I(rst), .O(n158) );
  NR2P U124 ( .I1(n156), .I2(n157), .O(n148) );
  INV1S U125 ( .I(N15), .O(n169) );
  ND2 U126 ( .I1(n283), .I2(n172), .O(n282) );
  ND3 U127 ( .I1(n171), .I2(n172), .I3(n166), .O(n276) );
  ND3 U128 ( .I1(wr_ptr[2]), .I2(n171), .I3(n166), .O(n273) );
  ND2 U129 ( .I1(n283), .I2(wr_ptr[2]), .O(n271) );
  ND3 U130 ( .I1(wr_ptr[1]), .I2(n172), .I3(n167), .O(n275) );
  ND3 U131 ( .I1(n171), .I2(n172), .I3(n167), .O(n277) );
  ND3 U132 ( .I1(wr_ptr[1]), .I2(wr_ptr[2]), .I3(n167), .O(n272) );
  ND3 U133 ( .I1(wr_ptr[2]), .I2(n171), .I3(n167), .O(n274) );
  NR2P U134 ( .I1(n157), .I2(N17), .O(n1501) );
  NR2P U135 ( .I1(n156), .I2(N16), .O(n149) );
  INV1S U136 ( .I(N16), .O(n157) );
  AOI22S U137 ( .A1(buffer[24]), .A2(n149), .B1(buffer[8]), .B2(n148), .O(n2)
         );
  AOI22S U138 ( .A1(buffer[56]), .A2(n151), .B1(buffer[40]), .B2(n1501), .O(n1) );
  AN2 U139 ( .I1(n2), .I2(n1), .O(n6) );
  AOI22S U140 ( .A1(buffer[16]), .A2(n149), .B1(buffer[0]), .B2(n148), .O(n4)
         );
  AOI22S U141 ( .A1(buffer[48]), .A2(n151), .B1(buffer[32]), .B2(n1501), .O(n3) );
  ND2 U142 ( .I1(n4), .I2(n3), .O(n5) );
  MOAI1S U143 ( .A1(N15), .A2(n6), .B1(n5), .B2(N15), .O(N55) );
  AOI22S U144 ( .A1(buffer[25]), .A2(n149), .B1(buffer[9]), .B2(n148), .O(n8)
         );
  AOI22S U145 ( .A1(buffer[57]), .A2(n151), .B1(buffer[41]), .B2(n1501), .O(n7) );
  AN2 U146 ( .I1(n8), .I2(n7), .O(n18) );
  AOI22S U147 ( .A1(buffer[17]), .A2(n149), .B1(buffer[1]), .B2(n148), .O(n12)
         );
  AOI22S U148 ( .A1(buffer[49]), .A2(n151), .B1(buffer[33]), .B2(n1501), .O(
        n10) );
  ND2 U149 ( .I1(n12), .I2(n10), .O(n1500) );
  MOAI1S U150 ( .A1(N15), .A2(n18), .B1(n1500), .B2(N15), .O(N54) );
  AOI22S U151 ( .A1(buffer[26]), .A2(n149), .B1(buffer[10]), .B2(n148), .O(n21) );
  AOI22S U152 ( .A1(buffer[58]), .A2(n151), .B1(buffer[42]), .B2(n1501), .O(
        n20) );
  AN2 U153 ( .I1(n21), .I2(n20), .O(n25) );
  AOI22S U154 ( .A1(buffer[18]), .A2(n149), .B1(buffer[2]), .B2(n148), .O(n23)
         );
  AOI22S U155 ( .A1(buffer[50]), .A2(n151), .B1(buffer[34]), .B2(n1501), .O(
        n22) );
  ND2 U156 ( .I1(n23), .I2(n22), .O(n24) );
  MOAI1S U157 ( .A1(N15), .A2(n25), .B1(n24), .B2(N15), .O(N53) );
  AOI22S U158 ( .A1(buffer[27]), .A2(n149), .B1(buffer[11]), .B2(n148), .O(n27) );
  AOI22S U159 ( .A1(buffer[59]), .A2(n151), .B1(buffer[43]), .B2(n1501), .O(
        n26) );
  AN2 U160 ( .I1(n27), .I2(n26), .O(n41) );
  AOI22S U161 ( .A1(buffer[19]), .A2(n149), .B1(buffer[3]), .B2(n148), .O(n30)
         );
  AOI22S U162 ( .A1(buffer[51]), .A2(n151), .B1(buffer[35]), .B2(n1501), .O(
        n28) );
  ND2 U163 ( .I1(n30), .I2(n28), .O(n37) );
  MOAI1S U164 ( .A1(N15), .A2(n41), .B1(n37), .B2(N15), .O(N52) );
  AOI22S U165 ( .A1(buffer[28]), .A2(n149), .B1(buffer[12]), .B2(n148), .O(
        n129) );
  AOI22S U166 ( .A1(buffer[60]), .A2(n151), .B1(buffer[44]), .B2(n1501), .O(
        n128) );
  AN2 U167 ( .I1(n129), .I2(n128), .O(n133) );
  AOI22S U168 ( .A1(buffer[20]), .A2(n149), .B1(buffer[4]), .B2(n148), .O(n131) );
  AOI22S U169 ( .A1(buffer[52]), .A2(n151), .B1(buffer[36]), .B2(n1501), .O(
        n130) );
  ND2 U170 ( .I1(n131), .I2(n130), .O(n132) );
  MOAI1S U171 ( .A1(N15), .A2(n133), .B1(n132), .B2(N15), .O(N51) );
  AOI22S U172 ( .A1(buffer[29]), .A2(n149), .B1(buffer[13]), .B2(n148), .O(
        n135) );
  AOI22S U173 ( .A1(buffer[61]), .A2(n151), .B1(buffer[45]), .B2(n1501), .O(
        n134) );
  AN2 U174 ( .I1(n135), .I2(n134), .O(n139) );
  AOI22S U175 ( .A1(buffer[21]), .A2(n149), .B1(buffer[5]), .B2(n148), .O(n137) );
  AOI22S U176 ( .A1(buffer[53]), .A2(n151), .B1(buffer[37]), .B2(n1501), .O(
        n136) );
  ND2 U177 ( .I1(n137), .I2(n136), .O(n138) );
  MOAI1S U178 ( .A1(N15), .A2(n139), .B1(n138), .B2(N15), .O(N50) );
  AOI22S U179 ( .A1(buffer[30]), .A2(n149), .B1(buffer[14]), .B2(n148), .O(
        n141) );
  AOI22S U180 ( .A1(buffer[62]), .A2(n151), .B1(buffer[46]), .B2(n1501), .O(
        n140) );
  AN2 U181 ( .I1(n141), .I2(n140), .O(n145) );
  AOI22S U182 ( .A1(buffer[22]), .A2(n149), .B1(buffer[6]), .B2(n148), .O(n143) );
  AOI22S U183 ( .A1(buffer[54]), .A2(n151), .B1(buffer[38]), .B2(n1501), .O(
        n142) );
  ND2 U184 ( .I1(n143), .I2(n142), .O(n144) );
  MOAI1S U185 ( .A1(N15), .A2(n145), .B1(n144), .B2(N15), .O(N49) );
  AOI22S U186 ( .A1(buffer[23]), .A2(n149), .B1(buffer[7]), .B2(n148), .O(n147) );
  AOI22S U187 ( .A1(buffer[55]), .A2(n151), .B1(buffer[39]), .B2(n1501), .O(
        n146) );
  AN2 U188 ( .I1(n147), .I2(n146), .O(n155) );
  AOI22S U189 ( .A1(buffer[31]), .A2(n149), .B1(buffer[15]), .B2(n148), .O(
        n153) );
  AOI22S U190 ( .A1(buffer[63]), .A2(n151), .B1(buffer[47]), .B2(n1501), .O(
        n152) );
  ND2 U191 ( .I1(n153), .I2(n152), .O(n154) );
  MOAI1S U192 ( .A1(n155), .A2(n169), .B1(n154), .B2(n169), .O(N48) );
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
  INV1S U84 ( .I(b[5]), .O(n139) );
  INV1S U85 ( .I(b[4]), .O(n140) );
  INV1S U86 ( .I(a[3]), .O(n135) );
  INV1S U87 ( .I(a[6]), .O(n132) );
  INV1S U88 ( .I(a[4]), .O(n134) );
  INV1S U89 ( .I(b[3]), .O(n141) );
  INV1S U90 ( .I(a[2]), .O(n136) );
  INV1S U91 ( .I(a[1]), .O(n137) );
  INV1S U92 ( .I(b[1]), .O(n143) );
  INV1S U93 ( .I(a[0]), .O(n131) );
  INV1S U94 ( .I(b[0]), .O(n138) );
  INV1S U95 ( .I(b[2]), .O(n142) );
  INV1S U96 ( .I(a[5]), .O(n133) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n132), .I2(n143), .O(n153) );
  NR2 U108 ( .I1(n134), .I2(n141), .O(n149) );
  NR2 U109 ( .I1(n133), .I2(n142), .O(n144) );
  NR2 U110 ( .I1(n131), .I2(n138), .O(product_0_) );
  NR2 U111 ( .I1(n131), .I2(n143), .O(n78) );
  NR2 U112 ( .I1(n131), .I2(n142), .O(n77) );
  NR2 U113 ( .I1(n131), .I2(n141), .O(n76) );
  NR2 U114 ( .I1(n131), .I2(n140), .O(n75) );
  NR2 U115 ( .I1(n131), .I2(n139), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n137), .I2(n138), .O(n71) );
  NR2 U118 ( .I1(n137), .I2(n143), .O(n70) );
  NR2 U119 ( .I1(n142), .I2(n137), .O(n69) );
  NR2 U120 ( .I1(n137), .I2(n141), .O(n68) );
  NR2 U121 ( .I1(n137), .I2(n140), .O(n67) );
  NR2 U122 ( .I1(n137), .I2(n139), .O(n66) );
  NR2 U123 ( .I1(n138), .I2(n136), .O(n64) );
  NR2 U124 ( .I1(n143), .I2(n136), .O(n63) );
  NR2 U125 ( .I1(n142), .I2(n136), .O(n62) );
  NR2 U126 ( .I1(n136), .I2(n141), .O(n61) );
  NR2 U127 ( .I1(n140), .I2(n136), .O(n60) );
  NR2 U128 ( .I1(n138), .I2(n135), .O(n58) );
  NR2 U129 ( .I1(n143), .I2(n135), .O(n57) );
  NR2 U130 ( .I1(n142), .I2(n135), .O(n56) );
  NR2 U131 ( .I1(n135), .I2(n141), .O(n55) );
  NR2 U132 ( .I1(n138), .I2(n134), .O(n53) );
  NR2 U133 ( .I1(n143), .I2(n134), .O(n52) );
  NR2 U134 ( .I1(n142), .I2(n134), .O(n51) );
  NR2 U135 ( .I1(n133), .I2(n138), .O(n49) );
  NR2 U136 ( .I1(n133), .I2(n143), .O(n48) );
  NR2 U137 ( .I1(n138), .I2(n132), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_15 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_15_DW_mult_uns_0_DW_mult_uns_15 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_15_DW01_add_0_DW01_add_21 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n138) );
  INV1S U85 ( .I(b[4]), .O(n139) );
  INV1S U86 ( .I(a[3]), .O(n135) );
  INV1S U87 ( .I(a[6]), .O(n132) );
  INV1S U88 ( .I(a[4]), .O(n134) );
  INV1S U89 ( .I(b[3]), .O(n140) );
  INV1S U90 ( .I(a[2]), .O(n136) );
  INV1S U91 ( .I(a[1]), .O(n137) );
  INV1S U92 ( .I(b[1]), .O(n142) );
  INV1S U93 ( .I(a[0]), .O(n131) );
  INV1S U94 ( .I(b[0]), .O(n143) );
  INV1S U95 ( .I(a[5]), .O(n133) );
  INV1S U96 ( .I(b[2]), .O(n141) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n132), .I2(n142), .O(n153) );
  NR2 U108 ( .I1(n134), .I2(n140), .O(n149) );
  NR2 U109 ( .I1(n133), .I2(n141), .O(n144) );
  NR2 U110 ( .I1(n131), .I2(n143), .O(product_0_) );
  NR2 U111 ( .I1(n131), .I2(n142), .O(n78) );
  NR2 U112 ( .I1(n131), .I2(n141), .O(n77) );
  NR2 U113 ( .I1(n131), .I2(n140), .O(n76) );
  NR2 U114 ( .I1(n131), .I2(n139), .O(n75) );
  NR2 U115 ( .I1(n131), .I2(n138), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n137), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n137), .I2(n142), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n137), .O(n69) );
  NR2 U120 ( .I1(n137), .I2(n140), .O(n68) );
  NR2 U121 ( .I1(n137), .I2(n139), .O(n67) );
  NR2 U122 ( .I1(n137), .I2(n138), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n136), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n136), .O(n63) );
  NR2 U125 ( .I1(n141), .I2(n136), .O(n62) );
  NR2 U126 ( .I1(n136), .I2(n140), .O(n61) );
  NR2 U127 ( .I1(n139), .I2(n136), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n135), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n135), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n135), .O(n56) );
  NR2 U131 ( .I1(n135), .I2(n140), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n134), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n134), .O(n52) );
  NR2 U134 ( .I1(n141), .I2(n134), .O(n51) );
  NR2 U135 ( .I1(n133), .I2(n143), .O(n49) );
  NR2 U136 ( .I1(n133), .I2(n142), .O(n48) );
  NR2 U137 ( .I1(n143), .I2(n132), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_14 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_14_DW_mult_uns_0_DW_mult_uns_11 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_14_DW01_add_0_DW01_add_17 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n131) );
  INV1S U85 ( .I(b[4]), .O(n132) );
  INV1S U86 ( .I(a[3]), .O(n141) );
  INV1S U87 ( .I(a[6]), .O(n138) );
  INV1S U88 ( .I(a[4]), .O(n140) );
  INV1S U89 ( .I(b[3]), .O(n133) );
  INV1S U90 ( .I(a[2]), .O(n142) );
  INV1S U91 ( .I(a[1]), .O(n143) );
  INV1S U92 ( .I(b[1]), .O(n135) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n136) );
  INV1S U95 ( .I(a[5]), .O(n139) );
  INV1S U96 ( .I(b[2]), .O(n134) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n138), .I2(n135), .O(n153) );
  NR2 U108 ( .I1(n140), .I2(n133), .O(n149) );
  NR2 U109 ( .I1(n139), .I2(n134), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n136), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n135), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n134), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n133), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n132), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n131), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n143), .I2(n135), .O(n70) );
  NR2 U119 ( .I1(n134), .I2(n143), .O(n69) );
  NR2 U120 ( .I1(n143), .I2(n133), .O(n68) );
  NR2 U121 ( .I1(n143), .I2(n132), .O(n67) );
  NR2 U122 ( .I1(n143), .I2(n131), .O(n66) );
  NR2 U123 ( .I1(n136), .I2(n142), .O(n64) );
  NR2 U124 ( .I1(n135), .I2(n142), .O(n63) );
  NR2 U125 ( .I1(n134), .I2(n142), .O(n62) );
  NR2 U126 ( .I1(n142), .I2(n133), .O(n61) );
  NR2 U127 ( .I1(n132), .I2(n142), .O(n60) );
  NR2 U128 ( .I1(n136), .I2(n141), .O(n58) );
  NR2 U129 ( .I1(n135), .I2(n141), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n141), .I2(n133), .O(n55) );
  NR2 U132 ( .I1(n136), .I2(n140), .O(n53) );
  NR2 U133 ( .I1(n135), .I2(n140), .O(n52) );
  NR2 U134 ( .I1(n134), .I2(n140), .O(n51) );
  NR2 U135 ( .I1(n139), .I2(n136), .O(n49) );
  NR2 U136 ( .I1(n139), .I2(n135), .O(n48) );
  NR2 U137 ( .I1(n136), .I2(n138), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_13 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_13_DW_mult_uns_0_DW_mult_uns_10 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_13_DW01_add_0_DW01_add_16 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n131) );
  INV1S U85 ( .I(b[4]), .O(n132) );
  INV1S U86 ( .I(a[3]), .O(n141) );
  INV1S U87 ( .I(a[6]), .O(n138) );
  INV1S U88 ( .I(a[4]), .O(n140) );
  INV1S U89 ( .I(b[3]), .O(n133) );
  INV1S U90 ( .I(a[2]), .O(n142) );
  INV1S U91 ( .I(a[1]), .O(n143) );
  INV1S U92 ( .I(b[1]), .O(n135) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n136) );
  INV1S U95 ( .I(a[5]), .O(n139) );
  INV1S U96 ( .I(b[2]), .O(n134) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n138), .I2(n135), .O(n153) );
  NR2 U108 ( .I1(n140), .I2(n133), .O(n149) );
  NR2 U109 ( .I1(n139), .I2(n134), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n136), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n135), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n134), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n133), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n132), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n131), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n143), .I2(n136), .O(n71) );
  NR2 U118 ( .I1(n143), .I2(n135), .O(n70) );
  NR2 U119 ( .I1(n134), .I2(n143), .O(n69) );
  NR2 U120 ( .I1(n143), .I2(n133), .O(n68) );
  NR2 U121 ( .I1(n143), .I2(n132), .O(n67) );
  NR2 U122 ( .I1(n143), .I2(n131), .O(n66) );
  NR2 U123 ( .I1(n136), .I2(n142), .O(n64) );
  NR2 U124 ( .I1(n135), .I2(n142), .O(n63) );
  NR2 U125 ( .I1(n134), .I2(n142), .O(n62) );
  NR2 U126 ( .I1(n142), .I2(n133), .O(n61) );
  NR2 U127 ( .I1(n132), .I2(n142), .O(n60) );
  NR2 U128 ( .I1(n136), .I2(n141), .O(n58) );
  NR2 U129 ( .I1(n135), .I2(n141), .O(n57) );
  NR2 U130 ( .I1(n134), .I2(n141), .O(n56) );
  NR2 U131 ( .I1(n141), .I2(n133), .O(n55) );
  NR2 U132 ( .I1(n136), .I2(n140), .O(n53) );
  NR2 U133 ( .I1(n135), .I2(n140), .O(n52) );
  NR2 U134 ( .I1(n134), .I2(n140), .O(n51) );
  NR2 U135 ( .I1(n139), .I2(n136), .O(n49) );
  NR2 U136 ( .I1(n139), .I2(n135), .O(n48) );
  NR2 U137 ( .I1(n136), .I2(n138), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_12 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_12_DW_mult_uns_0_DW_mult_uns_9 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_12_DW01_add_0_DW01_add_15 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n132) );
  INV1S U85 ( .I(b[4]), .O(n133) );
  INV1S U86 ( .I(a[3]), .O(n140) );
  INV1S U87 ( .I(a[6]), .O(n137) );
  INV1S U88 ( .I(a[4]), .O(n139) );
  INV1S U89 ( .I(b[3]), .O(n134) );
  INV1S U90 ( .I(a[2]), .O(n141) );
  INV1S U91 ( .I(a[1]), .O(n142) );
  INV1S U92 ( .I(b[1]), .O(n136) );
  INV1S U93 ( .I(a[0]), .O(n143) );
  INV1S U94 ( .I(b[0]), .O(n131) );
  INV1S U95 ( .I(b[2]), .O(n135) );
  INV1S U96 ( .I(a[5]), .O(n138) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n137), .I2(n136), .O(n153) );
  NR2 U108 ( .I1(n139), .I2(n134), .O(n149) );
  NR2 U109 ( .I1(n138), .I2(n135), .O(n144) );
  NR2 U110 ( .I1(n143), .I2(n131), .O(product_0_) );
  NR2 U111 ( .I1(n143), .I2(n136), .O(n78) );
  NR2 U112 ( .I1(n143), .I2(n135), .O(n77) );
  NR2 U113 ( .I1(n143), .I2(n134), .O(n76) );
  NR2 U114 ( .I1(n143), .I2(n133), .O(n75) );
  NR2 U115 ( .I1(n143), .I2(n132), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n142), .I2(n131), .O(n71) );
  NR2 U118 ( .I1(n142), .I2(n136), .O(n70) );
  NR2 U119 ( .I1(n135), .I2(n142), .O(n69) );
  NR2 U120 ( .I1(n142), .I2(n134), .O(n68) );
  NR2 U121 ( .I1(n142), .I2(n133), .O(n67) );
  NR2 U122 ( .I1(n142), .I2(n132), .O(n66) );
  NR2 U123 ( .I1(n131), .I2(n141), .O(n64) );
  NR2 U124 ( .I1(n136), .I2(n141), .O(n63) );
  NR2 U125 ( .I1(n135), .I2(n141), .O(n62) );
  NR2 U126 ( .I1(n141), .I2(n134), .O(n61) );
  NR2 U127 ( .I1(n133), .I2(n141), .O(n60) );
  NR2 U128 ( .I1(n131), .I2(n140), .O(n58) );
  NR2 U129 ( .I1(n136), .I2(n140), .O(n57) );
  NR2 U130 ( .I1(n135), .I2(n140), .O(n56) );
  NR2 U131 ( .I1(n140), .I2(n134), .O(n55) );
  NR2 U132 ( .I1(n131), .I2(n139), .O(n53) );
  NR2 U133 ( .I1(n136), .I2(n139), .O(n52) );
  NR2 U134 ( .I1(n135), .I2(n139), .O(n51) );
  NR2 U135 ( .I1(n138), .I2(n131), .O(n49) );
  NR2 U136 ( .I1(n138), .I2(n136), .O(n48) );
  NR2 U137 ( .I1(n131), .I2(n137), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_11 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_11_DW_mult_uns_0_DW_mult_uns_14 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_11_DW01_add_0_DW01_add_20 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n138) );
  INV1S U85 ( .I(b[4]), .O(n139) );
  INV1S U86 ( .I(a[3]), .O(n134) );
  INV1S U87 ( .I(a[6]), .O(n131) );
  INV1S U88 ( .I(a[4]), .O(n133) );
  INV1S U89 ( .I(b[3]), .O(n140) );
  INV1S U90 ( .I(a[2]), .O(n135) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(b[1]), .O(n142) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n143) );
  INV1S U95 ( .I(b[2]), .O(n141) );
  INV1S U96 ( .I(a[5]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n131), .I2(n142), .O(n153) );
  NR2 U108 ( .I1(n133), .I2(n140), .O(n149) );
  NR2 U109 ( .I1(n132), .I2(n141), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n143), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n142), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n141), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n140), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n139), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n138), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n142), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n136), .I2(n140), .O(n68) );
  NR2 U121 ( .I1(n136), .I2(n139), .O(n67) );
  NR2 U122 ( .I1(n136), .I2(n138), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n141), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n135), .I2(n140), .O(n61) );
  NR2 U127 ( .I1(n139), .I2(n135), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n140), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n141), .I2(n133), .O(n51) );
  NR2 U135 ( .I1(n132), .I2(n143), .O(n49) );
  NR2 U136 ( .I1(n132), .I2(n142), .O(n48) );
  NR2 U137 ( .I1(n143), .I2(n131), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_10 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_10_DW_mult_uns_0_DW_mult_uns_8 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_10_DW01_add_0_DW01_add_14 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n138) );
  INV1S U85 ( .I(b[4]), .O(n139) );
  INV1S U86 ( .I(a[3]), .O(n134) );
  INV1S U87 ( .I(a[6]), .O(n131) );
  INV1S U88 ( .I(a[4]), .O(n133) );
  INV1S U89 ( .I(b[3]), .O(n140) );
  INV1S U90 ( .I(a[2]), .O(n135) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(b[1]), .O(n142) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n143) );
  INV1S U95 ( .I(b[2]), .O(n141) );
  INV1S U96 ( .I(a[5]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n131), .I2(n142), .O(n153) );
  NR2 U108 ( .I1(n133), .I2(n140), .O(n149) );
  NR2 U109 ( .I1(n132), .I2(n141), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n143), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n142), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n141), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n140), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n139), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n138), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n142), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n136), .I2(n140), .O(n68) );
  NR2 U121 ( .I1(n136), .I2(n139), .O(n67) );
  NR2 U122 ( .I1(n136), .I2(n138), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n141), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n135), .I2(n140), .O(n61) );
  NR2 U127 ( .I1(n139), .I2(n135), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n140), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n141), .I2(n133), .O(n51) );
  NR2 U135 ( .I1(n132), .I2(n143), .O(n49) );
  NR2 U136 ( .I1(n132), .I2(n142), .O(n48) );
  NR2 U137 ( .I1(n143), .I2(n131), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_9 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_9_DW_mult_uns_0_DW_mult_uns_7 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_9_DW01_add_0_DW01_add_13 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n138) );
  INV1S U85 ( .I(b[4]), .O(n139) );
  INV1S U86 ( .I(a[3]), .O(n134) );
  INV1S U87 ( .I(a[6]), .O(n131) );
  INV1S U88 ( .I(a[4]), .O(n133) );
  INV1S U89 ( .I(b[3]), .O(n140) );
  INV1S U90 ( .I(a[2]), .O(n135) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(b[1]), .O(n142) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n143) );
  INV1S U95 ( .I(b[2]), .O(n141) );
  INV1S U96 ( .I(a[5]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n131), .I2(n142), .O(n153) );
  NR2 U108 ( .I1(n133), .I2(n140), .O(n149) );
  NR2 U109 ( .I1(n132), .I2(n141), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n143), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n142), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n141), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n140), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n139), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n138), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n142), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n136), .I2(n140), .O(n68) );
  NR2 U121 ( .I1(n136), .I2(n139), .O(n67) );
  NR2 U122 ( .I1(n136), .I2(n138), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n141), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n135), .I2(n140), .O(n61) );
  NR2 U127 ( .I1(n139), .I2(n135), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n140), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n141), .I2(n133), .O(n51) );
  NR2 U135 ( .I1(n132), .I2(n143), .O(n49) );
  NR2 U136 ( .I1(n132), .I2(n142), .O(n48) );
  NR2 U137 ( .I1(n143), .I2(n131), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_8 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_8_DW_mult_uns_0_DW_mult_uns_6 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_8_DW01_add_0_DW01_add_12 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n139) );
  INV1S U85 ( .I(b[4]), .O(n140) );
  INV1S U86 ( .I(a[3]), .O(n134) );
  INV1S U87 ( .I(a[6]), .O(n131) );
  INV1S U88 ( .I(a[4]), .O(n133) );
  INV1S U89 ( .I(b[3]), .O(n141) );
  INV1S U90 ( .I(a[2]), .O(n135) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(b[1]), .O(n143) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n138) );
  INV1S U95 ( .I(b[2]), .O(n142) );
  INV1S U96 ( .I(a[5]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n131), .I2(n143), .O(n153) );
  NR2 U108 ( .I1(n133), .I2(n141), .O(n149) );
  NR2 U109 ( .I1(n132), .I2(n142), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n138), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n143), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n142), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n141), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n140), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n139), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n138), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n143), .O(n70) );
  NR2 U119 ( .I1(n142), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n136), .I2(n141), .O(n68) );
  NR2 U121 ( .I1(n136), .I2(n140), .O(n67) );
  NR2 U122 ( .I1(n136), .I2(n139), .O(n66) );
  NR2 U123 ( .I1(n138), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n143), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n142), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n135), .I2(n141), .O(n61) );
  NR2 U127 ( .I1(n140), .I2(n135), .O(n60) );
  NR2 U128 ( .I1(n138), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n143), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n142), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n141), .O(n55) );
  NR2 U132 ( .I1(n138), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n143), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n142), .I2(n133), .O(n51) );
  NR2 U135 ( .I1(n132), .I2(n138), .O(n49) );
  NR2 U136 ( .I1(n132), .I2(n143), .O(n48) );
  NR2 U137 ( .I1(n138), .I2(n131), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_7 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_7_DW_mult_uns_0_DW_mult_uns_13 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_7_DW01_add_0_DW01_add_19 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n138) );
  INV1S U85 ( .I(b[4]), .O(n139) );
  INV1S U86 ( .I(a[3]), .O(n134) );
  INV1S U87 ( .I(a[6]), .O(n131) );
  INV1S U88 ( .I(a[4]), .O(n133) );
  INV1S U89 ( .I(b[3]), .O(n140) );
  INV1S U90 ( .I(a[2]), .O(n135) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(b[1]), .O(n142) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n143) );
  INV1S U95 ( .I(b[2]), .O(n141) );
  INV1S U96 ( .I(a[5]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n131), .I2(n142), .O(n153) );
  NR2 U108 ( .I1(n133), .I2(n140), .O(n149) );
  NR2 U109 ( .I1(n132), .I2(n141), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n143), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n142), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n141), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n140), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n139), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n138), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n142), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n136), .I2(n140), .O(n68) );
  NR2 U121 ( .I1(n136), .I2(n139), .O(n67) );
  NR2 U122 ( .I1(n136), .I2(n138), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n141), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n135), .I2(n140), .O(n61) );
  NR2 U127 ( .I1(n139), .I2(n135), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n140), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n141), .I2(n133), .O(n51) );
  NR2 U135 ( .I1(n132), .I2(n143), .O(n49) );
  NR2 U136 ( .I1(n132), .I2(n142), .O(n48) );
  NR2 U137 ( .I1(n143), .I2(n131), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_6 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_6_DW_mult_uns_0_DW_mult_uns_5 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_6_DW01_add_0_DW01_add_11 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n138) );
  INV1S U85 ( .I(b[4]), .O(n139) );
  INV1S U86 ( .I(a[3]), .O(n134) );
  INV1S U87 ( .I(a[6]), .O(n131) );
  INV1S U88 ( .I(a[4]), .O(n133) );
  INV1S U89 ( .I(b[3]), .O(n140) );
  INV1S U90 ( .I(a[2]), .O(n135) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(b[1]), .O(n142) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n143) );
  INV1S U95 ( .I(b[2]), .O(n141) );
  INV1S U96 ( .I(a[5]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n131), .I2(n142), .O(n153) );
  NR2 U108 ( .I1(n133), .I2(n140), .O(n149) );
  NR2 U109 ( .I1(n132), .I2(n141), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n143), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n142), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n141), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n140), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n139), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n138), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n142), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n136), .I2(n140), .O(n68) );
  NR2 U121 ( .I1(n136), .I2(n139), .O(n67) );
  NR2 U122 ( .I1(n136), .I2(n138), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n141), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n135), .I2(n140), .O(n61) );
  NR2 U127 ( .I1(n139), .I2(n135), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n140), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n141), .I2(n133), .O(n51) );
  NR2 U135 ( .I1(n132), .I2(n143), .O(n49) );
  NR2 U136 ( .I1(n132), .I2(n142), .O(n48) );
  NR2 U137 ( .I1(n143), .I2(n131), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_5 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_5_DW_mult_uns_0_DW_mult_uns_4 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_5_DW01_add_0_DW01_add_10 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n138) );
  INV1S U85 ( .I(b[4]), .O(n139) );
  INV1S U86 ( .I(a[3]), .O(n134) );
  INV1S U87 ( .I(a[6]), .O(n131) );
  INV1S U88 ( .I(a[4]), .O(n133) );
  INV1S U89 ( .I(b[3]), .O(n140) );
  INV1S U90 ( .I(a[2]), .O(n135) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(b[1]), .O(n142) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n143) );
  INV1S U95 ( .I(b[2]), .O(n141) );
  INV1S U96 ( .I(a[5]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n131), .I2(n142), .O(n153) );
  NR2 U108 ( .I1(n133), .I2(n140), .O(n149) );
  NR2 U109 ( .I1(n132), .I2(n141), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n143), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n142), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n141), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n140), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n139), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n138), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n142), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n136), .I2(n140), .O(n68) );
  NR2 U121 ( .I1(n136), .I2(n139), .O(n67) );
  NR2 U122 ( .I1(n136), .I2(n138), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n141), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n135), .I2(n140), .O(n61) );
  NR2 U127 ( .I1(n139), .I2(n135), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n140), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n141), .I2(n133), .O(n51) );
  NR2 U135 ( .I1(n132), .I2(n143), .O(n49) );
  NR2 U136 ( .I1(n132), .I2(n142), .O(n48) );
  NR2 U137 ( .I1(n143), .I2(n131), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_4 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_4_DW_mult_uns_0_DW_mult_uns_3 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_4_DW01_add_0_DW01_add_9 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, N3, 
        N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n139) );
  INV1S U85 ( .I(b[4]), .O(n140) );
  INV1S U86 ( .I(a[3]), .O(n134) );
  INV1S U87 ( .I(a[6]), .O(n131) );
  INV1S U88 ( .I(a[4]), .O(n133) );
  INV1S U89 ( .I(b[3]), .O(n141) );
  INV1S U90 ( .I(a[2]), .O(n135) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(b[1]), .O(n143) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n138) );
  INV1S U95 ( .I(b[2]), .O(n142) );
  INV1S U96 ( .I(a[5]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n131), .I2(n143), .O(n153) );
  NR2 U108 ( .I1(n133), .I2(n141), .O(n149) );
  NR2 U109 ( .I1(n132), .I2(n142), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n138), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n143), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n142), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n141), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n140), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n139), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n138), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n143), .O(n70) );
  NR2 U119 ( .I1(n142), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n136), .I2(n141), .O(n68) );
  NR2 U121 ( .I1(n136), .I2(n140), .O(n67) );
  NR2 U122 ( .I1(n136), .I2(n139), .O(n66) );
  NR2 U123 ( .I1(n138), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n143), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n142), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n135), .I2(n141), .O(n61) );
  NR2 U127 ( .I1(n140), .I2(n135), .O(n60) );
  NR2 U128 ( .I1(n138), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n143), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n142), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n141), .O(n55) );
  NR2 U132 ( .I1(n138), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n143), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n142), .I2(n133), .O(n51) );
  NR2 U135 ( .I1(n132), .I2(n138), .O(n49) );
  NR2 U136 ( .I1(n132), .I2(n143), .O(n48) );
  NR2 U137 ( .I1(n138), .I2(n131), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_3 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_3_DW_mult_uns_0_DW_mult_uns_12 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_3_DW01_add_0_DW01_add_18 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, 
        N3, N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n138) );
  INV1S U85 ( .I(b[4]), .O(n139) );
  INV1S U86 ( .I(a[3]), .O(n134) );
  INV1S U87 ( .I(a[6]), .O(n131) );
  INV1S U88 ( .I(a[4]), .O(n133) );
  INV1S U89 ( .I(b[3]), .O(n140) );
  INV1S U90 ( .I(a[2]), .O(n135) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(b[1]), .O(n142) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n143) );
  INV1S U95 ( .I(b[2]), .O(n141) );
  INV1S U96 ( .I(a[5]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n131), .I2(n142), .O(n153) );
  NR2 U108 ( .I1(n133), .I2(n140), .O(n149) );
  NR2 U109 ( .I1(n132), .I2(n141), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n143), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n142), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n141), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n140), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n139), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n138), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n142), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n136), .I2(n140), .O(n68) );
  NR2 U121 ( .I1(n136), .I2(n139), .O(n67) );
  NR2 U122 ( .I1(n136), .I2(n138), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n141), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n135), .I2(n140), .O(n61) );
  NR2 U127 ( .I1(n139), .I2(n135), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n140), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n141), .I2(n133), .O(n51) );
  NR2 U135 ( .I1(n132), .I2(n143), .O(n49) );
  NR2 U136 ( .I1(n132), .I2(n142), .O(n48) );
  NR2 U137 ( .I1(n143), .I2(n131), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_2 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_2_DW_mult_uns_0_DW_mult_uns_2 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_2_DW01_add_0_DW01_add_8 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, N3, 
        N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n138) );
  INV1S U85 ( .I(b[4]), .O(n139) );
  INV1S U86 ( .I(a[3]), .O(n134) );
  INV1S U87 ( .I(a[6]), .O(n131) );
  INV1S U88 ( .I(a[4]), .O(n133) );
  INV1S U89 ( .I(b[3]), .O(n140) );
  INV1S U90 ( .I(a[2]), .O(n135) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(b[1]), .O(n142) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n143) );
  INV1S U95 ( .I(b[2]), .O(n141) );
  INV1S U96 ( .I(a[5]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n131), .I2(n142), .O(n153) );
  NR2 U108 ( .I1(n133), .I2(n140), .O(n149) );
  NR2 U109 ( .I1(n132), .I2(n141), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n143), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n142), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n141), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n140), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n139), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n138), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n142), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n136), .I2(n140), .O(n68) );
  NR2 U121 ( .I1(n136), .I2(n139), .O(n67) );
  NR2 U122 ( .I1(n136), .I2(n138), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n141), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n135), .I2(n140), .O(n61) );
  NR2 U127 ( .I1(n139), .I2(n135), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n140), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n141), .I2(n133), .O(n51) );
  NR2 U135 ( .I1(n132), .I2(n143), .O(n49) );
  NR2 U136 ( .I1(n132), .I2(n142), .O(n48) );
  NR2 U137 ( .I1(n143), .I2(n131), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_1 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_1_DW_mult_uns_0_DW_mult_uns_1 mult_20 ( .a(up_in), .b(left_in), 
        .product_7_(N8), .product_6_(N7), .product_5_(N6), .product_4_(N5), 
        .product_3_(N4), .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_1_DW01_add_0_DW01_add_7 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, N3, 
        N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  INV1S U84 ( .I(b[5]), .O(n138) );
  INV1S U85 ( .I(b[4]), .O(n139) );
  INV1S U86 ( .I(a[3]), .O(n134) );
  INV1S U87 ( .I(a[6]), .O(n131) );
  INV1S U88 ( .I(a[4]), .O(n133) );
  INV1S U89 ( .I(b[3]), .O(n140) );
  INV1S U90 ( .I(a[2]), .O(n135) );
  INV1S U91 ( .I(a[1]), .O(n136) );
  INV1S U92 ( .I(b[1]), .O(n142) );
  INV1S U93 ( .I(a[0]), .O(n137) );
  INV1S U94 ( .I(b[0]), .O(n143) );
  INV1S U95 ( .I(b[2]), .O(n141) );
  INV1S U96 ( .I(a[5]), .O(n132) );
  XOR4 U97 ( .I1(n144), .I2(n145), .I3(n146), .I4(n147), .O(product_7_) );
  XNR2HS U98 ( .I1(n14), .I2(n148), .O(n147) );
  ND2 U99 ( .I1(b[7]), .I2(a[0]), .O(n148) );
  XOR4 U100 ( .I1(n18), .I2(n16), .I3(n20), .I4(n2), .O(n146) );
  XOR4 U101 ( .I1(n149), .I2(n150), .I3(n151), .I4(n152), .O(n145) );
  ND2 U102 ( .I1(b[6]), .I2(a[1]), .O(n152) );
  ND2 U103 ( .I1(b[4]), .I2(a[3]), .O(n151) );
  XOR4 U104 ( .I1(n22), .I2(n153), .I3(n154), .I4(n155), .O(n150) );
  ND2 U105 ( .I1(b[5]), .I2(a[2]), .O(n155) );
  ND2 U106 ( .I1(b[0]), .I2(a[7]), .O(n154) );
  NR2 U107 ( .I1(n131), .I2(n142), .O(n153) );
  NR2 U108 ( .I1(n133), .I2(n140), .O(n149) );
  NR2 U109 ( .I1(n132), .I2(n141), .O(n144) );
  NR2 U110 ( .I1(n137), .I2(n143), .O(product_0_) );
  NR2 U111 ( .I1(n137), .I2(n142), .O(n78) );
  NR2 U112 ( .I1(n137), .I2(n141), .O(n77) );
  NR2 U113 ( .I1(n137), .I2(n140), .O(n76) );
  NR2 U114 ( .I1(n137), .I2(n139), .O(n75) );
  NR2 U115 ( .I1(n137), .I2(n138), .O(n74) );
  AN2 U116 ( .I1(a[0]), .I2(b[6]), .O(n73) );
  NR2 U117 ( .I1(n136), .I2(n143), .O(n71) );
  NR2 U118 ( .I1(n136), .I2(n142), .O(n70) );
  NR2 U119 ( .I1(n141), .I2(n136), .O(n69) );
  NR2 U120 ( .I1(n136), .I2(n140), .O(n68) );
  NR2 U121 ( .I1(n136), .I2(n139), .O(n67) );
  NR2 U122 ( .I1(n136), .I2(n138), .O(n66) );
  NR2 U123 ( .I1(n143), .I2(n135), .O(n64) );
  NR2 U124 ( .I1(n142), .I2(n135), .O(n63) );
  NR2 U125 ( .I1(n141), .I2(n135), .O(n62) );
  NR2 U126 ( .I1(n135), .I2(n140), .O(n61) );
  NR2 U127 ( .I1(n139), .I2(n135), .O(n60) );
  NR2 U128 ( .I1(n143), .I2(n134), .O(n58) );
  NR2 U129 ( .I1(n142), .I2(n134), .O(n57) );
  NR2 U130 ( .I1(n141), .I2(n134), .O(n56) );
  NR2 U131 ( .I1(n134), .I2(n140), .O(n55) );
  NR2 U132 ( .I1(n143), .I2(n133), .O(n53) );
  NR2 U133 ( .I1(n142), .I2(n133), .O(n52) );
  NR2 U134 ( .I1(n141), .I2(n133), .O(n51) );
  NR2 U135 ( .I1(n132), .I2(n143), .O(n49) );
  NR2 U136 ( .I1(n132), .I2(n142), .O(n48) );
  NR2 U137 ( .I1(n143), .I2(n131), .O(n46) );
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
  XOR2HS U1 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
  AN2 U2 ( .I1(B[0]), .I2(A[0]), .O(n1) );
endmodule


module mac_0 ( clk, reset, up_in, left_in, up_out, left_out, mat_out );
  input [7:0] up_in;
  input [7:0] left_in;
  output [7:0] up_out;
  output [7:0] left_out;
  output [7:0] mat_out;
  input clk, reset;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N8, N7, N6, N5, N4, N3, N2, N1,
         n17, n20;

  QDFFRBN left_out_reg_7_ ( .D(left_in[7]), .CK(clk), .RB(n17), .Q(left_out[7]) );
  QDFFRBN up_out_reg_7_ ( .D(up_in[7]), .CK(clk), .RB(n17), .Q(up_out[7]) );
  QDFFRBN up_out_reg_6_ ( .D(up_in[6]), .CK(clk), .RB(n17), .Q(up_out[6]) );
  QDFFRBN up_out_reg_5_ ( .D(up_in[5]), .CK(clk), .RB(n17), .Q(up_out[5]) );
  QDFFRBN up_out_reg_4_ ( .D(up_in[4]), .CK(clk), .RB(n17), .Q(up_out[4]) );
  QDFFRBN left_out_reg_3_ ( .D(left_in[3]), .CK(clk), .RB(n17), .Q(left_out[3]) );
  QDFFRBN left_out_reg_2_ ( .D(left_in[2]), .CK(clk), .RB(n17), .Q(left_out[2]) );
  QDFFRBN left_out_reg_1_ ( .D(left_in[1]), .CK(clk), .RB(n17), .Q(left_out[1]) );
  QDFFRBN left_out_reg_6_ ( .D(left_in[6]), .CK(clk), .RB(n17), .Q(left_out[6]) );
  QDFFRBN left_out_reg_5_ ( .D(left_in[5]), .CK(clk), .RB(n17), .Q(left_out[5]) );
  QDFFRBN left_out_reg_4_ ( .D(left_in[4]), .CK(clk), .RB(n17), .Q(left_out[4]) );
  QDFFRBN left_out_reg_0_ ( .D(left_in[0]), .CK(clk), .RB(n17), .Q(left_out[0]) );
  QDFFRBN up_out_reg_3_ ( .D(up_in[3]), .CK(clk), .RB(n17), .Q(up_out[3]) );
  QDFFRBN up_out_reg_2_ ( .D(up_in[2]), .CK(clk), .RB(n17), .Q(up_out[2]) );
  QDFFRBN up_out_reg_1_ ( .D(up_in[1]), .CK(clk), .RB(n17), .Q(up_out[1]) );
  QDFFRBN up_out_reg_0_ ( .D(up_in[0]), .CK(clk), .RB(n17), .Q(up_out[0]) );
  QDFFRBN mat_out_reg_0_ ( .D(N9), .CK(clk), .RB(n17), .Q(mat_out[0]) );
  QDFFRBN mat_out_reg_1_ ( .D(N10), .CK(clk), .RB(n17), .Q(mat_out[1]) );
  QDFFRBN mat_out_reg_2_ ( .D(N11), .CK(clk), .RB(n17), .Q(mat_out[2]) );
  QDFFRBN mat_out_reg_3_ ( .D(N12), .CK(clk), .RB(n17), .Q(mat_out[3]) );
  QDFFRBN mat_out_reg_4_ ( .D(N13), .CK(clk), .RB(n17), .Q(mat_out[4]) );
  QDFFRBN mat_out_reg_5_ ( .D(N14), .CK(clk), .RB(n17), .Q(mat_out[5]) );
  QDFFRBN mat_out_reg_6_ ( .D(N15), .CK(clk), .RB(n17), .Q(mat_out[6]) );
  QDFFRBN mat_out_reg_7_ ( .D(N16), .CK(clk), .RB(n17), .Q(mat_out[7]) );
  INV2 U3 ( .I(reset), .O(n17) );
  TIE0 U4 ( .O(n20) );
  mac_0_DW_mult_uns_0 mult_20 ( .a(up_in), .b(left_in), .product_7_(N8), 
        .product_6_(N7), .product_5_(N6), .product_4_(N5), .product_3_(N4), 
        .product_2_(N3), .product_1_(N2), .product_0_(N1) );
  mac_0_DW01_add_0_DW01_add_6 add_20 ( .A(mat_out), .B({N8, N7, N6, N5, N4, N3, 
        N2, N1}), .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
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
  HA1S U1_1_1 ( .A(A[1]), .B(A[0]), .C(carry[2]), .S(SUM[1]) );
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
  HA1S U1_1_1 ( .A(A[1]), .B(A[0]), .C(carry[2]), .S(SUM[1]) );
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
  HA1S U1_1_1 ( .A(A[1]), .B(A[0]), .C(carry[2]), .S(SUM[1]) );
  XOR2HS U1 ( .I1(carry[7]), .I2(A[7]), .O(SUM[7]) );
  INV1S U2 ( .I(A[0]), .O(SUM[0]) );
endmodule


module tpu ( clk, rst, start, m, k, n, done, wr_en_a, wr_en_b, wr_en_c, addr_a, 
        addr_b, addr_c, in_a, in_b, in_c, out_a, out_b, out_c );
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
  wire   N40, N41, n444, n445, n446, n447, n448, n449, n450, n541, n451, n452,
         n453, n454, n455, n456, n457, n542, n458, n459, n460, n461, n462,
         n463, n464, n543, N42, sys_rst, N44, N45, N46, N47, rd_a_4, rd_a_3,
         rd_a_2, rd_a_1, N57, N58, N59, rd_b_4, rd_b_3, rd_b_2, rd_b_1, N70,
         N71, N72, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N142, N143, N144, N145, N151, N152, N153,
         N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164,
         N165, N166, N167, N175, N176, N177, N178, N179, N180, N181, N182,
         N183, N184, N185, N186, N187, N188, N189, N190, N223, N224, N225,
         N226, N227, N228, N229, N230, N296, N297, N298, N299, N300, N301,
         N302, N303, N304, N305, N306, N307, N308, N309, N310, N311, N312,
         N313, N314, N315, N316, N317, N318, N319, N320, N321, N322, N323,
         N324, N325, N326, N327, N333, n54, n55, n56, n580, n590, n61, n62,
         n63, n65, n66, n67, n68, n720, n73, n75, n76, n77, n79, n80, n81, n84,
         n86, n87, n89, n90, n91, n92, n930, n940, n950, n960, n970, n980,
         n1000, n1010, n1020, n1030, n1040, n1050, n1060, n1070, n1080, n1090,
         n1110, n1120, n1130, n1140, n1160, n1170, n1180, n1260, n1270, n1280,
         n1290, n130, n132, n136, n137, n138, n139, n140, n141, n1420, n1430,
         n1440, n1450, n146, n148, n149, n150, n1510, n1520, n1530, n1540,
         n1550, n1560, n1570, n1580, n1590, n1600, n1610, n1620, n1630, n1640,
         n1650, n1660, n1670, n168, n169, n170, n171, n172, n173, n174, n1750,
         n1760, n1770, n1780, n1790, n1800, n1810, n1820, n1830, n1840, n1850,
         n1860, n1870, n1880, n1890, n1900, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, add_268_carry_2_, add_268_carry_3_,
         add_35_carry_2_, add_35_carry_3_, n269, n271, n272, n274, n275, n277,
         n278, n280, n281, n283, n284, n286, n287, n289, n290, n292, n293,
         n295, n2960, n2980, n2990, n3010, n3020, n3040, n3050, n3070, n3080,
         n3100, n3110, n3130, n3140, n3160, n3170, n3190, n3200, n3220, n3230,
         n3250, n3260, n328, n329, n331, n332, n3330, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, add_341_n3, add_341_n2,
         add_341_n1, n531, n532, n534, n535, n537, n538, n540,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
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
  wire   [5:2] add_341_carry;

  AN2B1S U7 ( .I1(next_state[2]), .B1(next_state[1]), .O(n56) );
  ND2 U11 ( .I1(state[2]), .I2(n68), .O(n66) );
  OA222 U14 ( .A1(n73), .A2(n431), .B1(n75), .B2(n76), .C1(n77), .C2(n441), 
        .O(n720) );
  ND2 U18 ( .I1(n440), .I2(n441), .O(n76) );
  ND2 U23 ( .I1(n[2]), .I2(n80), .O(n79) );
  AO12 U30 ( .B1(n435), .B2(n62), .A1(n63), .O(n68) );
  AO12 U33 ( .B1(rd_b_1), .B2(n86), .A1(n87), .O(n150) );
  AO12 U34 ( .B1(rd_a_1), .B2(n86), .A1(n87), .O(n1510) );
  AO22 U44 ( .A1(n292), .A2(n411), .B1(N229), .B2(n410), .O(n1520) );
  AO22 U45 ( .A1(n3040), .A2(n411), .B1(N228), .B2(n410), .O(n1530) );
  AO22 U46 ( .A1(n3010), .A2(n411), .B1(N227), .B2(n410), .O(n1540) );
  AO22 U47 ( .A1(n2980), .A2(n411), .B1(N226), .B2(n410), .O(n1550) );
  AO22 U48 ( .A1(n295), .A2(n411), .B1(N225), .B2(n410), .O(n1560) );
  AO22 U49 ( .A1(n274), .A2(n411), .B1(N224), .B2(n410), .O(n1570) );
  AO22 U50 ( .A1(n537), .A2(n411), .B1(N223), .B2(n410), .O(n1580) );
  AO222 U51 ( .A1(N182), .A2(n970), .B1(N190), .B2(n980), .C1(last_addr_c[7]), 
        .C2(n65), .O(n1590) );
  AO222 U52 ( .A1(N181), .A2(n970), .B1(N189), .B2(n980), .C1(last_addr_c[6]), 
        .C2(n65), .O(n1600) );
  AO222 U53 ( .A1(N180), .A2(n970), .B1(N188), .B2(n980), .C1(last_addr_c[5]), 
        .C2(n65), .O(n1610) );
  AO222 U54 ( .A1(N179), .A2(n970), .B1(N187), .B2(n980), .C1(last_addr_c[4]), 
        .C2(n65), .O(n1620) );
  AO222 U55 ( .A1(N178), .A2(n970), .B1(N186), .B2(n980), .C1(last_addr_c[3]), 
        .C2(n65), .O(n1630) );
  AO222 U56 ( .A1(N177), .A2(n970), .B1(N185), .B2(n980), .C1(last_addr_c[2]), 
        .C2(n65), .O(n1640) );
  AO222 U57 ( .A1(N176), .A2(n970), .B1(N184), .B2(n980), .C1(last_addr_c[1]), 
        .C2(n65), .O(n1650) );
  AO222 U58 ( .A1(N175), .A2(n970), .B1(N183), .B2(n980), .C1(last_addr_c[0]), 
        .C2(n65), .O(n1660) );
  AN2 U59 ( .I1(n433), .I2(n1000), .O(n980) );
  AO22 U62 ( .A1(n3100), .A2(n411), .B1(N230), .B2(n410), .O(n1670) );
  AO22 U67 ( .A1(n289), .A2(n1060), .B1(N158), .B2(n1070), .O(n170) );
  AO22 U68 ( .A1(n286), .A2(n1060), .B1(N157), .B2(n1070), .O(n171) );
  AO22 U69 ( .A1(n283), .A2(n1060), .B1(N156), .B2(n1070), .O(n172) );
  AO22 U70 ( .A1(n280), .A2(n1060), .B1(N155), .B2(n1070), .O(n173) );
  AO22 U71 ( .A1(n277), .A2(n1060), .B1(N154), .B2(n1070), .O(n174) );
  AO22 U72 ( .A1(n271), .A2(n1060), .B1(N153), .B2(n1070), .O(n1750) );
  AO22 U73 ( .A1(n534), .A2(n1060), .B1(N152), .B2(n1070), .O(n1760) );
  AO22 U74 ( .A1(n3070), .A2(n1060), .B1(N159), .B2(n1070), .O(n1770) );
  ND2 U77 ( .I1(n433), .I2(n430), .O(n1050) );
  ND2 U79 ( .I1(cnt_m[0]), .I2(n442), .O(n1120) );
  AO222 U85 ( .A1(N166), .A2(n1160), .B1(n1170), .B2(last_addr_b[6]), .C1(
        n1180), .C2(n328), .O(n1800) );
  AO222 U88 ( .A1(N165), .A2(n1160), .B1(last_addr_b[5]), .B2(n1170), .C1(
        n3250), .C2(n1180), .O(n1820) );
  AO222 U91 ( .A1(N164), .A2(n1160), .B1(last_addr_b[4]), .B2(n1170), .C1(
        n3220), .C2(n1180), .O(n1840) );
  AO222 U94 ( .A1(N163), .A2(n1160), .B1(last_addr_b[3]), .B2(n1170), .C1(
        n3190), .C2(n1180), .O(n1860) );
  AO222 U97 ( .A1(N162), .A2(n1160), .B1(last_addr_b[2]), .B2(n1170), .C1(
        n3160), .C2(n1180), .O(n1880) );
  AO222 U100 ( .A1(N161), .A2(n1160), .B1(last_addr_b[1]), .B2(n1170), .C1(
        n3130), .C2(n1180), .O(n1900) );
  AO222 U103 ( .A1(N160), .A2(n1160), .B1(last_addr_b[0]), .B2(n1170), .C1(
        n540), .C2(n1180), .O(n192) );
  OR3B2 U106 ( .I1(n89), .B1(n435), .B2(n400), .O(n1140) );
  AO222 U107 ( .A1(N167), .A2(n1160), .B1(last_addr_b[7]), .B2(n1170), .C1(
        n331), .C2(n1180), .O(n194) );
  ND2 U111 ( .I1(N151), .I2(n435), .O(n1080) );
  ND2 U113 ( .I1(n433), .I2(n1130), .O(n1110) );
  XOR3 U115 ( .I1(cnt_m[1]), .I2(n1270), .I3(n1280), .O(n1030) );
  ND2 U118 ( .I1(m[2]), .I2(n1020), .O(n1290) );
  AN2 U130 ( .I1(n136), .I2(n84), .O(n132) );
  ND2 U139 ( .I1(n411), .I2(n61), .O(n84) );
  AN2 U146 ( .I1(rd_b_2), .I2(dataout_b_2[6]), .O(from_top__net[118]) );
  AN2 U147 ( .I1(dataout_b_2[7]), .I2(rd_b_2), .O(from_top__net[119]) );
  AN2 U148 ( .I1(dataout_b_1[0]), .I2(rd_b_1), .O(from_top__net[120]) );
  AN2 U149 ( .I1(dataout_b_1[1]), .I2(rd_b_1), .O(from_top__net[121]) );
  AN2 U150 ( .I1(dataout_b_1[2]), .I2(rd_b_1), .O(from_top__net[122]) );
  AN2 U151 ( .I1(dataout_b_1[3]), .I2(rd_b_1), .O(from_top__net[123]) );
  AN2 U152 ( .I1(dataout_b_1[4]), .I2(rd_b_1), .O(from_top__net[124]) );
  AN2 U153 ( .I1(rd_b_4), .I2(dataout_b_4[0]), .O(from_top__net[96]) );
  AN2 U154 ( .I1(dataout_b_4[1]), .I2(rd_b_4), .O(from_top__net[97]) );
  AN2 U155 ( .I1(dataout_b_1[5]), .I2(rd_b_1), .O(from_top__net[125]) );
  AN2 U156 ( .I1(dataout_b_4[2]), .I2(rd_b_4), .O(from_top__net[98]) );
  AN2 U157 ( .I1(dataout_b_4[3]), .I2(rd_b_4), .O(from_top__net[99]) );
  AN2 U158 ( .I1(dataout_b_4[4]), .I2(rd_b_4), .O(from_top__net[100]) );
  AN2 U159 ( .I1(dataout_b_4[5]), .I2(rd_b_4), .O(from_top__net[101]) );
  AN2 U160 ( .I1(dataout_b_4[6]), .I2(rd_b_4), .O(from_top__net[102]) );
  AN2 U161 ( .I1(dataout_b_4[7]), .I2(rd_b_4), .O(from_top__net[103]) );
  AN2 U162 ( .I1(rd_b_3), .I2(dataout_b_3[0]), .O(from_top__net[104]) );
  AN2 U163 ( .I1(dataout_b_3[1]), .I2(rd_b_3), .O(from_top__net[105]) );
  AN2 U164 ( .I1(dataout_b_3[2]), .I2(rd_b_3), .O(from_top__net[106]) );
  AN2 U165 ( .I1(dataout_b_3[3]), .I2(rd_b_3), .O(from_top__net[107]) );
  AN2 U166 ( .I1(dataout_b_1[6]), .I2(rd_b_1), .O(from_top__net[126]) );
  AN2 U167 ( .I1(dataout_b_3[4]), .I2(rd_b_3), .O(from_top__net[108]) );
  AN2 U168 ( .I1(dataout_b_3[5]), .I2(rd_b_3), .O(from_top__net[109]) );
  AN2 U169 ( .I1(dataout_b_3[6]), .I2(rd_b_3), .O(from_top__net[110]) );
  AN2 U170 ( .I1(dataout_b_3[7]), .I2(rd_b_3), .O(from_top__net[111]) );
  AN2 U171 ( .I1(dataout_b_2[0]), .I2(rd_b_2), .O(from_top__net[112]) );
  AN2 U172 ( .I1(dataout_b_2[1]), .I2(rd_b_2), .O(from_top__net[113]) );
  AN2 U173 ( .I1(dataout_b_2[2]), .I2(rd_b_2), .O(from_top__net[114]) );
  AN2 U174 ( .I1(dataout_b_2[3]), .I2(rd_b_2), .O(from_top__net[115]) );
  AN2 U175 ( .I1(dataout_b_2[4]), .I2(rd_b_2), .O(from_top__net[116]) );
  AN2 U176 ( .I1(dataout_b_2[5]), .I2(rd_b_2), .O(from_top__net[117]) );
  AN2 U177 ( .I1(dataout_b_1[7]), .I2(rd_b_1), .O(from_top__net[127]) );
  AN2 U178 ( .I1(rd_a_2), .I2(dataout_a_2[6]), .O(from_left_net[118]) );
  AN2 U179 ( .I1(dataout_a_2[7]), .I2(rd_a_2), .O(from_left_net[119]) );
  AN2 U180 ( .I1(dataout_a_1[0]), .I2(rd_a_1), .O(from_left_net[120]) );
  AN2 U181 ( .I1(dataout_a_1[1]), .I2(rd_a_1), .O(from_left_net[121]) );
  AN2 U182 ( .I1(dataout_a_1[2]), .I2(rd_a_1), .O(from_left_net[122]) );
  AN2 U183 ( .I1(dataout_a_1[3]), .I2(rd_a_1), .O(from_left_net[123]) );
  AN2 U184 ( .I1(dataout_a_1[4]), .I2(rd_a_1), .O(from_left_net[124]) );
  AN2 U185 ( .I1(rd_a_4), .I2(dataout_a_4[0]), .O(from_left_net[96]) );
  AN2 U186 ( .I1(dataout_a_4[1]), .I2(rd_a_4), .O(from_left_net[97]) );
  AN2 U187 ( .I1(dataout_a_1[5]), .I2(rd_a_1), .O(from_left_net[125]) );
  AN2 U188 ( .I1(dataout_a_4[2]), .I2(rd_a_4), .O(from_left_net[98]) );
  AN2 U189 ( .I1(dataout_a_4[3]), .I2(rd_a_4), .O(from_left_net[99]) );
  AN2 U190 ( .I1(dataout_a_4[4]), .I2(rd_a_4), .O(from_left_net[100]) );
  AN2 U191 ( .I1(dataout_a_4[5]), .I2(rd_a_4), .O(from_left_net[101]) );
  AN2 U192 ( .I1(dataout_a_4[6]), .I2(rd_a_4), .O(from_left_net[102]) );
  AN2 U193 ( .I1(dataout_a_4[7]), .I2(rd_a_4), .O(from_left_net[103]) );
  AN2 U194 ( .I1(rd_a_3), .I2(dataout_a_3[0]), .O(from_left_net[104]) );
  AN2 U195 ( .I1(dataout_a_3[1]), .I2(rd_a_3), .O(from_left_net[105]) );
  AN2 U196 ( .I1(dataout_a_3[2]), .I2(rd_a_3), .O(from_left_net[106]) );
  AN2 U197 ( .I1(dataout_a_3[3]), .I2(rd_a_3), .O(from_left_net[107]) );
  AN2 U198 ( .I1(dataout_a_1[6]), .I2(rd_a_1), .O(from_left_net[126]) );
  AN2 U199 ( .I1(dataout_a_3[4]), .I2(rd_a_3), .O(from_left_net[108]) );
  AN2 U200 ( .I1(dataout_a_3[5]), .I2(rd_a_3), .O(from_left_net[109]) );
  AN2 U201 ( .I1(dataout_a_3[6]), .I2(rd_a_3), .O(from_left_net[110]) );
  AN2 U202 ( .I1(dataout_a_3[7]), .I2(rd_a_3), .O(from_left_net[111]) );
  AN2 U203 ( .I1(dataout_a_2[0]), .I2(rd_a_2), .O(from_left_net[112]) );
  AN2 U204 ( .I1(dataout_a_2[1]), .I2(rd_a_2), .O(from_left_net[113]) );
  AN2 U205 ( .I1(dataout_a_2[2]), .I2(rd_a_2), .O(from_left_net[114]) );
  AN2 U206 ( .I1(dataout_a_2[3]), .I2(rd_a_2), .O(from_left_net[115]) );
  AN2 U207 ( .I1(dataout_a_2[4]), .I2(rd_a_2), .O(from_left_net[116]) );
  AN2 U208 ( .I1(dataout_a_2[5]), .I2(rd_a_2), .O(from_left_net[117]) );
  AN2 U209 ( .I1(dataout_a_1[7]), .I2(rd_a_1), .O(from_left_net[127]) );
  AN2 U210 ( .I1(n435), .I2(rd_b_3), .O(N72) );
  AN2 U211 ( .I1(n435), .I2(rd_b_2), .O(N71) );
  AN2 U212 ( .I1(n435), .I2(rd_b_1), .O(N70) );
  AN2 U213 ( .I1(n435), .I2(rd_a_3), .O(N59) );
  AN2 U214 ( .I1(n435), .I2(rd_a_2), .O(N58) );
  AN2 U215 ( .I1(n435), .I2(rd_a_1), .O(N57) );
  ND2 U217 ( .I1(n436), .I2(n437), .O(n61) );
  ND2 U220 ( .I1(state[0]), .I2(n438), .O(n55) );
  AN3B2S U223 ( .I1(n1450), .B1(n439), .B2(N40), .O(n130) );
  AN2 U227 ( .I1(N122), .I2(n410), .O(N327) );
  AN2 U228 ( .I1(N123), .I2(n410), .O(N326) );
  AN2 U229 ( .I1(N124), .I2(n960), .O(N325) );
  AN2 U230 ( .I1(N125), .I2(n960), .O(N324) );
  AN2 U231 ( .I1(N126), .I2(n960), .O(N323) );
  AN2 U232 ( .I1(N127), .I2(n960), .O(N322) );
  AN2 U233 ( .I1(N128), .I2(n960), .O(N321) );
  AN2 U234 ( .I1(N129), .I2(n960), .O(N320) );
  AN2 U235 ( .I1(N114), .I2(n960), .O(N319) );
  AN2 U236 ( .I1(N115), .I2(n960), .O(N318) );
  AN2 U237 ( .I1(N116), .I2(n960), .O(N317) );
  AN2 U238 ( .I1(N117), .I2(n960), .O(N316) );
  AN2 U239 ( .I1(N118), .I2(n960), .O(N315) );
  AN2 U240 ( .I1(N119), .I2(n960), .O(N314) );
  AN2 U241 ( .I1(N120), .I2(n960), .O(N313) );
  AN2 U242 ( .I1(N121), .I2(n960), .O(N312) );
  AN2 U243 ( .I1(N106), .I2(n960), .O(N311) );
  AN2 U244 ( .I1(N107), .I2(n960), .O(N310) );
  AN2 U245 ( .I1(N108), .I2(n960), .O(N309) );
  AN2 U246 ( .I1(N109), .I2(n960), .O(N308) );
  AN2 U247 ( .I1(N110), .I2(n960), .O(N307) );
  AN2 U248 ( .I1(N111), .I2(n960), .O(N306) );
  AN2 U249 ( .I1(N112), .I2(n960), .O(N305) );
  AN2 U250 ( .I1(N113), .I2(n410), .O(N304) );
  AN2 U251 ( .I1(N98), .I2(n410), .O(N303) );
  AN2 U252 ( .I1(N99), .I2(n410), .O(N302) );
  AN2 U253 ( .I1(N100), .I2(n410), .O(N301) );
  AN2 U254 ( .I1(N101), .I2(n960), .O(N300) );
  AN2 U255 ( .I1(N102), .I2(n410), .O(N299) );
  AN2 U256 ( .I1(N103), .I2(n960), .O(N298) );
  AN2 U257 ( .I1(N104), .I2(n410), .O(N297) );
  AN2 U258 ( .I1(N105), .I2(n960), .O(N296) );
  ND2 U260 ( .I1(state[1]), .I2(n434), .O(n1260) );
  HA1 r474_U1_1_1 ( .A(N41), .B(N40), .C(r474_carry[2]), .S(N142) );
  HA1 r474_U1_1_2 ( .A(cnt[2]), .B(r474_carry[2]), .C(r474_carry[3]), .S(N143)
         );
  HA1 r474_U1_1_3 ( .A(cnt[3]), .B(r474_carry[3]), .C(r474_carry[4]), .S(N144)
         );
  QDFFRBN rd_b_4_reg ( .D(N72), .CK(clk), .RB(n428), .Q(rd_b_4) );
  QDFFRBN rd_b_3_reg ( .D(N71), .CK(clk), .RB(n428), .Q(rd_b_3) );
  QDFFRBN rd_a_4_reg ( .D(N59), .CK(clk), .RB(n428), .Q(rd_a_4) );
  QDFFRBN rd_a_3_reg ( .D(N58), .CK(clk), .RB(n428), .Q(rd_a_3) );
  QDFFRBN rd_b_2_reg ( .D(N70), .CK(clk), .RB(n428), .Q(rd_b_2) );
  QDFFRBN rd_a_2_reg ( .D(N57), .CK(clk), .RB(n428), .Q(rd_a_2) );
  QDFFRBN last_addr_b_reg_6_ ( .D(n1790), .CK(clk), .RB(n428), .Q(
        last_addr_b[6]) );
  QDFFRBN last_addr_b_reg_5_ ( .D(n1810), .CK(clk), .RB(n428), .Q(
        last_addr_b[5]) );
  QDFFRBN last_addr_b_reg_4_ ( .D(n1830), .CK(clk), .RB(n428), .Q(
        last_addr_b[4]) );
  QDFFRBN last_addr_b_reg_3_ ( .D(n1850), .CK(clk), .RB(n428), .Q(
        last_addr_b[3]) );
  QDFFRBN last_addr_b_reg_2_ ( .D(n1870), .CK(clk), .RB(n428), .Q(
        last_addr_b[2]) );
  QDFFRBN last_addr_b_reg_1_ ( .D(n1890), .CK(clk), .RB(n428), .Q(
        last_addr_b[1]) );
  QDFFRBN last_addr_b_reg_7_ ( .D(n193), .CK(clk), .RB(n428), .Q(
        last_addr_b[7]) );
  QDFFRBN last_addr_b_reg_0_ ( .D(n191), .CK(clk), .RB(n428), .Q(
        last_addr_b[0]) );
  QDFFRBN addr_c_reg_5_ ( .D(n1530), .CK(clk), .RB(n428), .Q(n460) );
  QDFFRBN addr_c_reg_4_ ( .D(n1540), .CK(clk), .RB(n428), .Q(n461) );
  QDFFRBN addr_c_reg_3_ ( .D(n1550), .CK(clk), .RB(n428), .Q(n462) );
  QDFFRBN addr_c_reg_2_ ( .D(n1560), .CK(clk), .RB(n428), .Q(n463) );
  QDFFRBN addr_c_reg_1_ ( .D(n1570), .CK(clk), .RB(n428), .Q(n464) );
  QDFFRBN addr_c_reg_6_ ( .D(n1520), .CK(clk), .RB(n428), .Q(n459) );
  QDFFRBN addr_c_reg_7_ ( .D(n1670), .CK(clk), .RB(n428), .Q(n458) );
  QDFFRBN rd_b_1_reg ( .D(n150), .CK(clk), .RB(n428), .Q(rd_b_1) );
  QDFFRBN rd_a_1_reg ( .D(n1510), .CK(clk), .RB(n428), .Q(rd_a_1) );
  QDFFRBN cnt_m_reg_0_ ( .D(n195), .CK(clk), .RB(n428), .Q(cnt_m[0]) );
  QDFFRBN state_reg_1_ ( .D(next_state[1]), .CK(clk), .RB(n428), .Q(state[1])
         );
  QDFFRBN cnt_m_reg_1_ ( .D(n1780), .CK(clk), .RB(n428), .Q(cnt_m[1]) );
  QDFFRBN cnt_n_reg_0_ ( .D(n169), .CK(clk), .RB(n428), .Q(cnt_n[0]) );
  QDFFRBN state_reg_2_ ( .D(next_state[2]), .CK(clk), .RB(n428), .Q(state[2])
         );
  QDFFRBN state_reg_0_ ( .D(next_state[0]), .CK(clk), .RB(n428), .Q(state[0])
         );
  QDFFRBN cnt_n_reg_1_ ( .D(n168), .CK(clk), .RB(n428), .Q(cnt_n[1]) );
  QDFFRBN last_addr_c_reg_5_ ( .D(n1610), .CK(clk), .RB(n428), .Q(
        last_addr_c[5]) );
  QDFFRBN last_addr_c_reg_4_ ( .D(n1620), .CK(clk), .RB(n428), .Q(
        last_addr_c[4]) );
  QDFFRBN last_addr_c_reg_3_ ( .D(n1630), .CK(clk), .RB(n428), .Q(
        last_addr_c[3]) );
  QDFFRBN last_addr_c_reg_2_ ( .D(n1640), .CK(clk), .RB(n428), .Q(
        last_addr_c[2]) );
  QDFFRBN last_addr_c_reg_1_ ( .D(n1650), .CK(clk), .RB(n428), .Q(
        last_addr_c[1]) );
  QDFFRBN last_addr_c_reg_0_ ( .D(n1660), .CK(clk), .RB(n428), .Q(
        last_addr_c[0]) );
  QDFFRBN cnt_reg_1_ ( .D(n200), .CK(clk), .RB(n428), .Q(N41) );
  QDFFRBN cnt_reg_0_ ( .D(n199), .CK(clk), .RB(n428), .Q(N40) );
  QDFFRBN cnt_reg_4_ ( .D(n196), .CK(clk), .RB(n428), .Q(cnt[4]) );
  QDFFRBN cnt_reg_3_ ( .D(n197), .CK(clk), .RB(n428), .Q(cnt[3]) );
  QDFFRBN cnt_reg_2_ ( .D(n198), .CK(clk), .RB(n428), .Q(cnt[2]) );
  QDFFRBN last_addr_c_reg_6_ ( .D(n1600), .CK(clk), .RB(n428), .Q(
        last_addr_c[6]) );
  QDFFRBN addr_b_reg_5_ ( .D(n1820), .CK(clk), .RB(n428), .Q(n453) );
  QDFFRBN addr_b_reg_4_ ( .D(n1840), .CK(clk), .RB(n428), .Q(n454) );
  QDFFRBN addr_b_reg_3_ ( .D(n1860), .CK(clk), .RB(n428), .Q(n455) );
  QDFFRBN addr_b_reg_2_ ( .D(n1880), .CK(clk), .RB(n428), .Q(n456) );
  QDFFRBN addr_b_reg_1_ ( .D(n1900), .CK(clk), .RB(n428), .Q(n457) );
  QDFFRBN addr_b_reg_7_ ( .D(n194), .CK(clk), .RB(n428), .Q(n451) );
  QDFFRBN addr_b_reg_6_ ( .D(n1800), .CK(clk), .RB(n428), .Q(n452) );
  QDFFRBN last_addr_c_reg_7_ ( .D(n1590), .CK(clk), .RB(n428), .Q(
        last_addr_c[7]) );
  QDFFRBN addr_a_reg_6_ ( .D(n170), .CK(clk), .RB(n428), .Q(n445) );
  QDFFRBN addr_a_reg_5_ ( .D(n171), .CK(clk), .RB(n428), .Q(n446) );
  QDFFRBN addr_a_reg_4_ ( .D(n172), .CK(clk), .RB(n428), .Q(n447) );
  QDFFRBN addr_a_reg_3_ ( .D(n173), .CK(clk), .RB(n428), .Q(n448) );
  QDFFRBN addr_a_reg_2_ ( .D(n174), .CK(clk), .RB(n428), .Q(n449) );
  QDFFRBN addr_a_reg_1_ ( .D(n1750), .CK(clk), .RB(n428), .Q(n450) );
  QDFFRBN addr_a_reg_7_ ( .D(n1770), .CK(clk), .RB(n428), .Q(n444) );
  DFFSBN systolic_array_rst_reg ( .D(n149), .CK(clk), .SB(n428), .Q(sys_rst), 
        .QB(n148) );
  INV1S U395 ( .I(k[1]), .O(n426) );
  INV1S U396 ( .I(k[2]), .O(n427) );
  OR2 U397 ( .I1(m[0]), .I2(m[1]), .O(n1020) );
  OR2 U398 ( .I1(n[0]), .I2(n[1]), .O(n80) );
  XNR2HS U399 ( .I1(n1290), .I2(m[3]), .O(n1280) );
  XOR2HS U400 ( .I1(m[2]), .I2(n1020), .O(n1270) );
  XOR2HS U401 ( .I1(cnt_m[0]), .I2(n1270), .O(n1010) );
  NR2 U402 ( .I1(N42), .I2(n1430), .O(n201) );
  NR2 U403 ( .I1(N41), .I2(n89), .O(n1430) );
  ND3 U404 ( .I1(n1010), .I2(n1020), .I3(n1030), .O(n1000) );
  INV1S U405 ( .I(state[0]), .O(n434) );
  XOR2HS U406 ( .I1(cnt[3]), .I2(N96), .O(n140) );
  XOR2HS U407 ( .I1(cnt[2]), .I2(N95), .O(n1420) );
  XOR2HS U408 ( .I1(N93), .I2(N40), .O(n141) );
  INV1S U409 ( .I(n73), .O(n432) );
  INV1S U410 ( .I(cnt_n[1]), .O(n441) );
  XOR2HS U411 ( .I1(n79), .I2(n[3]), .O(n75) );
  NR2 U412 ( .I1(n75), .I2(n432), .O(n77) );
  XOR2HS U413 ( .I1(n[2]), .I2(n80), .O(n73) );
  OAI112HS U414 ( .C1(n1270), .C2(n1280), .A1(n1010), .B1(n1030), .O(n1130) );
  XOR2HS U415 ( .I1(cnt[3]), .I2(N46), .O(n930) );
  XOR2HS U416 ( .I1(cnt[2]), .I2(N45), .O(n950) );
  XOR2HS U417 ( .I1(N93), .I2(N40), .O(n940) );
  ND3 U418 ( .I1(n425), .I2(n439), .I3(n1440), .O(n89) );
  NR2 U419 ( .I1(cnt[4]), .I2(cnt[3]), .O(n1440) );
  NR2 U420 ( .I1(n1260), .I2(state[2]), .O(n960) );
  NR3 U421 ( .I1(N41), .I2(cnt[4]), .I3(cnt[3]), .O(n1450) );
  INV1S U422 ( .I(state[2]), .O(n437) );
  AN2 U423 ( .I1(n1080), .I2(n1050), .O(n1060) );
  NR2 U424 ( .I1(n55), .I2(n1060), .O(n1070) );
  AN2 U425 ( .I1(n1110), .I2(n1080), .O(n1180) );
  NR2 U426 ( .I1(n55), .I2(n1180), .O(n1160) );
  NR2 U427 ( .I1(n1260), .I2(n1180), .O(n1170) );
  INV1S U428 ( .I(cnt[2]), .O(n439) );
  MOAI1S U429 ( .A1(n130), .A2(n1260), .B1(n436), .B2(n62), .O(n136) );
  FA1S U430 ( .A(last_addr_c[1]), .B(m[1]), .CI(add_317_carry[1]), .CO(
        add_317_carry[2]), .S(N176) );
  NR2 U431 ( .I1(n1000), .I2(n65), .O(n970) );
  INV1S U432 ( .I(n55), .O(n436) );
  ND3 U433 ( .I1(n438), .I2(n437), .I3(n434), .O(n67) );
  INV1S U434 ( .I(cnt_n[0]), .O(n440) );
  INV1S U435 ( .I(n1130), .O(n430) );
  INV1S U436 ( .I(n65), .O(n433) );
  ND3 U437 ( .I1(n137), .I2(n138), .I3(n139), .O(n62) );
  XOR2HS U438 ( .I1(n400), .I2(N94), .O(n138) );
  XNR2HS U439 ( .I1(cnt[4]), .I2(N97), .O(n137) );
  NR3 U440 ( .I1(n140), .I2(n141), .I3(n1420), .O(n139) );
  NR2 U441 ( .I1(n84), .I2(n436), .O(n63) );
  OAI112HS U442 ( .C1(n432), .C2(n440), .A1(n430), .B1(n720), .O(n580) );
  INV1S U443 ( .I(n75), .O(n431) );
  INV1S U444 ( .I(state[1]), .O(n438) );
  AOI13HS U445 ( .B1(n90), .B2(n91), .B3(n92), .A1(n61), .O(n86) );
  XOR2HS U446 ( .I1(n400), .I2(N44), .O(n91) );
  XNR2HS U447 ( .I1(cnt[4]), .I2(N47), .O(n90) );
  NR3 U448 ( .I1(n930), .I2(n940), .I3(n950), .O(n92) );
  NR3 U449 ( .I1(n61), .I2(n400), .I3(n89), .O(n87) );
  INV1S U450 ( .I(n61), .O(n435) );
  MOAI1S U451 ( .A1(n54), .A2(n409), .B1(next_state[2]), .B2(n54), .O(n149) );
  MOAI1S U452 ( .A1(n55), .A2(n437), .B1(next_state[0]), .B2(n56), .O(n54) );
  MOAI1S U453 ( .A1(n439), .A2(n84), .B1(N143), .B2(n132), .O(n198) );
  MOAI1S U454 ( .A1(n424), .A2(n84), .B1(N144), .B2(n132), .O(n197) );
  MOAI1S U455 ( .A1(n423), .A2(n84), .B1(N145), .B2(n132), .O(n196) );
  MOAI1S U456 ( .A1(n425), .A2(n84), .B1(n425), .B2(n132), .O(n199) );
  MOAI1S U457 ( .A1(n400), .A2(n84), .B1(N142), .B2(n132), .O(n200) );
  XOR2HS U458 ( .I1(cnt_n[1]), .I2(n1040), .O(n168) );
  NR2 U459 ( .I1(n440), .I2(n1050), .O(n1040) );
  ND3 U460 ( .I1(n65), .I2(n67), .I3(n81), .O(next_state[0]) );
  AOI22S U461 ( .A1(state[0]), .A2(n68), .B1(state[2]), .B2(n436), .O(n81) );
  OAI112HS U462 ( .C1(n429), .C2(n65), .A1(n66), .B1(n67), .O(next_state[2])
         );
  INV1S U463 ( .I(n580), .O(n429) );
  XOR2HS U464 ( .I1(n440), .I2(n1050), .O(n169) );
  OAI22S U465 ( .A1(n1090), .A2(n442), .B1(n1110), .B2(n1120), .O(n1780) );
  OA12 U466 ( .B1(cnt_m[0]), .B2(n430), .A1(n433), .O(n1090) );
  INV1S U467 ( .I(cnt_m[1]), .O(n442) );
  OAI222S U468 ( .A1(n411), .A2(n580), .B1(n590), .B2(n438), .C1(n61), .C2(n62), .O(next_state[1]) );
  NR2 U469 ( .I1(n63), .I2(N333), .O(n590) );
  MOAI1S U470 ( .A1(cnt_m[0]), .A2(n1110), .B1(n65), .B2(cnt_m[0]), .O(n195)
         );
  MOAI1S U471 ( .A1(n1140), .A2(n443), .B1(last_addr_b[0]), .B2(n1140), .O(
        n191) );
  MOAI1S U472 ( .A1(n1140), .A2(n329), .B1(last_addr_b[7]), .B2(n1140), .O(
        n193) );
  MOAI1S U473 ( .A1(n1140), .A2(n3110), .B1(last_addr_b[1]), .B2(n1140), .O(
        n1890) );
  MOAI1S U474 ( .A1(n1140), .A2(n3140), .B1(last_addr_b[2]), .B2(n1140), .O(
        n1870) );
  MOAI1S U475 ( .A1(n1140), .A2(n3170), .B1(last_addr_b[3]), .B2(n1140), .O(
        n1850) );
  MOAI1S U476 ( .A1(n1140), .A2(n3200), .B1(last_addr_b[4]), .B2(n1140), .O(
        n1830) );
  MOAI1S U477 ( .A1(n1140), .A2(n3230), .B1(last_addr_b[5]), .B2(n1140), .O(
        n1810) );
  MOAI1S U478 ( .A1(n1140), .A2(n3260), .B1(last_addr_b[6]), .B2(n1140), .O(
        n1790) );
  INV1S U479 ( .I(N40), .O(n425) );
  BUF1CK U480 ( .I(n960), .O(n410) );
  INV1S U481 ( .I(n410), .O(n411) );
  BUF1CK U482 ( .I(n404), .O(n403) );
  BUF1CK U483 ( .I(n406), .O(n405) );
  BUF1CK U484 ( .I(n408), .O(n407) );
  ND2 U485 ( .I1(n410), .I2(n130), .O(n65) );
  INV1S U486 ( .I(N41), .O(n400) );
  BUF1CK U487 ( .I(n396), .O(n406) );
  BUF1CK U488 ( .I(n394), .O(n402) );
  BUF1CK U489 ( .I(n402), .O(n401) );
  BUF1CK U490 ( .I(n395), .O(n404) );
  BUF1CK U491 ( .I(n397), .O(n408) );
  INV1S U492 ( .I(cnt[4]), .O(n423) );
  INV1S U493 ( .I(cnt[3]), .O(n424) );
  BUF2CK U494 ( .I(n148), .O(n409) );
  NR2 U495 ( .I1(n411), .I2(n130), .O(N333) );
  AO13S U496 ( .B1(state[0]), .B2(n437), .B3(state[1]), .A1(done), .O(n146) );
  INV1S U497 ( .I(n450), .O(n269) );
  INV4 U498 ( .I(n269), .O(addr_a[1]) );
  INV1S U499 ( .I(n269), .O(n271) );
  INV1S U500 ( .I(n464), .O(n272) );
  INV4 U501 ( .I(n272), .O(addr_c[1]) );
  INV1S U502 ( .I(n272), .O(n274) );
  INV1S U503 ( .I(n449), .O(n275) );
  INV4 U504 ( .I(n275), .O(addr_a[2]) );
  INV1S U505 ( .I(n275), .O(n277) );
  INV1S U506 ( .I(n448), .O(n278) );
  INV4 U507 ( .I(n278), .O(addr_a[3]) );
  INV1S U508 ( .I(n278), .O(n280) );
  INV1S U509 ( .I(n447), .O(n281) );
  INV4 U510 ( .I(n281), .O(addr_a[4]) );
  INV1S U511 ( .I(n281), .O(n283) );
  INV1S U512 ( .I(n446), .O(n284) );
  INV4 U513 ( .I(n284), .O(addr_a[5]) );
  INV1S U514 ( .I(n284), .O(n286) );
  INV1S U515 ( .I(n445), .O(n287) );
  INV4 U516 ( .I(n287), .O(addr_a[6]) );
  INV1S U517 ( .I(n287), .O(n289) );
  INV1S U518 ( .I(n459), .O(n290) );
  INV4 U519 ( .I(n290), .O(addr_c[6]) );
  INV1S U520 ( .I(n290), .O(n292) );
  INV1S U521 ( .I(n463), .O(n293) );
  INV4 U522 ( .I(n293), .O(addr_c[2]) );
  INV1S U523 ( .I(n293), .O(n295) );
  INV1S U524 ( .I(n462), .O(n2960) );
  INV4 U525 ( .I(n2960), .O(addr_c[3]) );
  INV1S U526 ( .I(n2960), .O(n2980) );
  INV1S U527 ( .I(n461), .O(n2990) );
  INV4 U528 ( .I(n2990), .O(addr_c[4]) );
  INV1S U529 ( .I(n2990), .O(n3010) );
  INV1S U530 ( .I(n460), .O(n3020) );
  INV4 U531 ( .I(n3020), .O(addr_c[5]) );
  INV1S U532 ( .I(n3020), .O(n3040) );
  INV1S U533 ( .I(n444), .O(n3050) );
  INV4 U534 ( .I(n3050), .O(addr_a[7]) );
  INV1S U535 ( .I(n3050), .O(n3070) );
  INV1S U536 ( .I(n458), .O(n3080) );
  INV4 U537 ( .I(n3080), .O(addr_c[7]) );
  INV1S U538 ( .I(n3080), .O(n3100) );
  INV1S U539 ( .I(n457), .O(n3110) );
  INV4 U540 ( .I(n3110), .O(addr_b[1]) );
  INV1S U541 ( .I(n3110), .O(n3130) );
  INV1S U542 ( .I(n456), .O(n3140) );
  INV4 U543 ( .I(n3140), .O(addr_b[2]) );
  INV1S U544 ( .I(n3140), .O(n3160) );
  INV1S U545 ( .I(n455), .O(n3170) );
  INV4 U546 ( .I(n3170), .O(addr_b[3]) );
  INV1S U547 ( .I(n3170), .O(n3190) );
  INV1S U548 ( .I(n454), .O(n3200) );
  INV4 U549 ( .I(n3200), .O(addr_b[4]) );
  INV1S U550 ( .I(n3200), .O(n3220) );
  INV1S U551 ( .I(n453), .O(n3230) );
  INV4 U552 ( .I(n3230), .O(addr_b[5]) );
  INV1S U553 ( .I(n3230), .O(n3250) );
  INV1S U554 ( .I(n452), .O(n3260) );
  INV4 U555 ( .I(n3260), .O(addr_b[6]) );
  INV1S U556 ( .I(n3260), .O(n328) );
  INV1S U557 ( .I(n451), .O(n329) );
  INV4 U558 ( .I(n329), .O(addr_b[7]) );
  INV1S U559 ( .I(n329), .O(n331) );
  INV1S U560 ( .I(n540), .O(n443) );
  INV4 U561 ( .I(rst), .O(n428) );
  NR2 U563 ( .I1(n400), .I2(N40), .O(n395) );
  NR2 U564 ( .I1(n400), .I2(n425), .O(n394) );
  AOI22S U565 ( .A1(multi_out_net[32]), .A2(n403), .B1(multi_out_net[0]), .B2(
        n394), .O(n3330) );
  NR2 U566 ( .I1(N40), .I2(N41), .O(n397) );
  NR2 U567 ( .I1(n425), .I2(N41), .O(n396) );
  AOI22S U568 ( .A1(multi_out_net[96]), .A2(n407), .B1(multi_out_net[64]), 
        .B2(n405), .O(n332) );
  ND2 U569 ( .I1(n3330), .I2(n332), .O(N129) );
  AOI22S U570 ( .A1(multi_out_net[33]), .A2(n403), .B1(multi_out_net[1]), .B2(
        n394), .O(n335) );
  AOI22S U571 ( .A1(multi_out_net[97]), .A2(n407), .B1(multi_out_net[65]), 
        .B2(n405), .O(n334) );
  ND2 U572 ( .I1(n335), .I2(n334), .O(N128) );
  AOI22S U573 ( .A1(multi_out_net[34]), .A2(n403), .B1(multi_out_net[2]), .B2(
        n394), .O(n337) );
  AOI22S U574 ( .A1(multi_out_net[98]), .A2(n407), .B1(multi_out_net[66]), 
        .B2(n405), .O(n336) );
  ND2 U575 ( .I1(n337), .I2(n336), .O(N127) );
  AOI22S U576 ( .A1(multi_out_net[35]), .A2(n403), .B1(multi_out_net[3]), .B2(
        n394), .O(n339) );
  AOI22S U577 ( .A1(multi_out_net[99]), .A2(n407), .B1(multi_out_net[67]), 
        .B2(n405), .O(n338) );
  ND2 U578 ( .I1(n339), .I2(n338), .O(N126) );
  AOI22S U579 ( .A1(multi_out_net[36]), .A2(n403), .B1(multi_out_net[4]), .B2(
        n394), .O(n341) );
  AOI22S U580 ( .A1(multi_out_net[100]), .A2(n407), .B1(multi_out_net[68]), 
        .B2(n405), .O(n340) );
  ND2 U581 ( .I1(n341), .I2(n340), .O(N125) );
  AOI22S U582 ( .A1(multi_out_net[37]), .A2(n403), .B1(multi_out_net[5]), .B2(
        n394), .O(n343) );
  AOI22S U583 ( .A1(multi_out_net[101]), .A2(n407), .B1(multi_out_net[69]), 
        .B2(n405), .O(n342) );
  ND2 U584 ( .I1(n343), .I2(n342), .O(N124) );
  AOI22S U585 ( .A1(multi_out_net[38]), .A2(n403), .B1(multi_out_net[6]), .B2(
        n394), .O(n345) );
  AOI22S U586 ( .A1(multi_out_net[102]), .A2(n407), .B1(multi_out_net[70]), 
        .B2(n405), .O(n344) );
  ND2 U587 ( .I1(n345), .I2(n344), .O(N123) );
  AOI22S U588 ( .A1(multi_out_net[39]), .A2(n403), .B1(multi_out_net[7]), .B2(
        n394), .O(n347) );
  AOI22S U589 ( .A1(multi_out_net[103]), .A2(n407), .B1(multi_out_net[71]), 
        .B2(n405), .O(n346) );
  ND2 U590 ( .I1(n347), .I2(n346), .O(N122) );
  AOI22S U591 ( .A1(multi_out_net[40]), .A2(n403), .B1(multi_out_net[8]), .B2(
        n394), .O(n349) );
  AOI22S U592 ( .A1(multi_out_net[104]), .A2(n407), .B1(multi_out_net[72]), 
        .B2(n405), .O(n348) );
  ND2 U593 ( .I1(n349), .I2(n348), .O(N121) );
  AOI22S U594 ( .A1(multi_out_net[41]), .A2(n403), .B1(multi_out_net[9]), .B2(
        n394), .O(n351) );
  AOI22S U595 ( .A1(multi_out_net[105]), .A2(n407), .B1(multi_out_net[73]), 
        .B2(n405), .O(n350) );
  ND2 U596 ( .I1(n351), .I2(n350), .O(N120) );
  AOI22S U597 ( .A1(multi_out_net[42]), .A2(n403), .B1(multi_out_net[10]), 
        .B2(n402), .O(n353) );
  AOI22S U598 ( .A1(multi_out_net[106]), .A2(n407), .B1(multi_out_net[74]), 
        .B2(n405), .O(n352) );
  ND2 U599 ( .I1(n353), .I2(n352), .O(N119) );
  AOI22S U600 ( .A1(multi_out_net[43]), .A2(n403), .B1(multi_out_net[11]), 
        .B2(n402), .O(n355) );
  AOI22S U601 ( .A1(multi_out_net[107]), .A2(n407), .B1(multi_out_net[75]), 
        .B2(n406), .O(n354) );
  ND2 U602 ( .I1(n355), .I2(n354), .O(N118) );
  AOI22S U603 ( .A1(multi_out_net[44]), .A2(n403), .B1(multi_out_net[12]), 
        .B2(n402), .O(n357) );
  AOI22S U604 ( .A1(multi_out_net[108]), .A2(n407), .B1(multi_out_net[76]), 
        .B2(n406), .O(n356) );
  ND2 U605 ( .I1(n357), .I2(n356), .O(N117) );
  AOI22S U606 ( .A1(multi_out_net[45]), .A2(n403), .B1(multi_out_net[13]), 
        .B2(n402), .O(n359) );
  AOI22S U607 ( .A1(multi_out_net[109]), .A2(n407), .B1(multi_out_net[77]), 
        .B2(n406), .O(n358) );
  ND2 U608 ( .I1(n359), .I2(n358), .O(N116) );
  AOI22S U609 ( .A1(multi_out_net[46]), .A2(n403), .B1(multi_out_net[14]), 
        .B2(n402), .O(n361) );
  AOI22S U610 ( .A1(multi_out_net[110]), .A2(n407), .B1(multi_out_net[78]), 
        .B2(n406), .O(n360) );
  ND2 U611 ( .I1(n361), .I2(n360), .O(N115) );
  AOI22S U612 ( .A1(multi_out_net[47]), .A2(n403), .B1(multi_out_net[15]), 
        .B2(n402), .O(n363) );
  AOI22S U613 ( .A1(multi_out_net[111]), .A2(n407), .B1(multi_out_net[79]), 
        .B2(n406), .O(n362) );
  ND2 U614 ( .I1(n363), .I2(n362), .O(N114) );
  AOI22S U615 ( .A1(multi_out_net[48]), .A2(n395), .B1(multi_out_net[16]), 
        .B2(n402), .O(n365) );
  AOI22S U616 ( .A1(multi_out_net[112]), .A2(n407), .B1(multi_out_net[80]), 
        .B2(n406), .O(n364) );
  ND2 U617 ( .I1(n365), .I2(n364), .O(N113) );
  AOI22S U618 ( .A1(multi_out_net[49]), .A2(n395), .B1(multi_out_net[17]), 
        .B2(n402), .O(n367) );
  AOI22S U619 ( .A1(multi_out_net[113]), .A2(n407), .B1(multi_out_net[81]), 
        .B2(n406), .O(n366) );
  ND2 U620 ( .I1(n367), .I2(n366), .O(N112) );
  AOI22S U621 ( .A1(multi_out_net[50]), .A2(n404), .B1(multi_out_net[18]), 
        .B2(n402), .O(n369) );
  AOI22S U622 ( .A1(multi_out_net[114]), .A2(n407), .B1(multi_out_net[82]), 
        .B2(n406), .O(n368) );
  ND2 U623 ( .I1(n369), .I2(n368), .O(N111) );
  AOI22S U624 ( .A1(multi_out_net[51]), .A2(n403), .B1(multi_out_net[19]), 
        .B2(n402), .O(n371) );
  AOI22S U625 ( .A1(multi_out_net[115]), .A2(n407), .B1(multi_out_net[83]), 
        .B2(n406), .O(n370) );
  ND2 U626 ( .I1(n371), .I2(n370), .O(N110) );
  AOI22S U627 ( .A1(multi_out_net[52]), .A2(n403), .B1(multi_out_net[20]), 
        .B2(n402), .O(n373) );
  AOI22S U628 ( .A1(multi_out_net[116]), .A2(n407), .B1(multi_out_net[84]), 
        .B2(n406), .O(n372) );
  ND2 U629 ( .I1(n373), .I2(n372), .O(N109) );
  AOI22S U630 ( .A1(multi_out_net[53]), .A2(n395), .B1(multi_out_net[21]), 
        .B2(n401), .O(n375) );
  AOI22S U631 ( .A1(multi_out_net[117]), .A2(n407), .B1(multi_out_net[85]), 
        .B2(n396), .O(n374) );
  ND2 U632 ( .I1(n375), .I2(n374), .O(N108) );
  AOI22S U633 ( .A1(multi_out_net[54]), .A2(n404), .B1(multi_out_net[22]), 
        .B2(n401), .O(n377) );
  AOI22S U634 ( .A1(multi_out_net[118]), .A2(n408), .B1(multi_out_net[86]), 
        .B2(n396), .O(n376) );
  ND2 U635 ( .I1(n377), .I2(n376), .O(N107) );
  AOI22S U636 ( .A1(multi_out_net[55]), .A2(n404), .B1(multi_out_net[23]), 
        .B2(n401), .O(n379) );
  AOI22S U637 ( .A1(multi_out_net[119]), .A2(n408), .B1(multi_out_net[87]), 
        .B2(n396), .O(n378) );
  ND2 U638 ( .I1(n379), .I2(n378), .O(N106) );
  AOI22S U639 ( .A1(multi_out_net[56]), .A2(n404), .B1(multi_out_net[24]), 
        .B2(n401), .O(n381) );
  AOI22S U640 ( .A1(multi_out_net[120]), .A2(n408), .B1(multi_out_net[88]), 
        .B2(n406), .O(n380) );
  ND2 U641 ( .I1(n381), .I2(n380), .O(N105) );
  AOI22S U642 ( .A1(multi_out_net[57]), .A2(n404), .B1(multi_out_net[25]), 
        .B2(n401), .O(n383) );
  AOI22S U643 ( .A1(multi_out_net[121]), .A2(n408), .B1(multi_out_net[89]), 
        .B2(n396), .O(n382) );
  ND2 U644 ( .I1(n383), .I2(n382), .O(N104) );
  AOI22S U645 ( .A1(multi_out_net[58]), .A2(n404), .B1(multi_out_net[26]), 
        .B2(n401), .O(n385) );
  AOI22S U646 ( .A1(multi_out_net[122]), .A2(n408), .B1(multi_out_net[90]), 
        .B2(n405), .O(n384) );
  ND2 U647 ( .I1(n385), .I2(n384), .O(N103) );
  AOI22S U648 ( .A1(multi_out_net[59]), .A2(n404), .B1(multi_out_net[27]), 
        .B2(n401), .O(n387) );
  AOI22S U649 ( .A1(multi_out_net[123]), .A2(n408), .B1(multi_out_net[91]), 
        .B2(n396), .O(n386) );
  ND2 U650 ( .I1(n387), .I2(n386), .O(N102) );
  AOI22S U651 ( .A1(multi_out_net[60]), .A2(n404), .B1(multi_out_net[28]), 
        .B2(n401), .O(n389) );
  AOI22S U652 ( .A1(multi_out_net[124]), .A2(n408), .B1(multi_out_net[92]), 
        .B2(n405), .O(n388) );
  ND2 U653 ( .I1(n389), .I2(n388), .O(N101) );
  AOI22S U654 ( .A1(multi_out_net[61]), .A2(n404), .B1(multi_out_net[29]), 
        .B2(n401), .O(n391) );
  AOI22S U655 ( .A1(multi_out_net[125]), .A2(n408), .B1(multi_out_net[93]), 
        .B2(n396), .O(n390) );
  ND2 U656 ( .I1(n391), .I2(n390), .O(N100) );
  AOI22S U657 ( .A1(multi_out_net[62]), .A2(n404), .B1(multi_out_net[30]), 
        .B2(n401), .O(n393) );
  AOI22S U658 ( .A1(multi_out_net[126]), .A2(n408), .B1(multi_out_net[94]), 
        .B2(n396), .O(n392) );
  ND2 U659 ( .I1(n393), .I2(n392), .O(N99) );
  AOI22S U660 ( .A1(multi_out_net[63]), .A2(n404), .B1(multi_out_net[31]), 
        .B2(n401), .O(n399) );
  AOI22S U661 ( .A1(multi_out_net[127]), .A2(n408), .B1(multi_out_net[95]), 
        .B2(n396), .O(n398) );
  ND2 U662 ( .I1(n399), .I2(n398), .O(N98) );
  AN2 U663 ( .I1(add_35_carry_3_), .I2(k[3]), .O(N47) );
  XOR2HS U664 ( .I1(k[3]), .I2(add_35_carry_3_), .O(N46) );
  AN2 U665 ( .I1(add_35_carry_2_), .I2(k[2]), .O(add_35_carry_3_) );
  XOR2HS U666 ( .I1(k[2]), .I2(add_35_carry_2_), .O(N45) );
  OR2 U667 ( .I1(k[1]), .I2(k[0]), .O(add_35_carry_2_) );
  XNR2HS U668 ( .I1(k[0]), .I2(k[1]), .O(N44) );
  XOR2HS U669 ( .I1(last_addr_c[7]), .I2(add_317_carry[7]), .O(N182) );
  AN2 U670 ( .I1(add_317_carry[6]), .I2(last_addr_c[6]), .O(add_317_carry[7])
         );
  XOR2HS U671 ( .I1(last_addr_c[6]), .I2(add_317_carry[6]), .O(N181) );
  AN2 U672 ( .I1(add_317_carry[5]), .I2(last_addr_c[5]), .O(add_317_carry[6])
         );
  XOR2HS U673 ( .I1(last_addr_c[5]), .I2(add_317_carry[5]), .O(N180) );
  AN2 U674 ( .I1(add_317_carry[4]), .I2(last_addr_c[4]), .O(add_317_carry[5])
         );
  XOR2HS U675 ( .I1(last_addr_c[4]), .I2(add_317_carry[4]), .O(N179) );
  AN2 U676 ( .I1(add_317_carry[3]), .I2(last_addr_c[3]), .O(add_317_carry[4])
         );
  XOR2HS U677 ( .I1(last_addr_c[3]), .I2(add_317_carry[3]), .O(N178) );
  AN2 U678 ( .I1(add_317_carry[2]), .I2(last_addr_c[2]), .O(add_317_carry[3])
         );
  XOR2HS U679 ( .I1(last_addr_c[2]), .I2(add_317_carry[2]), .O(N177) );
  AN2 U680 ( .I1(last_addr_c[0]), .I2(m[0]), .O(add_317_carry[1]) );
  XOR2HS U681 ( .I1(m[0]), .I2(last_addr_c[0]), .O(N175) );
  AN2 U682 ( .I1(add_268_carry_3_), .I2(k[3]), .O(N97) );
  XOR2HS U683 ( .I1(k[3]), .I2(add_268_carry_3_), .O(N96) );
  OR2 U684 ( .I1(k[2]), .I2(add_268_carry_2_), .O(add_268_carry_3_) );
  XNR2HS U685 ( .I1(add_268_carry_2_), .I2(k[2]), .O(N95) );
  OR2 U686 ( .I1(k[1]), .I2(k[0]), .O(add_268_carry_2_) );
  XNR2HS U687 ( .I1(k[0]), .I2(k[1]), .O(N94) );
  XOR2HS U688 ( .I1(r474_carry[4]), .I2(cnt[4]), .O(N145) );
  INV1S U689 ( .I(k[0]), .O(N93) );
  AN2 U690 ( .I1(k[3]), .I2(n424), .O(n421) );
  NR2 U691 ( .I1(k[0]), .I2(n425), .O(n412) );
  MAO222 U692 ( .A1(n412), .B1(n426), .C1(N41), .O(n413) );
  XOR2HS U693 ( .I1(cnt[2]), .I2(n427), .O(n417) );
  AOI22S U694 ( .A1(cnt[2]), .A2(n427), .B1(n413), .B2(n417), .O(n414) );
  OR2 U695 ( .I1(n424), .I2(k[3]), .O(n420) );
  OAI112HS U696 ( .C1(n421), .C2(n414), .A1(n420), .B1(n423), .O(N42) );
  ND2 U697 ( .I1(k[0]), .I2(n425), .O(n415) );
  OR2 U698 ( .I1(n415), .I2(N41), .O(n416) );
  AOI22S U699 ( .A1(n416), .A2(n426), .B1(N41), .B2(n415), .O(n418) );
  MOAI1S U700 ( .A1(n427), .A2(cnt[2]), .B1(n418), .B2(n417), .O(n419) );
  AN2 U701 ( .I1(n420), .I2(n419), .O(n422) );
  OA12 U702 ( .B1(n422), .B2(n421), .A1(n423), .O(N151) );
  sync_fifo_7 fifo_a_1 ( .clk(clk), .rst(n409), .data_in(out_a[31:24]), .w_en(
        n201), .r_en(rd_a_1), .data_out(dataout_a_1) );
  sync_fifo_6 fifo_a_2 ( .clk(clk), .rst(n409), .data_in(out_a[23:16]), .w_en(
        n201), .r_en(rd_a_2), .data_out(dataout_a_2) );
  sync_fifo_5 fifo_a_3 ( .clk(clk), .rst(n409), .data_in(out_a[15:8]), .w_en(
        n201), .r_en(rd_a_3), .data_out(dataout_a_3) );
  sync_fifo_4 fifo_a_4 ( .clk(clk), .rst(n409), .data_in(out_a[7:0]), .w_en(
        n201), .r_en(rd_a_4), .data_out(dataout_a_4) );
  sync_fifo_3 fifo_b_1 ( .clk(clk), .rst(n409), .data_in(out_b[31:24]), .w_en(
        n201), .r_en(rd_b_1), .data_out(dataout_b_1) );
  sync_fifo_2 fifo_b_2 ( .clk(clk), .rst(n409), .data_in(out_b[23:16]), .w_en(
        n201), .r_en(rd_b_2), .data_out(dataout_b_2) );
  sync_fifo_1 fifo_b_3 ( .clk(clk), .rst(n409), .data_in(out_b[15:8]), .w_en(
        n201), .r_en(rd_b_3), .data_out(dataout_b_3) );
  sync_fifo_0 fifo_b_4 ( .clk(clk), .rst(n409), .data_in(out_b[7:0]), .w_en(
        n201), .r_en(rd_b_4), .data_out(dataout_b_4) );
  mac_15 sys_row_0__sys_col_0__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[127:120]), .left_in(from_left_net[127:120]), .up_out(
        from_top__net[95:88]), .left_out(from_left_net[95:88]), .mat_out(
        multi_out_net[127:120]) );
  mac_14 sys_row_0__sys_col_1__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[119:112]), .left_in(from_left_net[95:88]), .up_out(
        from_top__net[87:80]), .left_out(from_left_net[63:56]), .mat_out(
        multi_out_net[119:112]) );
  mac_13 sys_row_0__sys_col_2__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[111:104]), .left_in(from_left_net[63:56]), .up_out(
        from_top__net[79:72]), .left_out(from_left_net[31:24]), .mat_out(
        multi_out_net[111:104]) );
  mac_12 sys_row_0__sys_col_3__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[103:96]), .left_in(from_left_net[31:24]), .up_out(
        from_top__net[71:64]), .left_out({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}), .mat_out(multi_out_net[103:96]) );
  mac_11 sys_row_1__sys_col_0__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[95:88]), .left_in(from_left_net[119:112]), .up_out(
        from_top__net[63:56]), .left_out(from_left_net[87:80]), .mat_out(
        multi_out_net[95:88]) );
  mac_10 sys_row_1__sys_col_1__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[87:80]), .left_in(from_left_net[87:80]), .up_out(
        from_top__net[55:48]), .left_out(from_left_net[55:48]), .mat_out(
        multi_out_net[87:80]) );
  mac_9 sys_row_1__sys_col_2__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[79:72]), .left_in(from_left_net[55:48]), .up_out(
        from_top__net[47:40]), .left_out(from_left_net[23:16]), .mat_out(
        multi_out_net[79:72]) );
  mac_8 sys_row_1__sys_col_3__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[71:64]), .left_in(from_left_net[23:16]), .up_out(
        from_top__net[39:32]), .left_out({SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}), .mat_out(multi_out_net[71:64]) );
  mac_7 sys_row_2__sys_col_0__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[63:56]), .left_in(from_left_net[111:104]), .up_out(
        from_top__net[31:24]), .left_out(from_left_net[79:72]), .mat_out(
        multi_out_net[63:56]) );
  mac_6 sys_row_2__sys_col_1__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[55:48]), .left_in(from_left_net[79:72]), .up_out(
        from_top__net[23:16]), .left_out(from_left_net[47:40]), .mat_out(
        multi_out_net[55:48]) );
  mac_5 sys_row_2__sys_col_2__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[47:40]), .left_in(from_left_net[47:40]), .up_out(
        from_top__net[15:8]), .left_out(from_left_net[15:8]), .mat_out(
        multi_out_net[47:40]) );
  mac_4 sys_row_2__sys_col_3__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[39:32]), .left_in(from_left_net[15:8]), .up_out(
        from_top__net[7:0]), .left_out({SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24}), .mat_out(multi_out_net[39:32]) );
  mac_3 sys_row_3__sys_col_0__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[31:24]), .left_in(from_left_net[103:96]), .up_out({
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32}), .left_out(
        from_left_net[71:64]), .mat_out(multi_out_net[31:24]) );
  mac_2 sys_row_3__sys_col_1__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[23:16]), .left_in(from_left_net[71:64]), .up_out({
        SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, 
        SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, 
        SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, 
        SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40}), .left_out(
        from_left_net[39:32]), .mat_out(multi_out_net[23:16]) );
  mac_1 sys_row_3__sys_col_2__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
        from_top__net[15:8]), .left_in(from_left_net[39:32]), .up_out({
        SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, 
        SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, 
        SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, 
        SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48}), .left_out(
        from_left_net[7:0]), .mat_out(multi_out_net[15:8]) );
  mac_0 sys_row_3__sys_col_3__ul_mac ( .clk(clk), .reset(sys_rst), .up_in(
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
  tpu_DW01_inc_0_DW01_inc_5 add_319 ( .A({n3100, n292, n3040, n3010, n2980, 
        n295, n274, n537}), .SUM({N190, N189, N188, N187, N186, N185, N184, 
        N183}) );
  tpu_DW01_inc_1_DW01_inc_6 add_308 ( .A({n331, n328, n3250, n3220, n3190, 
        n3160, n3130, n540}), .SUM({N167, N166, N165, N164, N163, N162, N161, 
        N160}) );
  tpu_DW01_inc_2_DW01_inc_7 add_307 ( .A({n3070, n289, n286, n283, n280, n277, 
        n271, n534}), .SUM({N159, N158, N157, N156, N155, N154, N153, N152})
         );
  AN2 add_341_U7 ( .I1(N40), .I2(last_addr_c[0]), .O(add_341_n3) );
  AN2 add_341_U6 ( .I1(last_addr_c[6]), .I2(add_341_n1), .O(add_341_n2) );
  AN2 add_341_U5 ( .I1(last_addr_c[5]), .I2(add_341_carry[5]), .O(add_341_n1)
         );
  XOR2HS add_341_U4 ( .I1(last_addr_c[5]), .I2(add_341_carry[5]), .O(N228) );
  XOR2HS add_341_U3 ( .I1(last_addr_c[6]), .I2(add_341_n1), .O(N229) );
  XOR2HS add_341_U2 ( .I1(last_addr_c[7]), .I2(add_341_n2), .O(N230) );
  XOR2HS add_341_U1 ( .I1(N40), .I2(last_addr_c[0]), .O(N223) );
  FA1S add_341_U1_1 ( .A(last_addr_c[1]), .B(N41), .CI(add_341_n3), .CO(
        add_341_carry[2]), .S(N224) );
  FA1S add_341_U1_2 ( .A(last_addr_c[2]), .B(cnt[2]), .CI(add_341_carry[2]), 
        .CO(add_341_carry[3]), .S(N225) );
  FA1S add_341_U1_3 ( .A(last_addr_c[3]), .B(cnt[3]), .CI(add_341_carry[3]), 
        .CO(add_341_carry[4]), .S(N226) );
  FA1S add_341_U1_4 ( .A(last_addr_c[4]), .B(cnt[4]), .CI(add_341_carry[4]), 
        .CO(add_341_carry[5]), .S(N227) );
  QDFFRBN addr_c_reg_0_ ( .D(n1580), .CK(clk), .RB(n428), .Q(n543) );
  QDFFRBN addr_a_reg_0_ ( .D(n1760), .CK(clk), .RB(n428), .Q(n541) );
  QDFFRBN addr_b_reg_0_ ( .D(n192), .CK(clk), .RB(n428), .Q(n542) );
  QDFFRBT done_reg ( .D(n146), .CK(clk), .RB(n428), .Q(done) );
  QDFFRBT in_c_reg_8_ ( .D(N304), .CK(clk), .RB(n428), .Q(in_c[8]) );
  QDFFRBT in_c_reg_9_ ( .D(N305), .CK(clk), .RB(n428), .Q(in_c[9]) );
  QDFFRBT in_c_reg_10_ ( .D(N306), .CK(clk), .RB(n428), .Q(in_c[10]) );
  QDFFRBT in_c_reg_23_ ( .D(N319), .CK(clk), .RB(n428), .Q(in_c[23]) );
  QDFFRBT in_c_reg_22_ ( .D(N318), .CK(clk), .RB(n428), .Q(in_c[22]) );
  QDFFRBT in_c_reg_21_ ( .D(N317), .CK(clk), .RB(n428), .Q(in_c[21]) );
  QDFFRBT in_c_reg_20_ ( .D(N316), .CK(clk), .RB(n428), .Q(in_c[20]) );
  QDFFRBT in_c_reg_19_ ( .D(N315), .CK(clk), .RB(n428), .Q(in_c[19]) );
  QDFFRBT in_c_reg_12_ ( .D(N308), .CK(clk), .RB(n428), .Q(in_c[12]) );
  QDFFRBT in_c_reg_11_ ( .D(N307), .CK(clk), .RB(n428), .Q(in_c[11]) );
  QDFFRBT in_c_reg_31_ ( .D(N327), .CK(clk), .RB(n428), .Q(in_c[31]) );
  QDFFRBT in_c_reg_30_ ( .D(N326), .CK(clk), .RB(n428), .Q(in_c[30]) );
  QDFFRBT in_c_reg_29_ ( .D(N325), .CK(clk), .RB(n428), .Q(in_c[29]) );
  QDFFRBT in_c_reg_28_ ( .D(N324), .CK(clk), .RB(n428), .Q(in_c[28]) );
  QDFFRBT in_c_reg_27_ ( .D(N323), .CK(clk), .RB(n428), .Q(in_c[27]) );
  QDFFRBT in_c_reg_26_ ( .D(N322), .CK(clk), .RB(n428), .Q(in_c[26]) );
  QDFFRBT in_c_reg_25_ ( .D(N321), .CK(clk), .RB(n428), .Q(in_c[25]) );
  QDFFRBT in_c_reg_24_ ( .D(N320), .CK(clk), .RB(n428), .Q(in_c[24]) );
  QDFFRBT in_c_reg_18_ ( .D(N314), .CK(clk), .RB(n428), .Q(in_c[18]) );
  QDFFRBT in_c_reg_17_ ( .D(N313), .CK(clk), .RB(n428), .Q(in_c[17]) );
  QDFFRBT in_c_reg_16_ ( .D(N312), .CK(clk), .RB(n428), .Q(in_c[16]) );
  QDFFRBT in_c_reg_13_ ( .D(N309), .CK(clk), .RB(n428), .Q(in_c[13]) );
  QDFFRBT in_c_reg_4_ ( .D(N300), .CK(clk), .RB(n428), .Q(in_c[4]) );
  QDFFRBT in_c_reg_2_ ( .D(N298), .CK(clk), .RB(n428), .Q(in_c[2]) );
  QDFFRBT in_c_reg_0_ ( .D(N296), .CK(clk), .RB(n428), .Q(in_c[0]) );
  QDFFRBT in_c_reg_7_ ( .D(N303), .CK(clk), .RB(n428), .Q(in_c[7]) );
  QDFFRBT in_c_reg_6_ ( .D(N302), .CK(clk), .RB(n428), .Q(in_c[6]) );
  QDFFRBT in_c_reg_5_ ( .D(N301), .CK(clk), .RB(n428), .Q(in_c[5]) );
  QDFFRBT in_c_reg_3_ ( .D(N299), .CK(clk), .RB(n428), .Q(in_c[3]) );
  QDFFRBT in_c_reg_1_ ( .D(N297), .CK(clk), .RB(n428), .Q(in_c[1]) );
  QDFFRBT in_c_reg_15_ ( .D(N311), .CK(clk), .RB(n428), .Q(in_c[15]) );
  QDFFRBT in_c_reg_14_ ( .D(N310), .CK(clk), .RB(n428), .Q(in_c[14]) );
  QDFFRBT wr_en_c_reg ( .D(N333), .CK(clk), .RB(n428), .Q(wr_en_c) );
  TIE1 U328 ( .O(n531) );
  INV4 U329 ( .I(n531), .O(wr_en_a) );
  INV4 U330 ( .I(n531), .O(wr_en_b) );
  INV4 U331 ( .I(n531), .O(in_a[31]) );
  INV4 U332 ( .I(n531), .O(in_a[30]) );
  INV4 U333 ( .I(n531), .O(in_a[29]) );
  INV4 U334 ( .I(n531), .O(in_a[28]) );
  INV4 U335 ( .I(n531), .O(in_a[27]) );
  INV4 U336 ( .I(n531), .O(in_a[26]) );
  INV4 U337 ( .I(n531), .O(in_a[25]) );
  INV4 U338 ( .I(n531), .O(in_a[24]) );
  INV4 U339 ( .I(n531), .O(in_a[23]) );
  INV4 U340 ( .I(n531), .O(in_a[22]) );
  INV4 U341 ( .I(n531), .O(in_a[21]) );
  INV4 U342 ( .I(n531), .O(in_a[20]) );
  INV4 U343 ( .I(n531), .O(in_a[19]) );
  INV4 U344 ( .I(n531), .O(in_a[18]) );
  INV4 U345 ( .I(n531), .O(in_a[17]) );
  INV4 U346 ( .I(n531), .O(in_a[16]) );
  INV4 U347 ( .I(n531), .O(in_a[15]) );
  INV4 U348 ( .I(n531), .O(in_a[14]) );
  INV4 U349 ( .I(n531), .O(in_a[13]) );
  INV4 U350 ( .I(n531), .O(in_a[12]) );
  INV4 U351 ( .I(n531), .O(in_a[11]) );
  INV4 U352 ( .I(n531), .O(in_a[10]) );
  INV4 U353 ( .I(n531), .O(in_a[9]) );
  INV4 U354 ( .I(n531), .O(in_a[8]) );
  INV4 U355 ( .I(n531), .O(in_a[7]) );
  INV4 U356 ( .I(n531), .O(in_a[6]) );
  INV4 U357 ( .I(n531), .O(in_a[5]) );
  INV4 U358 ( .I(n531), .O(in_a[4]) );
  INV4 U359 ( .I(n531), .O(in_a[3]) );
  INV4 U360 ( .I(n531), .O(in_a[2]) );
  INV4 U361 ( .I(n531), .O(in_a[1]) );
  INV4 U362 ( .I(n531), .O(in_a[0]) );
  INV4 U363 ( .I(n531), .O(in_b[31]) );
  INV4 U364 ( .I(n531), .O(in_b[30]) );
  INV4 U365 ( .I(n531), .O(in_b[29]) );
  INV4 U366 ( .I(n531), .O(in_b[28]) );
  INV4 U367 ( .I(n531), .O(in_b[27]) );
  INV4 U368 ( .I(n531), .O(in_b[26]) );
  INV4 U369 ( .I(n531), .O(in_b[25]) );
  INV4 U370 ( .I(n531), .O(in_b[24]) );
  INV4 U371 ( .I(n531), .O(in_b[23]) );
  INV4 U372 ( .I(n531), .O(in_b[22]) );
  INV4 U373 ( .I(n531), .O(in_b[21]) );
  INV1S U374 ( .I(n531), .O(in_b[0]) );
  INV1S U375 ( .I(n531), .O(in_b[1]) );
  INV1S U376 ( .I(n531), .O(in_b[2]) );
  INV1S U377 ( .I(n531), .O(in_b[3]) );
  INV1S U378 ( .I(n531), .O(in_b[4]) );
  INV1S U379 ( .I(n531), .O(in_b[5]) );
  INV1S U380 ( .I(n531), .O(in_b[6]) );
  INV1S U381 ( .I(n531), .O(in_b[7]) );
  INV1S U382 ( .I(n531), .O(in_b[8]) );
  INV1S U383 ( .I(n531), .O(in_b[9]) );
  INV1S U384 ( .I(n531), .O(in_b[10]) );
  INV1S U385 ( .I(n531), .O(in_b[11]) );
  INV1S U386 ( .I(n531), .O(in_b[12]) );
  INV1S U387 ( .I(n531), .O(in_b[13]) );
  INV1S U388 ( .I(n531), .O(in_b[14]) );
  INV1S U389 ( .I(n531), .O(in_b[15]) );
  INV1S U390 ( .I(n531), .O(in_b[16]) );
  INV1S U391 ( .I(n531), .O(in_b[17]) );
  INV1S U392 ( .I(n531), .O(in_b[18]) );
  INV1S U393 ( .I(n531), .O(in_b[19]) );
  INV1S U394 ( .I(n531), .O(in_b[20]) );
  INV1S U562 ( .I(n541), .O(n532) );
  INV4 U703 ( .I(n532), .O(addr_a[0]) );
  INV1S U704 ( .I(n532), .O(n534) );
  INV1S U705 ( .I(n543), .O(n535) );
  INV4 U706 ( .I(n535), .O(addr_c[0]) );
  INV1S U707 ( .I(n535), .O(n537) );
  INV1S U708 ( .I(n542), .O(n538) );
  INV4 U709 ( .I(n538), .O(addr_b[0]) );
  INV1S U710 ( .I(n538), .O(n540) );
endmodule

