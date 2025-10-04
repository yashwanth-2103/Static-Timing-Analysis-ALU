# 🚀 Static Timing Analysis of a Pipelined ALU

## 🎯 Objective
This project demonstrates how **pipelining drastically reduces critical path delay** in a digital ALU, thereby **increasing maximum operating frequency (fmax)**. By comparing a non-pipelined 8-bit ALU with a pipelined version, we provide clear **quantitative evidence of timing improvement**.

---

## 🧱 Design Overview

### 1️⃣ Non-Pipelined ALU
- Purely combinational logic.
- Supports **Add, Subtract, AND, OR** (8-bit operations).
- Long critical path dominated by **adder/subtractor delays**.
- Output is directly computed without registers → lower throughput at high frequencies.

### 2️⃣ Pipelined ALU
- Inserts **one pipeline register stage** before the output.
- Same logic as non-pipelined ALU, but **critical path is split** into shorter segments.
- Improves timing, increases maximum fmax, and allows higher throughput without timing violations.

### Visual Block Diagrams

**Non-Pipelined ALU:**  
![Non-Pipelined ALU](docs/nonpipe.svg)

**Pipelined ALU:**  
![Pipelined ALU](docs/pipe.svg)

### Simulation

See [SIMULATION.md](docs/SIMULATION.md) for running testbenches and waveform generation.


---

## ⚙️ Methodology / Flow

1. **Design ALUs** in Verilog (`src/ALU_nonpipe.v`, `src/ALU_pipe.v`).
2. **Synthesize** designs using **Yosys** to generate gate-level netlists.
3. Apply **timing constraints** with `.sdc` file (`sta/constraints.sdc`):
   - Clock period = 10 ns → Target fmax = 100 MHz
   - Input/output delays = 2 ns
4. Perform **Static Timing Analysis (STA)** using **OpenSTA** with the **Nangate45 library**:
   - Identify critical paths, WNS/TNS (Worst/Total Negative Slack)
5. Compare results between **non-pipelined** and **pipelined** designs.

---

## 📊 Example Results

| Design | Critical Path Delay | Maximum Frequency (fmax) | Slack (WNS) |
|:-------|:------------------|:------------------------|:------------|
| **Non-Pipelined ALU** | ~10.2 ns | 98 MHz | −2.0 ns |
| **Pipelined ALU**     | ~6.0 ns  | 166 MHz | +1.0 ns |

**Observation:**  
Pipelining reduces critical path delay by ~40%, significantly increasing the operating frequency and resulting in **positive slack**, ensuring robust timing.

---

## 🛠 Tools & Libraries
- **Yosys** — RTL-to-gate synthesis  
- **OpenSTA** — Static Timing Analysis  
- **Nangate45** — Open standard cell library  
- **Verilog HDL** — 8-bit ALU design  

---

## 🧠 Conclusion
This project clearly demonstrates that **pipelining is a powerful optimization** for digital circuits. By inserting registers to break long combinational paths:  

- Maximum frequency increases (~1.7× in this case)  
- Critical path delay is reduced  
- Slack becomes positive → design meets timing reliably  

**Takeaway:** Even a single-stage pipeline can dramatically improve performance, making designs scalable for high-speed applications.
