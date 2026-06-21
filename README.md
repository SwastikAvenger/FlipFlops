## Introduction to Flipflop
A Flipflop is the most basic memory element. Flipflops can **store 1-bit** information at any given time. They respond to changes in the clock input.
Flipflops are **edge-triggered**, which means they respond to changes only at the rising/falling edge of a clock.
More information about flipflops in digital circuits can be found [here](https://www.electronicsforu.com/technology-trends/learn-electronics/flip-flop-rs-jk-t-d) .
This repository contains the design and testbench files for the different types of fundamental flipflops in verilog. One can use these design files to simulate the working of a flipflop after learning about their working.

### Types of FlipFlop
1. **SR Flipflop** - This is the most common flip-flop among all. This simple flip-flop circuit has a set input (S) and a reset input (R). In this system, when you Set “S” as active, the output “Q” would be high, and “Q‘” would be low. Once the outputs are established, the wiring of the circuit is maintained until “S” or “R” goes high, or power is turned off.
2. **JK Flipflop** - The JK Flipflop (named after Jack Kilby) is an improvement over the SR Flipflop, where the Set = 1 = Reset condition does not pose a problem.
Here, when both inputs to the flipflop are high, the output simply gets toggled in the next state. 
3. **D Flipflop** - The D flipflop stores data on the rising or falling edge of the clock. When the clock edge occurs, the data input is captured and stored in the flip-flop. The D flipflop is one of the most widely used flipflops in almost all digital circuits due to it's simplicity in nature. The D flipflop is often called as either the **Data** flipflop (since the **_input data is available at the output_** in the next clock) or the **Delay** flipflop (since the input data is available at the output _**in the next clock**_).
4. **T Flipflop** - The T Flipflop (T for toggle) is basically a JK Flipflop, but both the inputs are tied together. That is, in this case, both the value of J and K are either low or high, at the same posedge. This results the output in toggling, from its present state to the next state. If the output was low in present state, it will toggle to high in the next state, when T=1 .

More information about Flipflops and Latches in Digital Circuits can be found [here](https://www.electronicsforu.com/technology-trends/learn-electronics/flip-flop-rs-jk-t-d).
