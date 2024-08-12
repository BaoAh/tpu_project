wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/TsaiChiehCheng/Weight-Compression-neural-network-accelerator-for-edge-computing/build/tpu.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalClose -win $_nWave1
wvRestoreSignal -win $_nWave1 \
           "/home/TsaiChiehCheng/Weight-Compression-neural-network-accelerator-for-edge-computing/build/signal1.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 4 0 1440 795
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu"
wvGetSignalSetSignalFilter -win $_nWave1 "recor*"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/clk} \
{/top_tb/rst} \
{/top_tb/TOP/ul_tpu/state\[2:0\]} \
{/top_tb/TOP/ul_tpu/addr_d_w\[3:0\]} \
{/top_tb/TOP/ul_tpu/c_t_w\[1:0\]} \
{/top_tb/TOP/ul_tpu/compress_w\[1059:0\]} \
{/top_tb/TOP/ul_tpu/in_b\[31:0\]} \
{/top_tb/TOP/ul_tpu/out_d_w\[7:0\]} \
{/top_tb/TOP/ul_tpu/read_end_w} \
{/top_tb/TOP/ul_tpu/temp_index_w\[10:0\]} \
{/top_tb/TOP/ul_tpu/temp_w\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/GBUFF_B/gbuff\[31:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[31\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[30\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[29\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[28\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[27\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[26\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[25\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[24\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[23\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[22\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[21\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[20\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[19\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[18\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[17\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[16\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[15\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[14\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[13\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[12\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[11\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[10\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[9\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[8\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[7\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[6\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[5\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[4\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[3\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[2\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[1\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[0\]\[255:0\]} \
{/top_tb/TOP/ul_tpu/wr_en_b} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/ul_tpu/compress_w\[639:636\]} \
{/top_tb/TOP/ul_tpu/compress_w\[634:627\]} \
{/top_tb/TOP/ul_tpu/compress_w\[625:618\]} \
{/top_tb/TOP/ul_tpu/cnt\[4:0\]} \
{/top_tb/TOP/ul_tpu/done} \
{/top_tb/TOP/GBUFF_OUT/gbuff\[31:0\]} \
{/top_tb/TOP/ul_tpu/in_c\[31:0\]} \
{/top_tb/TOP/ul_tpu/wr_en_c} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0:3\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[71:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[1\]\[71:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[2\]\[71:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[3\]\[71:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/clk} \
{/top_tb/rst} \
{/top_tb/TOP/ul_tpu/state\[2:0\]} \
{/top_tb/TOP/ul_tpu/addr_d_w\[3:0\]} \
{/top_tb/TOP/ul_tpu/c_t_w\[1:0\]} \
{/top_tb/TOP/ul_tpu/compress_w\[1059:0\]} \
{/top_tb/TOP/ul_tpu/in_b\[31:0\]} \
{/top_tb/TOP/ul_tpu/out_d_w\[7:0\]} \
{/top_tb/TOP/ul_tpu/read_end_w} \
{/top_tb/TOP/ul_tpu/temp_index_w\[10:0\]} \
{/top_tb/TOP/ul_tpu/record_index\[4:0\]} \
{/top_tb/TOP/ul_tpu/temp_w\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/GBUFF_B/gbuff\[31:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[31\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[30\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[29\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[28\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[27\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[26\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[25\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[24\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[23\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[22\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[21\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[20\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[19\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[18\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[17\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[16\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[15\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[14\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[13\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[12\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[11\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[10\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[9\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[8\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[7\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[6\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[5\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[4\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[3\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[2\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[1\]\[255:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[0\]\[255:0\]} \
{/top_tb/TOP/ul_tpu/wr_en_b} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/ul_tpu/compress_w\[639:636\]} \
{/top_tb/TOP/ul_tpu/compress_w\[634:627\]} \
{/top_tb/TOP/ul_tpu/compress_w\[625:618\]} \
{/top_tb/TOP/ul_tpu/cnt\[4:0\]} \
{/top_tb/TOP/ul_tpu/done} \
{/top_tb/TOP/GBUFF_OUT/gbuff\[31:0\]} \
{/top_tb/TOP/ul_tpu/in_c\[31:0\]} \
{/top_tb/TOP/ul_tpu/wr_en_c} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0:3\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[71:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[1\]\[71:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[2\]\[71:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[3\]\[71:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 16
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 7
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 8
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 69995.577681 -snap {("G2" 15)}
wvSetCursor -win $_nWave1 71473.296111 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 72259.343873 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 71660.088107 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvExit
