# Weight-Compression-neural-network-accelerator-for-edge-computing
* 此為最終版本 Baseline
* 修改項目 : 8-bit 定點數 systolic array
* 其他最終版本
  * Branch huffman
  * Branch dictionary-based
  * Branch PoT-Shift4-bit
  * Branch PoT-Shift3-bit

## Get started
**Makefile**
- ```make rtl```
        Run RTL simulation.
- ```make synthesize```
        Run synthesize with Design Compiler.
- ```make syn```
         Run gate-level simulation (nWave)
- ```make power```
        Run power analyze with Primetime
