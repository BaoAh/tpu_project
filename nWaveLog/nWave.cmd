wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/TsaiChiehCheng/Weight-Compression-neural-network-accelerator-for-edge-computing/build/tpu.fsdb}
wvRestoreSignal -win $_nWave1 \
           "/home/TsaiChiehCheng/Weight-Compression-neural-network-accelerator-for-edge-computing/build/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 0 23 1467 801
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 10273.915922 -snap {("G3" 6)}
wvSetCursor -win $_nWave1 11929.934213 -snap {("G3" 6)}
wvResizeWindow -win $_nWave1 0 23 1467 801
wvResizeWindow -win $_nWave1 0 23 1467 801
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1467 801
