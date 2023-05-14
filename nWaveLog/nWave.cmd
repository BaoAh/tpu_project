wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/MingPaoHo/forgit/systolic_array_hw/build/tpu.fsdb}
wvRestoreSignal -win $_nWave1 \
           "/home/MingPaoHo/forgit/systolic_array_hw/signal.rc" \
           -overWriteAutoAlias on
wvUnknownSaveResult -win $_nWave1 -clear
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "k"
wvSetPosition -win $_nWave1 {("G2" 24)}
wvSetPosition -win $_nWave1 {("G2" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/data_in_a\[31:0\]} \
{/top_tb/TOP/data_in_b\[31:0\]} \
{/top_tb/TOP/data_in_o\[31:0\]} \
{/top_tb/TOP/data_out_a\[31:0\]} \
{/top_tb/TOP/data_out_b\[31:0\]} \
{/top_tb/TOP/data_out_o\[31:0\]} \
{/top_tb/TOP/done} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/start} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/data_in_a\[31:0\]} \
{/top_tb/TOP/data_in_b\[31:0\]} \
{/top_tb/TOP/data_in_o\[31:0\]} \
{/top_tb/TOP/data_out_a\[31:0\]} \
{/top_tb/TOP/data_out_b\[31:0\]} \
{/top_tb/TOP/data_out_o\[31:0\]} \
{/top_tb/TOP/done} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/start} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/ul_tpu/addr_a\[7:0\]} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
{/top_tb/TOP/ul_tpu/addr_c\[7:0\]} \
{/top_tb/TOP/ul_tpu/last_addr_c\[7:0\]} \
{/top_tb/TOP/ul_tpu/in_c\[31:0\]} \
{/top_tb/TOP/ul_tpu/state\[1:0\]} \
{/top_tb/TOP/ul_tpu/addr_a\[7:0\]} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
{/top_tb/TOP/ul_tpu/addr_c\[7:0\]} \
{/top_tb/TOP/ul_tpu/last_addr_c\[7:0\]} \
{/top_tb/TOP/ul_tpu/cnt_m\[1:0\]} \
{/top_tb/TOP/ul_tpu/in_c\[31:0\]} \
{/top_tb/TOP/ul_tpu/state\[1:0\]} \
{/top_tb/TOP/ul_tpu/systolic_array_rst} \
{/top_tb/TOP/ul_tpu/n599} \
{/top_tb/TOP/ul_tpu/n503} \
{/top_tb/TOP/ul_tpu/n562} \
{/top_tb/TOP/ul_tpu/n563} \
{/top_tb/TOP/ul_tpu/multi_out_net\[106:0\]} \
{/top_tb/TOP/ul_tpu/n568} \
{/top_tb/TOP/ul_tpu/n569} \
{/top_tb/TOP/ul_tpu/clk} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N10} \
{/top_tb/TOP/ul_tpu/k\[3:0\]} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N11} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N12} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N13} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N14} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N15} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N16} \
{/top_tb/TOP/ul_tpu/from_top__net\[95:0\]} \
{/top_tb/TOP/ul_tpu/from_left_net\[95:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 24 )} 
wvSetPosition -win $_nWave1 {("G2" 24)}
wvSetPosition -win $_nWave1 {("G2" 24)}
wvSetPosition -win $_nWave1 {("G2" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/data_in_a\[31:0\]} \
{/top_tb/TOP/data_in_b\[31:0\]} \
{/top_tb/TOP/data_in_o\[31:0\]} \
{/top_tb/TOP/data_out_a\[31:0\]} \
{/top_tb/TOP/data_out_b\[31:0\]} \
{/top_tb/TOP/data_out_o\[31:0\]} \
{/top_tb/TOP/done} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/start} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/data_in_a\[31:0\]} \
{/top_tb/TOP/data_in_b\[31:0\]} \
{/top_tb/TOP/data_in_o\[31:0\]} \
{/top_tb/TOP/data_out_a\[31:0\]} \
{/top_tb/TOP/data_out_b\[31:0\]} \
{/top_tb/TOP/data_out_o\[31:0\]} \
{/top_tb/TOP/done} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/start} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/ul_tpu/addr_a\[7:0\]} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
{/top_tb/TOP/ul_tpu/addr_c\[7:0\]} \
{/top_tb/TOP/ul_tpu/last_addr_c\[7:0\]} \
{/top_tb/TOP/ul_tpu/in_c\[31:0\]} \
{/top_tb/TOP/ul_tpu/state\[1:0\]} \
{/top_tb/TOP/ul_tpu/addr_a\[7:0\]} \
{/top_tb/TOP/ul_tpu/addr_b\[7:0\]} \
{/top_tb/TOP/ul_tpu/addr_c\[7:0\]} \
{/top_tb/TOP/ul_tpu/last_addr_c\[7:0\]} \
{/top_tb/TOP/ul_tpu/cnt_m\[1:0\]} \
{/top_tb/TOP/ul_tpu/in_c\[31:0\]} \
{/top_tb/TOP/ul_tpu/state\[1:0\]} \
{/top_tb/TOP/ul_tpu/systolic_array_rst} \
{/top_tb/TOP/ul_tpu/n599} \
{/top_tb/TOP/ul_tpu/n503} \
{/top_tb/TOP/ul_tpu/n562} \
{/top_tb/TOP/ul_tpu/n563} \
{/top_tb/TOP/ul_tpu/multi_out_net\[106:0\]} \
{/top_tb/TOP/ul_tpu/n568} \
{/top_tb/TOP/ul_tpu/n569} \
{/top_tb/TOP/ul_tpu/clk} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N10} \
{/top_tb/TOP/ul_tpu/k\[3:0\]} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N11} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N12} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N13} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N14} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N15} \
{/top_tb/TOP/ul_tpu/sys_row_0__sys_col_0__ul_mac_N16} \
{/top_tb/TOP/ul_tpu/from_top__net\[95:0\]} \
{/top_tb/TOP/ul_tpu/from_left_net\[95:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 24 )} 
wvSetPosition -win $_nWave1 {("G2" 24)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 15097.815129 -snap {("G2" 24)}
wvSetCursor -win $_nWave1 21014.526463 -snap {("G2" 22)}
wvSetCursor -win $_nWave1 27951.360441 -snap {("G2" 22)}
wvSetCursor -win $_nWave1 14893.790600 -snap {("G2" 24)}
wvSetCursor -win $_nWave1 14281.717014 -snap {("G2" 22)}
wvSetCursor -win $_nWave1 15301.839658 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 15301.839658 -snap {("G2" 24)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomIn -win $_nWave1
