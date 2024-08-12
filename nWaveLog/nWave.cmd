wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/TsaiChiehCheng/Weight-Compression-neural-network-accelerator-for-edge-computing/build/tpu.fsdb}
wvRestoreSignal -win $_nWave1 \
           "/home/TsaiChiehCheng/Weight-Compression-neural-network-accelerator-for-edge-computing/build/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 0 23 1463 843
wvResizeWindow -win $_nWave1 0 23 1463 843
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 13330.897060 -snap {("G4" 5)}
wvSetCursor -win $_nWave1 13294.828573 -snap {("G4" 7)}
wvSetCursor -win $_nWave1 13285.724664 -snap {("G4" 3)}
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 56596.539663 -snap {("G4" 5)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 13327.606177 -snap {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvResizeWindow -win $_nWave1 8 31 1463 843
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {G4}
wvSelectGroup -win $_nWave1 {G4}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectGroup -win $_nWave1 {G5}
wvSetPosition -win $_nWave1 {("G4" 9)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_OUT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_B"
wvSetPosition -win $_nWave1 {("G4" 10)}
wvSetPosition -win $_nWave1 {("G4" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/clk} \
{/top_tb/rst} \
{/top_tb/TOP/ul_tpu/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/ul_tpu/wr_en_b} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
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
{/top_tb/TOP/ul_tpu/dataout_a_1\[7:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_1\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_2\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_3\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_4\[3:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[71:54\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[53:36\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[35:18\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[17:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[255:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 10 )} 
wvSetPosition -win $_nWave1 {("G4" 10)}
wvSetPosition -win $_nWave1 {("G4" 10)}
wvSetPosition -win $_nWave1 {("G4" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/clk} \
{/top_tb/rst} \
{/top_tb/TOP/ul_tpu/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/ul_tpu/wr_en_b} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
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
{/top_tb/TOP/ul_tpu/dataout_a_1\[7:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_1\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_2\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_3\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_4\[3:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[71:54\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[53:36\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[35:18\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[17:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[255:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 10 )} 
wvSetPosition -win $_nWave1 {("G4" 10)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 10 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 9)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_OUT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu/fifo_b_4"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu/sys_row\[2\]"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_B"
wvSetPosition -win $_nWave1 {("G4" 9)}
wvSetPosition -win $_nWave1 {("G4" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/clk} \
{/top_tb/rst} \
{/top_tb/TOP/ul_tpu/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/ul_tpu/wr_en_b} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
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
{/top_tb/TOP/ul_tpu/dataout_a_1\[7:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_1\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_2\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_3\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_4\[3:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[71:54\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[53:36\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[35:18\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[17:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSetPosition -win $_nWave1 {("G4" 9)}
wvGetSignalSetSignalFilter -win $_nWave1 "gbuff\[2:0\]"
wvSetPosition -win $_nWave1 {("G4" 9)}
wvSetPosition -win $_nWave1 {("G4" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/clk} \
{/top_tb/rst} \
{/top_tb/TOP/ul_tpu/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/ul_tpu/wr_en_b} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
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
{/top_tb/TOP/ul_tpu/dataout_a_1\[7:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_1\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_2\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_3\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_4\[3:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[71:54\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[53:36\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[35:18\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[17:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSetPosition -win $_nWave1 {("G4" 9)}
wvSetPosition -win $_nWave1 {("G4" 12)}
wvSetPosition -win $_nWave1 {("G4" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/clk} \
{/top_tb/rst} \
{/top_tb/TOP/ul_tpu/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/ul_tpu/wr_en_b} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
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
{/top_tb/TOP/ul_tpu/dataout_a_1\[7:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_1\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_2\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_3\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_4\[3:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[71:54\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[53:36\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[35:18\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[17:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[0\]\[15:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[1\]\[15:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[2\]\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G4" 12)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 10 11 12 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 11503.233110 -snap {("G4" 10)}
wvSetCursor -win $_nWave1 13322.124481 -snap {("G4" 8)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSelectGroup -win $_nWave1 {G5}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_B"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_OUT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu/fifo_b_4"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu/sys_row\[2\]"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_B"
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/clk} \
{/top_tb/rst} \
{/top_tb/TOP/ul_tpu/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/ul_tpu/wr_en_b} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
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
{/top_tb/TOP/ul_tpu/dataout_a_1\[7:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_1\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_2\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_3\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_4\[3:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[71:54\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[53:36\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[35:18\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[17:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[0\]\[15:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[1\]\[15:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[2\]\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/clk} \
{/top_tb/rst} \
{/top_tb/TOP/ul_tpu/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/ul_tpu/wr_en_b} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
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
{/top_tb/TOP/ul_tpu/dataout_a_1\[7:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_1\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_2\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_3\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_4\[3:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[71:54\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[53:36\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[35:18\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[17:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[0\]\[15:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[1\]\[15:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[2\]\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/GBUFF_B/data_out\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 6263.135495 -snap {("G5" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_B"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_OUT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu/fifo_b_4"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu/sys_row\[2\]"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_B"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_OUT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu"
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/clk} \
{/top_tb/rst} \
{/top_tb/TOP/ul_tpu/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/ul_tpu/wr_en_b} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
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
{/top_tb/TOP/ul_tpu/dataout_a_1\[7:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_1\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_2\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_3\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_4\[3:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[71:54\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[53:36\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[35:18\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[17:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[0\]\[15:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[1\]\[15:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[2\]\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/GBUFF_B/data_out\[15:0\]} \
{/top_tb/TOP/ul_tpu/datain_b_3\[3:0\]} \
{/top_tb/TOP/ul_tpu/datain_b_4\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 2 3 )} 
wvSetPosition -win $_nWave1 {("G5" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 2 3 )} 
wvSetRadix -win $_nWave1 -format Bin
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_B"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/GBUFF_OUT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu/fifo_b_4"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu/sys_row\[2\]"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ul_tpu"
wvSetPosition -win $_nWave1 {("G5" 4)}
wvSetPosition -win $_nWave1 {("G5" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/clk} \
{/top_tb/rst} \
{/top_tb/TOP/ul_tpu/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/ul_tpu/wr_en_b} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
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
{/top_tb/TOP/ul_tpu/dataout_a_1\[7:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_1\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_2\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_3\[3:0\]} \
{/top_tb/TOP/ul_tpu/dataout_b_4\[3:0\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[71:54\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[53:36\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[35:18\]} \
{/top_tb/TOP/ul_tpu/multi_out_net\[0\]\[17:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[0\]\[15:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[1\]\[15:0\]} \
{/top_tb/TOP/GBUFF_B/gbuff\[2\]\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/GBUFF_B/data_out\[15:0\]} \
{/top_tb/TOP/ul_tpu/datain_b_3\[3:0\]} \
{/top_tb/TOP/ul_tpu/datain_b_4\[3:0\]} \
{/top_tb/TOP/ul_tpu/stop_read} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 4 )} 
wvSetPosition -win $_nWave1 {("G5" 4)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 4888.754540 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 13272.378953 -snap {("G4" 4)}
wvPanLeft -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 14701.321200 -snap {("G4" 1)}
wvPanRight -win $_nWave1
wvPanLeft -win $_nWave1
wvZoomOut -win $_nWave1
wvPanRight -win $_nWave1
wvPanLeft -win $_nWave1
