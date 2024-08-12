# Weight-Compression-neural-network-accelerator-for-edge-computing
* 此為最終版本 PoT-Shift3-bit
* 修改項目 : 修改編碼方式，使之更有利於硬體設計(Mac.v)
* 其他最終版本
  * Branch baseline
  * Branch huffman
  * Branch dictionary-based
  * Branch PoT-Shift4-bit

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
