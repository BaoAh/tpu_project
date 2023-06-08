`include "define.v"

module tpu (
    input                             clk,
    input                             rst,
    input                             start,
    input      [                 3:0] m,
    k,
    n,
    output reg                        done,
    output reg                        wr_en_a,
    wr_en_b,
    wr_en_c,
    output reg [`GBUFF_INDX_SIZE-1:0] addr_a,
    addr_b,
    addr_c,  //8
    output reg [      `WORD_SIZE-1:0] in_a,
    in_b,
    output reg [`EXTEND_WORD_SIZE-1:0] in_c, 
	//data of a,b,c
    input      [      `WORD_SIZE-1:0] out_a,
    out_b,
    out_c
);

  //---------Write your code here----------------
  // `define sys_OFF = 3'd4;

  localparam IDLE = 3'd0;
  localparam CAL = 3'd1;
  localparam WRITE = 3'd2;
  localparam FINISH = 3'd3;
  localparam MAC_HOLD = 3'd4;
  localparam IDLE2 = 3'd5;

  reg [2:0] state, next_state;
  reg [4:0] cnt;

  wire stop_read = (cnt > {1'd0, k} || cnt == 5'd0);

  reg systolic_array_rst;

  wire sys_rst = systolic_array_rst;

  wire start_fifo = (cnt == 2);
  wire stop_fifo = (cnt == k + 3);

  // for fifo a
  reg rd_a_1;
  reg rd_a_2;
  reg rd_a_3;
  reg rd_a_4;

  wire empty_a_1;
  wire empty_a_2;
  wire empty_a_3;
  wire empty_a_4;

  wire full_a_1;
  wire full_a_2;
  wire full_a_3;
  wire full_a_4;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      rd_a_1 <= 0;
      rd_a_2 <= 0;
      rd_a_3 <= 0;
      rd_a_4 <= 0;
    end else begin
      case (state)
        //IDLE2: rd_a_1 <= 1;
        CAL: begin
          if (start_fifo) rd_a_1 <= 1;
          //else 
          else if (stop_fifo) rd_a_1 <= 0;  //not sure
          rd_a_2 <= rd_a_1;
          rd_a_3 <= rd_a_2;
          rd_a_4 <= rd_a_3;
        end
        default: begin
          rd_a_1 <= 0;
          rd_a_2 <= 0;
          rd_a_3 <= 0;
          rd_a_4 <= 0;
        end
      endcase
    end
  end

  wire [`DATA_SIZE-1:0] datain_a_1 = out_a[31:24];
  wire [`DATA_SIZE-1:0] datain_a_2 = out_a[23:16];
  wire [`DATA_SIZE-1:0] datain_a_3 = out_a[15:8];
  wire [`DATA_SIZE-1:0] datain_a_4 = out_a[7:0];

  wire [`DATA_SIZE-1:0] dataout_a_1;
  wire [`DATA_SIZE-1:0] dataout_a_2;
  wire [`DATA_SIZE-1:0] dataout_a_3;
  wire [`DATA_SIZE-1:0] dataout_a_4;

  sync_fifo fifo_a_1 (
      .clk(clk),
      .rst(sys_rst),
      .data_in(datain_a_1),
      .w_en(!stop_read),
      .r_en(rd_a_1),
      .data_out(dataout_a_1),
      .empty(empty_a_1),
      .full(full_a_1)
  );

  sync_fifo fifo_a_2 (
      .clk(clk),
      .rst(sys_rst),
      .data_in(datain_a_2),
      .w_en(!stop_read),
      .r_en(rd_a_2),
      .data_out(dataout_a_2),
      .empty(empty_a_2),
      .full(full_a_2)
  );

  sync_fifo fifo_a_3 (
      .clk(clk),
      .rst(sys_rst),
      .data_in(datain_a_3),
      .w_en(!stop_read),
      .r_en(rd_a_3),
      .data_out(dataout_a_3),
      .empty(empty_a_3),
      .full(full_a_3)
  );

  sync_fifo fifo_a_4 (
      .clk(clk),
      .rst(sys_rst),
      .data_in(datain_a_4),
      .w_en(!stop_read),
      .r_en(rd_a_4),
      .data_out(dataout_a_4),
      .empty(empty_a_4),
      .full(full_a_4)
  );

  // for fifo b
  reg  rd_b_1;
  reg  rd_b_2;
  reg  rd_b_3;
  reg  rd_b_4;

  wire empty_b_1;
  wire empty_b_2;
  wire empty_b_3;
  wire empty_b_4;

  wire full_b_1;
  wire full_b_2;
  wire full_b_3;
  wire full_b_4;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      rd_b_1 <= 0;
      rd_b_2 <= 0;
      rd_b_3 <= 0;
      rd_b_4 <= 0;
    end else begin
      case (state)
        //IDLE2: rd_b_1 <= 1;
        CAL: begin
          if (start_fifo) rd_b_1 <= 1;
          //else 
          else if (stop_fifo) rd_b_1 <= 0;
          rd_b_2 <= rd_b_1;
          rd_b_3 <= rd_b_2;
          rd_b_4 <= rd_b_3;
        end
        default: begin
          rd_b_1 <= 0;
          rd_b_2 <= 0;
          rd_b_3 <= 0;
          rd_b_4 <= 0;
        end
      endcase
    end
  end

  wire [`DATA_SIZE-1:0] datain_b_1 = out_b[31:24];
  wire [`DATA_SIZE-1:0] datain_b_2 = out_b[23:16];
  wire [`DATA_SIZE-1:0] datain_b_3 = out_b[15:8];
  wire [`DATA_SIZE-1:0] datain_b_4 = out_b[7:0];

  wire [`DATA_SIZE-1:0] dataout_b_1;
  wire [`DATA_SIZE-1:0] dataout_b_2;
  wire [`DATA_SIZE-1:0] dataout_b_3;
  wire [`DATA_SIZE-1:0] dataout_b_4;

  sync_fifo fifo_b_1 (
      .clk(clk),
      .rst(sys_rst),
      .data_in(datain_b_1),
      .w_en(!stop_read),
      .r_en(rd_b_1),
      .data_out(dataout_b_1),
      .empty(empty_b_1),
      .full(full_b_1)
  );

  sync_fifo fifo_b_2 (
      .clk(clk),
      .rst(sys_rst),
      .data_in(datain_b_2),
      .w_en(!stop_read),
      .r_en(rd_b_2),
      .data_out(dataout_b_2),
      .empty(empty_b_2),
      .full(full_b_2)
  );

  sync_fifo fifo_b_3 (
      .clk(clk),
      .rst(sys_rst),
      .data_in(datain_b_3),
      .w_en(!stop_read),
      .r_en(rd_b_3),
      .data_out(dataout_b_3),
      .empty(empty_b_3),
      .full(full_b_3)
  );

  sync_fifo fifo_b_4 (
      .clk(clk),
      .rst(sys_rst),
      .data_in(datain_b_4),
      .w_en(!stop_read),
      .r_en(rd_b_4),
      .data_out(dataout_b_4),
      .empty(empty_b_4),
      .full(full_b_4)
  );

  wire out_m = (m > 4'd4);
  wire out_n = (n > 4'd4);
  wire fit_m = (m[1:0] == 2'd0);
  reg [3:0] cnt_m, cnt_n;
  wire [ 1:0] rnd_m = m[3:2] + (m[1:0] > 2'd0);
  wire [ 1:0] rnd_n = n[3:2] + (n[1:0] > 2'd0);
  wire        out_limit = (out_n || out_m);


  //mac and wires
  wire [0:31] from_top__net                    [0:4];
  wire [0:31] from_left_net                    [0:4];
  //wire [31:0] multi_out_net                    [0:3];
  wire [63:0] multi_out_net                    [0:3];

  always @(posedge clk or posedge rst) begin
    if (rst) systolic_array_rst <= 1;
    else begin
      if (state == IDLE2) systolic_array_rst <= 0;
      if (next_state == IDLE2) systolic_array_rst <= 1;
    end
  end

  assign from_top__net[0][0:7]   = ((rd_b_1) ? dataout_b_1 : 0);
  assign from_top__net[0][8:15]  = ((rd_b_2) ? dataout_b_2 : 0);
  assign from_top__net[0][16:23] = ((rd_b_3) ? dataout_b_3 : 0);
  assign from_top__net[0][24:31] = ((rd_b_4) ? dataout_b_4 : 0);

  assign from_left_net[0][0:7]   = ((rd_a_1) ? dataout_a_1 : 0);
  assign from_left_net[0][8:15]  = ((rd_a_2) ? dataout_a_2 : 0);
  assign from_left_net[0][16:23] = ((rd_a_3) ? dataout_a_3 : 0);
  assign from_left_net[0][24:31] = ((rd_a_4) ? dataout_a_4 : 0);

  genvar i, j;
  generate
    for (i = 0; i < 4; i = i + 1) begin : sys_row  // row
      for (j = 0; j < 4; j = j + 1) begin : sys_col  // col
        mac ul_mac (
            .clk     (clk),
            .reset   (systolic_array_rst),
            .up_in   (from_top__net[i][j*8 : j*8+7]),
            .left_in (from_left_net[j][i*8 : i*8+7]),
            .up_out  (from_top__net[i+1][j*8 : j*8+7]),     // move downward
            .left_out(from_left_net[j+1][i*8 : i*8+7]),     // move right
            .mat_out (multi_out_net[i][63-(j*16):48-(j*16)])  // move downward
        );
      end
    end
  endgenerate

  reg [`GBUFF_INDX_SIZE-1:0] last_addr_a, last_addr_b, last_addr_c;  //8 bit

  wire cnt_end = (cnt == {1'd0, k} + 5'd7);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      done <= 0;
      in_a <= 32'd0;
      in_b <= 32'd0;
      in_c <= 0;
      last_addr_a <= 8'd0;
      last_addr_b <= 8'd0;
      last_addr_c <= 8'd0;
      cnt <= 0;
      addr_a <= 8'd0;
      addr_b <= 8'd0;
      addr_c <= 8'd0;
      cnt_m <= 0;
      cnt_n <= 0;
      wr_en_a <= 0;
      wr_en_b <= 0;
      wr_en_c <= 0;
    end else begin
      in_a <= 32'd0;
      in_b <= 32'd0;
      in_c <= 0;
      wr_en_a <= 0;
      wr_en_b <= 0;
      wr_en_c <= 0;
      case (state)
        CAL: begin
          //if(cnt == {1'd0,k} + 5'd7)begin
          if (cnt_end) begin
            cnt <= 5'd0;
          end else cnt <= cnt + 5'd1;

          if (cnt == 5'd0) last_addr_b <= addr_b;

          if (cnt < {1'd0, k}) begin
            addr_a <= addr_a + 8'd1;
            addr_b <= addr_b + 8'd1;
          end
        end
        WRITE: begin
          if (cnt == 5'd4) begin
            cnt <= 5'd0;
            wr_en_c <= 0;
            //monster
            if (fit_m == 0 && cnt_m == rnd_m - 2'd1) begin
              last_addr_c <= last_addr_c + {6'd0, m[1:0]};
            end else last_addr_c <= addr_c + 8'd1;

            //last_addr_c <= addr_c+8'd1;
            if (cnt_m == rnd_m - 1) begin
              cnt_m  <= 2'd0;
              cnt_n  <= cnt_n + 2'd1;
              addr_a <= 8'd0;
              //addr_b <= 8'd0;

            end else begin
              addr_b <= last_addr_b;
              cnt_m  <= cnt_m + 2'd1;
            end

          end else begin
            wr_en_c <= 1;
            cnt <= cnt + 5'd1;
          end

          addr_c <= last_addr_c + cnt;

          in_c[63:48] <= multi_out_net[cnt[1:0]][15 : 0];
          in_c[47:32] <= multi_out_net[cnt[1:0]][31:16];
          in_c[31:16] <= multi_out_net[cnt[1:0]][47:32];
          in_c[15:0] <= multi_out_net[cnt[1:0]][63:48];
          /*in_c[31:24] <= multi_out_net[cnt[1:0]][7 : 0];
          in_c[23:16] <= multi_out_net[cnt[1:0]][15:8];
          in_c[15:8] <= multi_out_net[cnt[1:0]][23:16];
          in_c[7 : 0] <= multi_out_net[cnt[1:0]][31:24];*/
        end
        FINISH: begin
          wr_en_c <= 0;
          done <= 1;
        end
      endcase

    end
  end

  always @(posedge clk or posedge rst) begin
    if (rst) state <= IDLE;
    else state <= next_state;
  end

  always @(*) begin
    next_state = state;
    case (state)
      IDLE: next_state = IDLE2;  //CAL;
      IDLE2: next_state = CAL;
      CAL: if (cnt_end) next_state = WRITE;
      WRITE: begin
        if (cnt == 5'd4 && cnt_m == rnd_m - 1 && cnt_n == rnd_n - 1)
          next_state = FINISH;
        else if (cnt == 5'd4) next_state = IDLE2;  //CAL;
      end
      FINISH: next_state = FINISH;
    endcase
  end

endmodule
