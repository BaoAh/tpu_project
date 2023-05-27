module CHIP (
    input                         clk,
    input                         rst,
    input                         start,
    input  [                 3:0] m,
    input  [                 3:0] k,
    input  [                 3:0] n,
    output                        done,
    output                        wr_en_a,
    output                        wr_en_b,
    output                        wr_en_c,
    output [`GBUFF_INDX_SIZE-1:0] addr_a,
    output [`GBUFF_INDX_SIZE-1:0] addr_b,
    output [`GBUFF_INDX_SIZE-1:0] addr_c,   //8
    output [      `WORD_SIZE-1:0] in_a,
    output [      `WORD_SIZE-1:0] in_b,
    output [      `WORD_SIZE-1:0] in_c,     //data of a,b,c
    input  [      `WORD_SIZE-1:0] out_a,
    input  [      `WORD_SIZE-1:0] out_b,
    input  [      `WORD_SIZE-1:0] out_c
);
  wire i_clk;
  wire i_rst;
  wire i_start;
  wire [3:0] i_m;
  wire [3:0] i_k;
  wire [3:0] i_n;
  wire i_done;
  wire i_wr_en_a, i_wr_en_b, i_wr_en_c;
  wire [7:0] i_addr_a, i_addr_b, i_addr_c;  //8
  wire [31:0] i_in_a, i_in_b, i_in_c;  //data of a,b,c
  wire [31:0] i_out_a, i_out_b, i_out_c;

  wire n_Logic0_, n_Logic1_;


  tpu top (
      .clk(i_clk),
      .rst(i_rst),
      .start(i_start),
      .m({i_m[3], i_m[2], i_m[1], i_m[0]}),
      .k({i_k[3], i_k[2], i_k[1], i_k[0]}),
      .n({i_n[3], i_n[2], i_n[1], i_n[0]}),
      .done(i_done),
      .wr_en_a(i_wr_en_a),
      .wr_en_b(i_wr_en_b),
      .wr_en_c(i_wr_en_c),
      .addr_a({
        i_addr_a[7],
        i_addr_a[6],
        i_addr_a[5],
        i_addr_a[4],
        i_addr_a[3],
        i_addr_a[2],
        i_addr_a[1],
        i_addr_a[0]
      }),
      .addr_b({
        i_addr_b[7],
        i_addr_b[6],
        i_addr_b[5],
        i_addr_b[4],
        i_addr_b[3],
        i_addr_b[2],
        i_addr_b[1],
        i_addr_b[0]
      }),
      .addr_c({
        i_addr_c[7],
        i_addr_c[6],
        i_addr_c[5],
        i_addr_c[4],
        i_addr_c[3],
        i_addr_c[2],
        i_addr_c[1],
        i_addr_c[0]
      }),

      .in_a({
        i_in_a[31],
        i_in_a[30],
        i_in_a[29],
        i_in_a[28],
        i_in_a[27],
        i_in_a[26],
        i_in_a[25],
        i_in_a[24],
        i_in_a[23],
        i_in_a[22],
        i_in_a[21],
        i_in_a[20],
        i_in_a[19],
        i_in_a[18],
        i_in_a[17],
        i_in_a[16],
        i_in_a[15],
        i_in_a[14],
        i_in_a[13],
        i_in_a[12],
        i_in_a[11],
        i_in_a[10],
        i_in_a[9],
        i_in_a[8],
        i_in_a[7],
        i_in_a[6],
        i_in_a[5],
        i_in_a[4],
        i_in_a[3],
        i_in_a[2],
        i_in_a[1],
        i_in_a[0]
      }),

      .in_b({
        i_in_b[31],
        i_in_b[30],
        i_in_b[29],
        i_in_b[28],
        i_in_b[27],
        i_in_b[26],
        i_in_b[25],
        i_in_b[24],
        i_in_b[23],
        i_in_b[22],
        i_in_b[21],
        i_in_b[20],
        i_in_b[19],
        i_in_b[18],
        i_in_b[17],
        i_in_b[16],
        i_in_b[15],
        i_in_b[14],
        i_in_b[13],
        i_in_b[12],
        i_in_b[11],
        i_in_b[10],
        i_in_b[9],
        i_in_b[8],
        i_in_b[7],
        i_in_b[6],
        i_in_b[5],
        i_in_b[4],
        i_in_b[3],
        i_in_b[2],
        i_in_b[1],
        i_in_b[0]
      }),

      .in_c({
        i_in_c[31],
        i_in_c[30],
        i_in_c[29],
        i_in_c[28],
        i_in_c[27],
        i_in_c[26],
        i_in_c[25],
        i_in_c[24],
        i_in_c[23],
        i_in_c[22],
        i_in_c[21],
        i_in_c[20],
        i_in_c[19],
        i_in_c[18],
        i_in_c[17],
        i_in_c[16],
        i_in_c[15],
        i_in_c[14],
        i_in_c[13],
        i_in_c[12],
        i_in_c[11],
        i_in_c[10],
        i_in_c[9],
        i_in_c[8],
        i_in_c[7],
        i_in_c[6],
        i_in_c[5],
        i_in_c[4],
        i_in_c[3],
        i_in_c[2],
        i_in_c[1],
        i_in_c[0]
      }),

      .out_a({
        i_out_a[31],
        i_out_a[30],
        i_out_a[29],
        i_out_a[28],
        i_out_a[27],
        i_out_a[26],
        i_out_a[25],
        i_out_a[24],
        i_out_a[23],
        i_out_a[22],
        i_out_a[21],
        i_out_a[20],
        i_out_a[19],
        i_out_a[18],
        i_out_a[17],
        i_out_a[16],
        i_out_a[15],
        i_out_a[14],
        i_out_a[13],
        i_out_a[12],
        i_out_a[11],
        i_out_a[10],
        i_out_a[9],
        i_out_a[8],
        i_out_a[7],
        i_out_a[6],
        i_out_a[5],
        i_out_a[4],
        i_out_a[3],
        i_out_a[2],
        i_out_a[1],
        i_out_a[0]
      }),

      .out_b({
        i_out_b[31],
        i_out_b[30],
        i_out_b[29],
        i_out_b[28],
        i_out_b[27],
        i_out_b[26],
        i_out_b[25],
        i_out_b[24],
        i_out_b[23],
        i_out_b[22],
        i_out_b[21],
        i_out_b[20],
        i_out_b[19],
        i_out_b[18],
        i_out_b[17],
        i_out_b[16],
        i_out_b[15],
        i_out_b[14],
        i_out_b[13],
        i_out_b[12],
        i_out_b[11],
        i_out_b[10],
        i_out_b[9],
        i_out_b[8],
        i_out_b[7],
        i_out_b[6],
        i_out_b[5],
        i_out_b[4],
        i_out_b[3],
        i_out_b[2],
        i_out_b[1],
        i_out_b[0]
      }),

      .out_c({
        i_out_c[31],
        i_out_c[30],
        i_out_c[29],
        i_out_c[28],
        i_out_c[27],
        i_out_c[26],
        i_out_c[25],
        i_out_c[24],
        i_out_c[23],
        i_out_c[22],
        i_out_c[21],
        i_out_c[20],
        i_out_c[19],
        i_out_c[18],
        i_out_c[17],
        i_out_c[16],
        i_out_c[15],
        i_out_c[14],
        i_out_c[13],
        i_out_c[12],
        i_out_c[11],
        i_out_c[10],
        i_out_c[9],
        i_out_c[8],
        i_out_c[7],
        i_out_c[6],
        i_out_c[5],
        i_out_c[4],
        i_out_c[3],
        i_out_c[2],
        i_out_c[1],
        i_out_c[0]
      })
  );

  XMD ipad_CLK (
      .I  (clk),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_clk)
  );
  XMD ipad_rst (
      .I  (rst),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_rst)
  );
  XMD ipad_start (
      .I  (start),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_start)
  );

  //////////   m   //////////
  XMD ipad_m3 (
      .I  (m[3]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_m[3])
  );
  XMD ipad_m2 (
      .I  (m[2]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_m[2])
  );
  XMD ipad_m1 (
      .I  (m[1]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_m[1])
  );
  XMD ipad_m0 (
      .I  (m[0]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_m[0])
  );
  //////////   m   //////////
  //////////   k   //////////
  XMD ipad_k3 (
      .I  (k[3]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_k[3])
  );
  XMD ipad_k2 (
      .I  (k[2]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_k[2])
  );
  XMD ipad_k1 (
      .I  (k[1]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_k[1])
  );
  XMD ipad_k0 (
      .I  (k[0]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_k[0])
  );
  //////////   k   //////////
  //////////   n   //////////
  XMD ipad_n3 (
      .I  (n[3]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_n[3])
  );
  XMD ipad_n2 (
      .I  (n[2]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_n[2])
  );
  XMD ipad_n1 (
      .I  (n[1]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_n[1])
  );
  XMD ipad_n0 (
      .I  (n[0]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_n[0])
  );
  //////////   n   //////////

  YA2GSD opad_done (
      .I (i_done),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (done)
  );

  YA2GSD opad_wr_en_a (
      .I (i_wr_en_a),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (wr_en_a)
  );
  YA2GSD opad_wr_en_b (
      .I (i_wr_en_b),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (wr_en_b)
  );
  YA2GSD opad_wr_en_c (
      .I (i_wr_en_c),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (wr_en_c)
  );
  ///////////   addr a   //////////
  YA2GSD opad_addr_a7 (
      .I (i_addr_a[7]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_a[7])
  );
  YA2GSD opad_addr_a6 (
      .I (i_addr_a[6]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_a[6])
  );
  YA2GSD opad_addr_a5 (
      .I (i_addr_a[5]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_a[5])
  );
  YA2GSD opad_addr_a4 (
      .I (i_addr_a[4]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_a[4])
  );
  YA2GSD opad_addr_a3 (
      .I (i_addr_a[3]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_a[3])
  );
  YA2GSD opad_addr_a2 (
      .I (i_addr_a[2]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_a[2])
  );
  YA2GSD opad_addr_a1 (
      .I (i_addr_a[1]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_a[1])
  );
  YA2GSD opad_addr_a0 (
      .I (i_addr_a[0]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_a[0])
  );
  ///////////   addr a   //////////
  ///////////   addr b   //////////
  YA2GSD opad_addr_b7 (
      .I (i_addr_b[7]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_b[7])
  );
  YA2GSD opad_addr_b6 (
      .I (i_addr_b[6]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_b[6])
  );
  YA2GSD opad_addr_b5 (
      .I (i_addr_b[5]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_b[5])
  );
  YA2GSD opad_addr_b4 (
      .I (i_addr_b[4]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_b[4])
  );
  YA2GSD opad_addr_b3 (
      .I (i_addr_b[3]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_b[3])
  );
  YA2GSD opad_addr_b2 (
      .I (i_addr_b[2]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_b[2])
  );
  YA2GSD opad_addr_b1 (
      .I (i_addr_b[1]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_b[1])
  );
  YA2GSD opad_addr_b0 (
      .I (i_addr_b[0]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_b[0])
  );
  ///////////   addr b   //////////
  ///////////   addr c   //////////
  YA2GSD opad_addr_c7 (
      .I (i_addr_c[7]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_c[7])
  );
  YA2GSD opad_addr_c6 (
      .I (i_addr_c[6]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_c[6])
  );
  YA2GSD opad_addr_c5 (
      .I (i_addr_c[5]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_c[5])
  );
  YA2GSD opad_addr_c4 (
      .I (i_addr_c[4]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_c[4])
  );
  YA2GSD opad_addr_c3 (
      .I (i_addr_c[3]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_c[3])
  );
  YA2GSD opad_addr_c2 (
      .I (i_addr_c[2]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_c[2])
  );
  YA2GSD opad_addr_c1 (
      .I (i_addr_c[1]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_c[1])
  );
  YA2GSD opad_addr_c0 (
      .I (i_addr_c[0]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (addr_c[0])
  );
  ///////////   addr c   //////////
  ///////////   in a   //////////
  YA2GSD opad_in_a31 (
      .I (i_in_a[31]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[31])
  );
  YA2GSD opad_in_a30 (
      .I (i_in_a[30]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[30])
  );
  YA2GSD opad_in_a29 (
      .I (i_in_a[29]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[29])
  );
  YA2GSD opad_in_a28 (
      .I (i_in_a[28]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[28])
  );
  YA2GSD opad_in_a27 (
      .I (i_in_a[27]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[27])
  );
  YA2GSD opad_in_a26 (
      .I (i_in_a[26]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[26])
  );
  YA2GSD opad_in_a25 (
      .I (i_in_a[25]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[25])
  );
  YA2GSD opad_in_a24 (
      .I (i_in_a[24]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[24])
  );
  YA2GSD opad_in_a23 (
      .I (i_in_a[23]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[23])
  );
  YA2GSD opad_in_a22 (
      .I (i_in_a[22]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[22])
  );
  YA2GSD opad_in_a21 (
      .I (i_in_a[21]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[21])
  );
  YA2GSD opad_in_a20 (
      .I (i_in_a[20]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[20])
  );
  YA2GSD opad_in_a19 (
      .I (i_in_a[19]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[19])
  );
  YA2GSD opad_in_a18 (
      .I (i_in_a[18]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[18])
  );
  YA2GSD opad_in_a17 (
      .I (i_in_a[17]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[17])
  );
  YA2GSD opad_in_a16 (
      .I (i_in_a[16]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[16])
  );
  YA2GSD opad_in_a15 (
      .I (i_in_a[15]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[15])
  );
  YA2GSD opad_in_a14 (
      .I (i_in_a[14]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[14])
  );
  YA2GSD opad_in_a13 (
      .I (i_in_a[13]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[13])
  );
  YA2GSD opad_in_a12 (
      .I (i_in_a[12]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[12])
  );
  YA2GSD opad_in_a11 (
      .I (i_in_a[11]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[11])
  );
  YA2GSD opad_in_a10 (
      .I (i_in_a[10]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[10])
  );
  YA2GSD opad_in_a9 (
      .I (i_in_a[9]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[9])
  );
  YA2GSD opad_in_a8 (
      .I (i_in_a[8]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[8])
  );
  YA2GSD opad_in_a7 (
      .I (i_in_a[7]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[7])
  );
  YA2GSD opad_in_a6 (
      .I (i_in_a[6]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[6])
  );
  YA2GSD opad_in_a5 (
      .I (i_in_a[5]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[5])
  );
  YA2GSD opad_in_a4 (
      .I (i_in_a[4]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[4])
  );
  YA2GSD opad_in_a3 (
      .I (i_in_a[3]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[3])
  );
  YA2GSD opad_in_a2 (
      .I (i_in_a[2]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[2])
  );
  YA2GSD opad_in_a1 (
      .I (i_in_a[1]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[1])
  );
  YA2GSD opad_in_a0 (
      .I (i_in_a[0]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_a[0])
  );
  ///////////   in a   //////////
  ///////////   in b   //////////
  YA2GSD opad_in_b31 (
      .I (i_in_b[31]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[31])
  );
  YA2GSD opad_in_b30 (
      .I (i_in_b[30]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[30])
  );
  YA2GSD opad_in_b29 (
      .I (i_in_b[29]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[29])
  );
  YA2GSD opad_in_b28 (
      .I (i_in_b[28]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[28])
  );
  YA2GSD opad_in_b27 (
      .I (i_in_b[27]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[27])
  );
  YA2GSD opad_in_b26 (
      .I (i_in_b[26]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[26])
  );
  YA2GSD opad_in_b25 (
      .I (i_in_b[25]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[25])
  );
  YA2GSD opad_in_b24 (
      .I (i_in_b[24]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[24])
  );
  YA2GSD opad_in_b23 (
      .I (i_in_b[23]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[23])
  );
  YA2GSD opad_in_b22 (
      .I (i_in_b[22]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[22])
  );
  YA2GSD opad_in_b21 (
      .I (i_in_b[21]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[21])
  );
  YA2GSD opad_in_b20 (
      .I (i_in_b[20]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[20])
  );
  YA2GSD opad_in_b19 (
      .I (i_in_b[19]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[19])
  );
  YA2GSD opad_in_b18 (
      .I (i_in_b[18]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[18])
  );
  YA2GSD opad_in_b17 (
      .I (i_in_b[17]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[17])
  );
  YA2GSD opad_in_b16 (
      .I (i_in_b[16]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[16])
  );
  YA2GSD opad_in_b15 (
      .I (i_in_b[15]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[15])
  );
  YA2GSD opad_in_b14 (
      .I (i_in_b[14]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[14])
  );
  YA2GSD opad_in_b13 (
      .I (i_in_b[13]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[13])
  );
  YA2GSD opad_in_b12 (
      .I (i_in_b[12]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[12])
  );
  YA2GSD opad_in_b11 (
      .I (i_in_b[11]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[11])
  );
  YA2GSD opad_in_b10 (
      .I (i_in_b[10]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[10])
  );
  YA2GSD opad_in_b9 (
      .I (i_in_b[9]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[9])
  );
  YA2GSD opad_in_b8 (
      .I (i_in_b[8]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[8])
  );
  YA2GSD opad_in_b7 (
      .I (i_in_b[7]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[7])
  );
  YA2GSD opad_in_b6 (
      .I (i_in_b[6]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[6])
  );
  YA2GSD opad_in_b5 (
      .I (i_in_b[5]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[5])
  );
  YA2GSD opad_in_b4 (
      .I (i_in_b[4]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[4])
  );
  YA2GSD opad_in_b3 (
      .I (i_in_b[3]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[3])
  );
  YA2GSD opad_in_b2 (
      .I (i_in_b[2]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[2])
  );
  YA2GSD opad_in_b1 (
      .I (i_in_b[1]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[1])
  );
  YA2GSD opad_in_b0 (
      .I (i_in_b[0]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_b[0])
  );
  ///////////   in b   //////////
  ///////////   in c   //////////
  YA2GSD opad_in_c31 (
      .I (i_in_c[31]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[31])
  );
  YA2GSD opad_in_c30 (
      .I (i_in_c[30]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[30])
  );
  YA2GSD opad_in_c29 (
      .I (i_in_c[29]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[29])
  );
  YA2GSD opad_in_c28 (
      .I (i_in_c[28]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[28])
  );
  YA2GSD opad_in_c27 (
      .I (i_in_c[27]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[27])
  );
  YA2GSD opad_in_c26 (
      .I (i_in_c[26]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[26])
  );
  YA2GSD opad_in_c25 (
      .I (i_in_c[25]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[25])
  );
  YA2GSD opad_in_c24 (
      .I (i_in_c[24]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[24])
  );
  YA2GSD opad_in_c23 (
      .I (i_in_c[23]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[23])
  );
  YA2GSD opad_in_c22 (
      .I (i_in_c[22]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[22])
  );
  YA2GSD opad_in_c21 (
      .I (i_in_c[21]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[21])
  );
  YA2GSD opad_in_c20 (
      .I (i_in_c[20]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[20])
  );
  YA2GSD opad_in_c19 (
      .I (i_in_c[19]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[19])
  );
  YA2GSD opad_in_c18 (
      .I (i_in_c[18]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[18])
  );
  YA2GSD opad_in_c17 (
      .I (i_in_c[17]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[17])
  );
  YA2GSD opad_in_c16 (
      .I (i_in_c[16]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[16])
  );
  YA2GSD opad_in_c15 (
      .I (i_in_c[15]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[15])
  );
  YA2GSD opad_in_c14 (
      .I (i_in_c[14]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[14])
  );
  YA2GSD opad_in_c13 (
      .I (i_in_c[13]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[13])
  );
  YA2GSD opad_in_c12 (
      .I (i_in_c[12]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[12])
  );
  YA2GSD opad_in_c11 (
      .I (i_in_c[11]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[11])
  );
  YA2GSD opad_in_c10 (
      .I (i_in_c[10]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[10])
  );
  YA2GSD opad_in_c9 (
      .I (i_in_c[9]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[9])
  );
  YA2GSD opad_in_c8 (
      .I (i_in_c[8]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[8])
  );
  YA2GSD opad_in_c7 (
      .I (i_in_c[7]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[7])
  );
  YA2GSD opad_in_c6 (
      .I (i_in_c[6]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[6])
  );
  YA2GSD opad_in_c5 (
      .I (i_in_c[5]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[5])
  );
  YA2GSD opad_in_c4 (
      .I (i_in_c[4]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[4])
  );
  YA2GSD opad_in_c3 (
      .I (i_in_c[3]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[3])
  );
  YA2GSD opad_in_c2 (
      .I (i_in_c[2]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[2])
  );
  YA2GSD opad_in_c1 (
      .I (i_in_c[1]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[1])
  );
  YA2GSD opad_in_c0 (
      .I (i_in_c[0]),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (in_c[0])
  );
  ///////////   in c   //////////
  ///////////   out a   //////////
  XMD ipad_out_a31 (
      .I  (out_a[31]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[31])
  );
  XMD ipad_out_a30 (
      .I  (out_a[30]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[30])
  );
  XMD ipad_out_a29 (
      .I  (out_a[29]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[29])
  );
  XMD ipad_out_a28 (
      .I  (out_a[28]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[28])
  );
  XMD ipad_out_a27 (
      .I  (out_a[27]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[27])
  );
  XMD ipad_out_a26 (
      .I  (out_a[26]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[26])
  );
  XMD ipad_out_a25 (
      .I  (out_a[25]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[25])
  );
  XMD ipad_out_a24 (
      .I  (out_a[24]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[24])
  );
  XMD ipad_out_a23 (
      .I  (out_a[23]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[23])
  );
  XMD ipad_out_a22 (
      .I  (out_a[22]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[22])
  );
  XMD ipad_out_a21 (
      .I  (out_a[21]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[21])
  );
  XMD ipad_out_a20 (
      .I  (out_a[20]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[20])
  );
  XMD ipad_out_a19 (
      .I  (out_a[19]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[19])
  );
  XMD ipad_out_a18 (
      .I  (out_a[18]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[18])
  );
  XMD ipad_out_a17 (
      .I  (out_a[17]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[17])
  );
  XMD ipad_out_a16 (
      .I  (out_a[16]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[16])
  );
  XMD ipad_out_a15 (
      .I  (out_a[15]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[15])
  );
  XMD ipad_out_a14 (
      .I  (out_a[14]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[14])
  );
  XMD ipad_out_a13 (
      .I  (out_a[13]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[13])
  );
  XMD ipad_out_a12 (
      .I  (out_a[12]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[12])
  );
  XMD ipad_out_a11 (
      .I  (out_a[11]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[11])
  );
  XMD ipad_out_a10 (
      .I  (out_a[10]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[10])
  );
  XMD ipad_out_a9 (
      .I  (out_a[9]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[9])
  );
  XMD ipad_out_a8 (
      .I  (out_a[8]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[8])
  );
  XMD ipad_out_a7 (
      .I  (out_a[7]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[7])
  );
  XMD ipad_out_a6 (
      .I  (out_a[6]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[6])
  );
  XMD ipad_out_a5 (
      .I  (out_a[5]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[5])
  );
  XMD ipad_out_a4 (
      .I  (out_a[4]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[4])
  );
  XMD ipad_out_a3 (
      .I  (out_a[3]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[3])
  );
  XMD ipad_out_a2 (
      .I  (out_a[2]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[2])
  );
  XMD ipad_out_a1 (
      .I  (out_a[1]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[1])
  );
  XMD ipad_out_a0 (
      .I  (out_a[0]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_a[0])
  );
  ///////////   out a   //////////
  ///////////   out b   //////////
  XMD ipad_out_b31 (
      .I  (out_b[31]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[31])
  );
  XMD ipad_out_b30 (
      .I  (out_b[30]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[30])
  );
  XMD ipad_out_b29 (
      .I  (out_b[29]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[29])
  );
  XMD ipad_out_b28 (
      .I  (out_b[28]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[28])
  );
  XMD ipad_out_b27 (
      .I  (out_b[27]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[27])
  );
  XMD ipad_out_b26 (
      .I  (out_b[26]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[26])
  );
  XMD ipad_out_b25 (
      .I  (out_b[25]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[25])
  );
  XMD ipad_out_b24 (
      .I  (out_b[24]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[24])
  );
  XMD ipad_out_b23 (
      .I  (out_b[23]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[23])
  );
  XMD ipad_out_b22 (
      .I  (out_b[22]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[22])
  );
  XMD ipad_out_b21 (
      .I  (out_b[21]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[21])
  );
  XMD ipad_out_b20 (
      .I  (out_b[20]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[20])
  );
  XMD ipad_out_b19 (
      .I  (out_b[19]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[19])
  );
  XMD ipad_out_b18 (
      .I  (out_b[18]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[18])
  );
  XMD ipad_out_b17 (
      .I  (out_b[17]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[17])
  );
  XMD ipad_out_b16 (
      .I  (out_b[16]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[16])
  );
  XMD ipad_out_b15 (
      .I  (out_b[15]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[15])
  );
  XMD ipad_out_b14 (
      .I  (out_b[14]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[14])
  );
  XMD ipad_out_b13 (
      .I  (out_b[13]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[13])
  );
  XMD ipad_out_b12 (
      .I  (out_b[12]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[12])
  );
  XMD ipad_out_b11 (
      .I  (out_b[11]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[11])
  );
  XMD ipad_out_b10 (
      .I  (out_b[10]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[10])
  );
  XMD ipad_out_b9 (
      .I  (out_b[9]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[9])
  );
  XMD ipad_out_b8 (
      .I  (out_b[8]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[8])
  );
  XMD ipad_out_b7 (
      .I  (out_b[7]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[7])
  );
  XMD ipad_out_b6 (
      .I  (out_b[6]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[6])
  );
  XMD ipad_out_b5 (
      .I  (out_b[5]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[5])
  );
  XMD ipad_out_b4 (
      .I  (out_b[4]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[4])
  );
  XMD ipad_out_b3 (
      .I  (out_b[3]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[3])
  );
  XMD ipad_out_b2 (
      .I  (out_b[2]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[2])
  );
  XMD ipad_out_b1 (
      .I  (out_b[1]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[1])
  );
  XMD ipad_out_b0 (
      .I  (out_b[0]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_b[0])
  );
  ///////////   out b   //////////
  ///////////   out c   //////////
  XMD ipad_out_c31 (
      .I  (out_c[31]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[31])
  );
  XMD ipad_out_c30 (
      .I  (out_c[30]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[30])
  );
  XMD ipad_out_c29 (
      .I  (out_c[29]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[29])
  );
  XMD ipad_out_c28 (
      .I  (out_c[28]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[28])
  );
  XMD ipad_out_c27 (
      .I  (out_c[27]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[27])
  );
  XMD ipad_out_c26 (
      .I  (out_c[26]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[26])
  );
  XMD ipad_out_c25 (
      .I  (out_c[25]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[25])
  );
  XMD ipad_out_c24 (
      .I  (out_c[24]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[24])
  );
  XMD ipad_out_c23 (
      .I  (out_c[23]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[23])
  );
  XMD ipad_out_c22 (
      .I  (out_c[22]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[22])
  );
  XMD ipad_out_c21 (
      .I  (out_c[21]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[21])
  );
  XMD ipad_out_c20 (
      .I  (out_c[20]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[20])
  );
  XMD ipad_out_c19 (
      .I  (out_c[19]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[19])
  );
  XMD ipad_out_c18 (
      .I  (out_c[18]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[18])
  );
  XMD ipad_out_c17 (
      .I  (out_c[17]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[17])
  );
  XMD ipad_out_c16 (
      .I  (out_c[16]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[16])
  );
  XMD ipad_out_c15 (
      .I  (out_c[15]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[15])
  );
  XMD ipad_out_c14 (
      .I  (out_c[14]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[14])
  );
  XMD ipad_out_c13 (
      .I  (out_c[13]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[13])
  );
  XMD ipad_out_c12 (
      .I  (out_c[12]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[12])
  );
  XMD ipad_out_c11 (
      .I  (out_c[11]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[11])
  );
  XMD ipad_out_c10 (
      .I  (out_c[10]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[10])
  );
  XMD ipad_out_c9 (
      .I  (out_c[9]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[9])
  );
  XMD ipad_out_c8 (
      .I  (out_c[8]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[8])
  );
  XMD ipad_out_c7 (
      .I  (out_c[7]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[7])
  );
  XMD ipad_out_c6 (
      .I  (out_c[6]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[6])
  );
  XMD ipad_out_c5 (
      .I  (out_c[5]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[5])
  );
  XMD ipad_out_c4 (
      .I  (out_c[4]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[4])
  );
  XMD ipad_out_c3 (
      .I  (out_c[3]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[3])
  );
  XMD ipad_out_c2 (
      .I  (out_c[2]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[2])
  );
  XMD ipad_out_c1 (
      .I  (out_c[1]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[1])
  );
  XMD ipad_out_c0 (
      .I  (out_c[0]),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_out_c[0])
  );

  ///////////   out c   //////////

  TIE0 U1 (.O(n_Logic0_));
  TIE1 U2 (.O(n_Logic1_));

endmodule
