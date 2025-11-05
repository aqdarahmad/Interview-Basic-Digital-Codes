# 💻 Digital Design Basics - SystemVerilog Repository

Welcome to the **Digital Design Basics Repository**! This repo contains **all fundamental combinational circuits** implemented in **SystemVerilog**, perfect for **interview preparation** and learning the essentials of digital electronics.

---

## 📂 Repository Structure


digital_basics_repo/
│
├─ adders/
│ ├─ half_adder.sv # Half Adder module
│ ├─ full_adder.sv # Full Adder module
│ └─ tb_adder.sv # Testbench for adders
│
├─ subtractors/
│ ├─ half_subtractor.sv # Half Subtractor module
│ ├─ full_subtractor.sv # Full Subtractor module
│ └─ tb_subtractor.sv # Testbench for subtractors
│
├─ multiplexers/
│ ├─ mux_2to1.sv # 2:1 Multiplexer
│ ├─ mux_4to1.sv # 4:1 Multiplexer
│ ├─ mux_8to1.sv # 8:1 Multiplexer
│ └─ tb_mux.sv # Testbench for multiplexers
│
├─ decoders/
│ ├─ decoder_2to4.sv # 2-to-4 Decoder
│ ├─ decoder_3to8.sv # 3-to-8 Decoder
│ └─ tb_decoder.sv # Testbench for decoders


---

## ⚡ Modules Overview

### 1️⃣ **Adders**
- **Half Adder** ➡ Computes **Sum** & **Carry** for two input bits.  
- **Full Adder** ➡ Computes **Sum** & **Carry** for two input bits + **Carry-in**.

### 2️⃣ **Subtractors**
- **Half Subtractor** ➡ Computes **Difference** & **Borrow** for two input bits.  
- **Full Subtractor** ➡ Computes **Difference** & **Borrow** for two input bits + **Borrow-in**.

### 3️⃣ **Multiplexers (MUX)**
- **2:1, 4:1, 8:1 MUX** ➡ Selects **one input** based on **selection lines**.  
- Essential for **data routing and control logic**.

### 4️⃣ **Decoders**
- **2-to-4, 3-to-8 Decoder** ➡ Converts **binary input** to **one-hot output**.  
- Used in **memory addressing and control signals**.

### 5️⃣ **Basic Gates**
- **AND, OR, XOR** ➡ Fundamental combinational logic gates.  
- Basis for building **all digital circuits**.

---

## 🚀 How to Use
1. Compile the desired module with its **Testbench** using a **SystemVerilog simulator** (ModelSim, Vivado, QuestaSim, etc.).  
2. Run the **simulation**.  
3. Observe outputs in the **waveform viewer** or **console**.  

---

## 💡 Interview Tips
- Understand **difference between Half & Full versions** (Adder/Subtractor).  
- Be able to **draw the logic diagram** from SystemVerilog code.  
- Know **Multiplexer & Decoder applications**.  
- Practice **manual test cases** and **truth tables**.  

---

## 📝 Author
- **Aqdar Ahmed**  
- Computer Engineering Student  
- Repository for mastering **Digital Design Fundamentals**.
