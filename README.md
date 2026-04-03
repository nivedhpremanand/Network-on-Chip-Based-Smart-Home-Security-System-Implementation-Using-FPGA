# 🛡️ NoC-Guard — FPGA-Based Smart Home Security (Network-on-Chip)

NoC-Guard is a **real-time hardware security solution** that leverages a **Network-on-Chip (NoC)** architecture to manage home automation and safety sensors. This system utilizes a **mesh topology** on a Xilinx Artix-7 FPGA to provide parallel, low-latency communication between diverse security modules.

---

## 🚀 Key Highlights

* **NoC Architecture**: Utilizes a packet-switched network with lightweight routers instead of traditional serial buses for superior scalability.
* **Multi-Sensor Integration**: Simultaneously monitors IR motion, MQ2/MQ6 gas leakage, and water levels via dedicated NoC nodes.
* **Real-Time Remote Alerts**: Features a SIM800L GSM module interface to send instant SMS notifications upon threat detection.
* **Deterministic Low Latency**: Hardware-level processing ensures high-speed data transfer and immediate alarm activation without software bottlenecks.
* **Resource Efficiency**: Optimized Verilog design maintains low utilization of LUTs and Flip-Flops on the Artix-7 fabric.

---

## 🏗️ Architecture

The system follows a **modular node-based architecture** where each peripheral is treated as an independent network participant.

* **Sensor Nodes**: Convert raw signals (analog/digital) into standardized NoC packets.
* **Router Fabric**: Manages packet routing and arbitration across the mesh to prevent congestion.
* **Central Control Node**: Aggregates sensor data, prioritizes events, and triggers the GSM/Alarm response.

---

## 🛠️ Tech Stack

* **Language**: Verilog HDL.
* **Hardware**: Xilinx Artix-7 XC7A100T (Nexys A7).
* **Development Suite**: Xilinx Vivado Design Suite 2025.
* **Simulation**: Vivado Testbench environment.
* **Communication Protocols**: UART (for GSM) and Packet-Switched NoC.

---

## 🌐 Integrated Modules

* **IR Sensor**: Intrusion and motion detection.
* **MQ2/MQ6 Sensors**: Smoke, LPG, and combustible gas leakage monitoring.
* **Float Sensor**: Water level overflow detection.
* **SIM800L**: Cellular connectivity for remote SMS alerting.

---

## 💻 How to Implement

1. **Open Vivado**: Load the project in Vivado Design Suite 2025.
2. **Synthesize & Implement**: Run the synthesis tool to generate the hardware netlist and check resource utilization.
3. **Generate Bitstream**: Create the `.bit` file for the Artix-7 XC7A100T.
4. **Program FPGA**: Connect the Nexys A7 board and flash the bitstream to the hardware.
5. **Monitor System**: Observe real-time responses through the onboard alarm or GSM SMS feedback.

