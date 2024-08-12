wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/TsaiChiehCheng/Weight-Compression-neural-network-accelerator-for-edge-computing/build/tpu.fsdb}
wvRestoreSignal -win $_nWave1 \
           "/home/TsaiChiehCheng/Weight-Compression-neural-network-accelerator-for-edge-computing/build/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 0 23 1536 801
wvSetCursor -win $_nWave1 153515.820758 -snap {("G3" 10)}
wvSetCursor -win $_nWave1 154566.412266 -snap {("G3" 10)}
wvSetCursor -win $_nWave1 155485.679835 -snap {("G3" 10)}
wvSetCursor -win $_nWave1 153696.391174 -snap {("G3" 10)}
wvSetCursor -win $_nWave1 154435.088328 -snap {("G3" 10)}
wvSetCursor -win $_nWave1 155436.433358 -snap {("G3" 10)}
wvSetCursor -win $_nWave1 156536.271343 -snap {("G3" 10)}
wvSetCursor -win $_nWave1 157471.954404 -snap {("G3" 10)}
wvSetCursor -win $_nWave1 158456.883943 -snap {("G3" 9)}
wvSetCursor -win $_nWave1 159392.567004 -snap {("G3" 10)}
