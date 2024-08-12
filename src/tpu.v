`include "define.v"

module tpu (
    input                             clk,
    input                             rst,
    input                             start,
    input      [                 3:0] m,
    k,
    n,
    input [`GBUFF_COMPRESS_SIZE-1:0] compress_w,       
    input [`COMPRESS_INDEX-1 : 0] start_w,       
    output reg                        done,
    output reg                        wr_en_a,
    wr_en_b,
    wr_en_c,
    output reg [`GBUFF_INDX_SIZE-1:0] addr_a,
    addr_b,
    addr_c,  //8
    output reg [`DICTIONARY_INDX_SIZE-1:0] addr_d_w,
    output reg [      `WORD_SIZE-1:0] in_a,
    in_b,
    in_c,  //data of a,b,c
    input      [      `WORD_SIZE-1:0] out_a,
    out_b,
    out_c,
    input      [      `DATA_SIZE-1:0] out_d_w
);

  //---------Write your code here----------------
  // `define sys_OFF = 3'd4;

  localparam IDLE_r = 3'd0;
  localparam IDLE0 = 3'd1;
  localparam READ = 3'd2;
  localparam IDLE = 3'd3;
  localparam IDLE2 = 3'd4;
  localparam CAL = 3'd5;
  localparam WRITE = 3'd6;
  localparam FINISH = 3'd7;

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

  //decode
  reg [      `WORD_SIZE-1:0] in_w_next;
  reg [`COMPRESS_INDEX-1 : 0] temp_index_w, temp_index_w_next;
  reg [23:0] temp_w, temp_w_next; 
  reg [1:0] c_t_w;
  reg  [`DICTIONARY_INDX_SIZE-1:0] addr_d_w_next;
  wire read_end_w = (temp_index_w == 0 );
  reg in_dic_flag, in_dic_flag_next;

always @(posedge clk or posedge rst) begin
  if(rst) begin
    c_t_w <= 2'd1;
  end
  else begin
    if(state == READ) begin 
      c_t_w <= c_t_w + 2'd1;
    end
  end
end

 always @(*) begin
  temp_index_w_next = temp_index_w;

  if(state == IDLE_r) begin
    // if(compress_w[start_w] == 1)
    //   temp_index_w_next = start_w - `COMPRESS_INDEX'd5; //`DICTIONARY_INDX_SIZE + 1
    // else temp_index_w_next = start_w - `COMPRESS_INDEX'd9;
    temp_index_w_next = start_w ;
  end

  if(state == READ || state == IDLE0) begin 
    if(temp_index_w_next != 0 && compress_w[temp_index_w] == 1) begin
      if(temp_index_w == `DICTIONARY_INDX_SIZE) temp_index_w_next = 0;
      else temp_index_w_next = temp_index_w - `COMPRESS_INDEX'd5; //`DICTIONARY_INDX_SIZE + 1
    end
    else if(temp_index_w_next != 0 && compress_w[temp_index_w] == 0) begin
      if(temp_index_w == 8) temp_index_w_next = 0;
      else temp_index_w_next = temp_index_w - `COMPRESS_INDEX'd9;
    end
    else temp_index_w_next = temp_index_w;
  end

end

always @(posedge clk or posedge rst) begin 
   if (rst) begin
      temp_index_w <= 0;
   end else begin
      temp_index_w <= temp_index_w_next;
   end
 end

 always @(*) begin
    addr_d_w_next = addr_d_w;
    in_dic_flag_next = in_dic_flag;   
    if(state == READ || state == IDLE0) begin
      if(compress_w[temp_index_w] == 1) begin
        addr_d_w_next = compress_w[temp_index_w-1 -: `DICTIONARY_INDX_SIZE];
        in_dic_flag_next = 1;
      end
      else begin
        in_dic_flag_next = 0;
      end
    end
 end

 always @(posedge clk or posedge rst) begin
  if (rst) begin
    addr_d_w <= 0;
    in_dic_flag <= 0;
  end else begin
    addr_d_w <= addr_d_w_next;
    in_dic_flag <= in_dic_flag_next;
  end
end

always @(*) begin
    temp_w_next = temp_w;
    in_w_next = in_b;
    
    if(state == READ) begin
      if(in_dic_flag == 1) begin
        if(c_t_w == 2'd0) begin
          in_w_next = {temp_w,out_d_w};
        end
        else if(c_t_w == 2'd3) begin
          temp_w_next[7:0] =  out_d_w;
        end
        else if(c_t_w == 2'd2) temp_w_next[15:8] =  out_d_w;
        else temp_w_next[23:16] =  out_d_w;
      end
      else begin
        if(c_t_w == 2'd0) in_w_next = {temp_w,compress_w[temp_index_w+1 +: 8]};
        else if(c_t_w == 2'd3) temp_w_next[7:0] =  compress_w[temp_index_w+1 +: 8];
        else if(c_t_w == 2'd2) temp_w_next[15:8] = compress_w[temp_index_w+1 +: 8];
        else temp_w_next[23:16] = compress_w[temp_index_w+1 +: 8];
      end
   end
 end

 always @(posedge clk or posedge rst) begin
   if (rst) begin
      in_b <= 0;
      temp_w <= 0;
   end
   else begin
      temp_w <= temp_w_next;
      in_b <= in_w_next;
   end
 end

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
  reg [1:0] cnt_m, cnt_n;
  wire [ 1:0] rnd_m = m[3:2] + (m[1:0] > 2'd0);
  wire [ 1:0] rnd_n = n[3:2] + (n[1:0] > 2'd0);
  wire        out_limit = (out_n || out_m);


  //mac and wires
  wire [0:31] from_top__net                    [0:4];
  wire [0:31] from_left_net                    [0:4];
  wire [71:0] multi_out_net                    [0:3];

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
            .mat_out (multi_out_net[i][71-(j*18):54-(j*18)])  // move downward
        );
      end
    end
  endgenerate

  reg [`GBUFF_INDX_SIZE-1:0] last_addr_b, last_addr_c;  //8 bit

  wire cnt_end = (cnt == {1'd0, k} + 5'd7);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      done <= 0;
      in_c <= 32'd0;
      last_addr_b <= 8'd0;
      last_addr_c <= 8'd0;
      cnt <= 5'd0;
      addr_a <= 8'd0;
      addr_b <= 8'd0;
      addr_c <= 8'd0;
      cnt_m <= 2'd0;
      cnt_n <= 2'd0;
      wr_en_a <= 0;
      wr_en_b <= 0;
      wr_en_c <= 0;
    end else begin
      case (state)
        IDLE_r : begin 
          wr_en_b <= 0;
        end
        IDLE0 : begin
          wr_en_b <= 0;
          addr_a <= 8'b11111111;
          addr_b <= 8'b11111111;
        end
        READ : begin
          wr_en_b <= 1;
          if(c_t_w == 2'd1)
            addr_b <= addr_b + 8'd1;
          else
            addr_b <= addr_b;
        end
        IDLE : begin
          wr_en_a <= 0;
          wr_en_b <= 0;
          addr_a <= 0;
          addr_b <= 0;
        end
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

           if (multi_out_net[cnt[1:0]][17]) begin
            if (~(&multi_out_net[cnt[1:0]][16:11])) begin
              in_c[31:24] <= 8'b10000000;
            end
            else begin
              in_c[31:24] <= multi_out_net[cnt[1:0]][11:4];
            end
          end
          else begin
            if (|multi_out_net[cnt[1:0]][16:11]) begin
              in_c[31:24] <= 8'b01111111;
            end
            else begin
              in_c[31:24] <= multi_out_net[cnt[1:0]][11:4];
            end
          end

          if (multi_out_net[cnt[1:0]][35]) begin
            if (~(&multi_out_net[cnt[1:0]][34:29])) begin
              in_c[23:16] <= 8'b10000000;
            end
            else begin
              in_c[23:16] <= multi_out_net[cnt[1:0]][29:22];
            end
          end
          else begin
            if (|multi_out_net[cnt[1:0]][34:29]) begin
              in_c[23:16] <= 8'b01111111;
            end
            else begin
              in_c[23:16] <= multi_out_net[cnt[1:0]][29:22];
            end
          end

          if (multi_out_net[cnt[1:0]][53]) begin
            if (~(&multi_out_net[cnt[1:0]][52:47])) begin
              in_c[15:8] <= 8'b10000000;
            end
            else begin
              in_c[15:8] <= multi_out_net[cnt[1:0]][47:40];
            end
          end
          else begin
            if (|multi_out_net[cnt[1:0]][52:47]) begin
              in_c[15:8] <= 8'b01111111;
            end
            else begin
              in_c[15:8] <= multi_out_net[cnt[1:0]][47:40];
            end
          end

          if (multi_out_net[cnt[1:0]][71]) begin
            if (~(&multi_out_net[cnt[1:0]][70:65])) begin
              in_c[7:0] <= 8'b10000000;
            end
            else begin
              in_c[7:0] <= multi_out_net[cnt[1:0]][65:58];
            end
          end
          else begin
            if (|multi_out_net[cnt[1:0]][70:65]) begin
              in_c[7:0] <= 8'b01111111;
            end
            else begin
              in_c[7:0] <= multi_out_net[cnt[1:0]][65:58];
            end
          end
          
        end
        FINISH: begin
          wr_en_c <= 0;
          done <= 1;
        end
        default begin
          in_c <= 32'd0;
          wr_en_a <= 0;
          wr_en_b <= 0;
          wr_en_c <= 0;
        end
      endcase

    end
  end

  always @(*) begin
    next_state = state;
    case (state)
      IDLE_r: next_state = IDLE0;
      IDLE0: next_state = READ;
      READ : if (read_end_w) next_state = IDLE;
      IDLE: next_state = IDLE2;
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

  always @(posedge clk or posedge rst) begin
    if (rst) state <= IDLE_r;
    else state <= next_state;
  end

endmodule
