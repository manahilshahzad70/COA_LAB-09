
# COA_LAB-09

Computer Architecture Lab

# Computer Architecture Lab

## Lab 09 – Implementation of a Register File using ModelSim

### Lab Description

The purpose of this lab was to understand the implementation and simulation of register files using Verilog HDL. In this lab, different register files were designed and simulated using ModelSim to understand data storage, read and write operations, clock signals, and reset functionality.

The tasks implemented in this lab were:

1. Design of a 4×4 Register File
2. Simulation of a 4×4 Register File
3. Design and Verification of a 32-bit RV32 Register File
4. Register Simulation Using Logisim

### Task 1 – Design of a 4×4 Register File

A 4×4 register file was designed using Verilog HDL. It contains four registers, each with a width of 4 bits, two read ports, and one write port. The register file uses a clock signal to store data in the selected register and allows data to be read from two registers simultaneously.

### Task 2 – Simulation of a 4×4 Register File

The 4×4 register file was simulated using ModelSim. The value 6 was written into Register 1, the value 3 into Register 2, and the value 13 into Register 3. Register 1 and Register 2 were then read through the two output ports. The expected outputs were 6 and 3, respectively.

### Task 3 – Design and Verification of a 32-bit RV32 Register File

A 32-bit register file for a RISC-V (RV32) processor was designed and verified using Verilog HDL. It contains 32 registers, each of 32-bit size, with two asynchronous read ports and one synchronous write port. The design supports clock and reset signals, write enable, and register addressing. Register 0 always returns zero, and writing to Register 0 is disabled.

### Task 4 – Register Simulation Using Logisim

A 4-bit register was designed and simulated using Logisim. Input data was applied to the register, and the clock signal was used to control when the data was stored. The output was observed to verify that the register stores data on the active clock edge and retains the stored value until the next active clock edge.

### Software Used

- ModelSim
- Logisim

### Conclusion

This lab provided practical experience in designing and simulating register files using Verilog HDL and ModelSim. It helped demonstrate data storage, register addressing, read and write operations, clock and reset functionality, and the implementation of a 32-bit RISC-V register file. The Logisim experiment further improved the understanding of how registers store and retain binary data using clock signals.
