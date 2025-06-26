# 4-bit ALU Using Spartan-6 FPGA

This project implements a 4-bit ALU on a Xilinx Spartan-6 board. It supports operations like addition, subtraction, AND, OR, XOR, NOT, left shift, and right shift. The inputs are given via slide switches, and the outputs are shown on onboard LEDs.

---

## 🧠 Features

- 4-bit input A and B via switches
- 3-bit operation select line
- Output on 5 MSB LEDs
- Fully tested in Vivado and real Spartan-6 hardware

---

## 🛠️ Operations

| Select | Operation     |
|--------|---------------|
| `000`  | A + B         |
| `001`  | A - B         |
| `010`  | A AND B       |
| `011`  | A OR B        |
| `100`  | A XOR B       |
| `101`  | NOT A         |
| `110`  | Left Shift A  |
| `111`  | Right Shift A |

---

## 📁 Folder Structure

- `src/` - VHDL source code and constraints
- `simulation/` - Vivado simulation screenshots
- `hardware_testing/` - Photos and Videos from Spartan-6 board testing

---

## 🖥️ Simulation Preview


| Waveform 1               | Waveform 2               | Code View              |
|--------------------------|--------------------------|------------------------|
| ![](vivado_simulation/waveform.png) | ![](vivado_simulation/waveform2.png) | ![](vivado_simulation/vivado_code.png) |


---

## 🔌 Hardware Testing

| Description     | Visual                       |
|-----------------|------------------------------|
| Spartan-6 Board | ![](hardware_testing/board.png) |
| Output on LEDs  | ![](hardware_testing/board_output.png) |
| Demo Video      | 🎥 [Watch Demo](hardware_testing/demo.mp4) |

---

## 🔧 Tools Used

- Xilinx Vivado (or ISE for Spartan-6 compatibility)
- Spartan-6 FPGA Development Board
- VHDL for design and simulation
---

## 👨‍💻 Author

Senbagaseelan V

---

## 📜 License

This project is licensed under the MIT License.
