# 2023 TPU project

## Introduction
* With the widespread application of neural networks on edge devices, edge computing is extremely important in the era of the Internet of Things. Maintaining accuracy under limited power consumption is a major focus. 

* However, with the current trend of increasing model weight quantities, this idea becomes somewhat challenging. Therefore, the goal of this study is to **quantize weights** by reducing the size of each parameter to save storage and computing power. 

* Drawing inspiration from the **Tensor Processing Unit (TPU) Core** architecture, a hardware-friendly computation method is proposed. Our aim is to explore how to design an efficient and low-power neural network accelerator, following a complete hardware design flow, and using the **UMC U18** process for circuit synthesis and routing.


![](./img/linear_q2)
![](./img/PoT_q2)

## Workflow
![](./img/Design_Flow)

## Architecture
### Tpu core and Sync FIFO
![](./img/tpu_n_fifo)

### Model architecture
![](./img/Quant_n_Model)


## Get started
**Makefile**

-  ```make mlp```
   Get the input, output, and weight of the baseline's FC layer.
-  ```make po2```
   Get the input, output, and weight of the PoT's FC layer
- ```make fc2```
   Transform the matrices into hexadecimal format.
- ```make rtl```
        RTL simulation.
- ```make syn```
        Synthesis
- ```make pre```
        Gate-level simulation
