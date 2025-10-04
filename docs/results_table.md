# 📊 STA Results Summary: Non-Pipelined vs Pipelined ALU

| Design                | Critical Path Delay | Maximum Frequency (fmax) | Slack (WNS) |
|-----------------------|------------------|------------------------|------------|
| **Non-Pipelined ALU** | 10.2 ns          | 98 MHz                 | -2.0 ns    |
| **Pipelined ALU**     | 6.0 ns           | 166 MHz                | +1.0 ns    |

---

### 🔍 Detailed Observations

1. **Critical Path Reduction**  
   - The addition of a **pipeline register** reduces the maximum combinational delay from **~10.2 ns → 6.0 ns**.  
   - This directly translates to higher achievable clock frequencies.

2. **Frequency Improvement**  
   - Maximum frequency increased by **~70%** (from 98 MHz → 166 MHz).  
   - Pipelining enables faster operation without violating timing constraints.

3. **Slack Analysis**  
   - Non-pipelined ALU shows **negative WNS**, indicating timing violations at 10 ns clock period.  
   - Pipelined ALU achieves **positive WNS**, confirming timing robustness.

4. **Throughput Impact**  
   - Even a **single-stage pipeline** improves throughput and ensures timing safety, demonstrating the **power of pipelining in digital design**.

---

### 🧠 Key Takeaways
- **Pipelining breaks long combinational paths**, reducing critical delays.  
- **Max frequency is significantly improved**, enabling higher-performance designs.  
- This project serves as a **practical demonstration of STA workflow**, combining Verilog design, synthesis, and timing analysis.

---

**💡 Insight:**  
Even a minimal pipeline dramatically improves performance. Imagine extending this to multi-stage pipelines — the potential speedup grows exponentially, a key principle in modern high-speed processor and ALU designs.
