# Day 69: JK Flip-Flop and T Flip-Flop Using Verilog HDL

## Introduction

Flip-Flops are fundamental sequential logic circuits used to store one bit of binary information. They operate based on a clock signal and update their output according to the input conditions.

In this project, two types of flip-flops are designed and simulated using Verilog HDL:

1. JK Flip-Flop
2. T Flip-Flop

The designs are verified using testbenches and simulated using Xilinx Vivado.

---

## 1. JK Flip-Flop

### Description

A JK Flip-Flop is a sequential logic circuit with two inputs, J and K. It performs Hold, Reset, Set, and Toggle operations depending on the input combinations.

### Truth Table

| J | K | Q(next) | Operation |
|---|---|---|---|
| 0 | 0 | Q | Hold |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | Q̅ | Toggle |

### Characteristic Equation

Q(next) = JQ̅ + K̅Q

### Applications

- Digital counters
- Sequential logic circuits
- Control systems
- Toggle-based circuits

---

## 2. T Flip-Flop

### Description

A T (Toggle) Flip-Flop is a sequential logic circuit with a single input, T. It performs Hold and Toggle operations depending on the input value.

### Truth Table

| T | Q(next) | Operation |
|---|---|---|
| 0 | Q | Hold |
| 1 | Q̅ | Toggle |

### Characteristic Equation

Q(next) = T ⊕ Q

### Applications

- Binary counters
- Frequency dividers
- Digital counting systems
- Sequential circuits

---

## 3. Tools and Technologies

- Hardware Description Language: Verilog HDL
- Simulation and Design Tool: Xilinx Vivado
- Verification: Verilog Testbench
- Waveform Analysis: Vivado Simulator

---

## 4. Project Files

| File Name | Description |
|---|---|
| JK_FF.v | JK Flip-Flop RTL design |
| JK_FF_TB.v | JK Flip-Flop testbench |
| T_FF.v | T Flip-Flop RTL design |
| T_FF_TB.v | T Flip-Flop testbench |
| Results.docx | Design, testbench, waveform and schematic screenshots |

---

## 5. Simulation and Verification

### JK Flip-Flop

All four input combinations are applied to verify:

- Hold
- Reset
- Set
- Toggle

### T Flip-Flop

Both input conditions are applied to verify:

- Hold
- Toggle

The simulation waveforms are observed to verify the output behavior at the rising edge of the clock.

---

## 6. Learning Outcomes

- Understood the working principle of JK and T Flip-Flops.
- Learned the truth tables and characteristic equations.
- Practiced sequential RTL design using Verilog HDL.
- Developed separate testbenches for both flip-flops.
- Verified the designs using simulation waveforms in Xilinx Vivado.

---

## 7. Conclusion

JK and T Flip-Flops were successfully designed and simulated using Verilog HDL. Their different operating conditions were verified through testbenches and simulation waveforms.

This experiment strengthened my understanding of sequential logic design and clock-triggered operations as part of my RTL Design learning journey.

---

**Challenge:** 100 Days of RTL Design

**Day:** 69

**Topic:** JK Flip-Flop and T Flip-Flop
