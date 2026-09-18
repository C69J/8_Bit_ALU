# 8-Bit ALU in Verilog
A synthesizable 8-bit Arithmetic Logic Unit (ALU) designed in Verilog HDL. The ALU supports 16 operations, including 8 arithmetic and 8 logical operations, selected using a 4-bit control signal.

# Features
8-bit data inputs (a and b)

8-bit output (y)

1-bit carry input (Cin)

4-bit operation select (sel)

Supports 16 operations

8 arithmetic operations

8 logical operations

Combinational RTL design

Synthesizable Verilog

Testbench included

Compatible with FPGA development tools such as Xilinx Vivado

# ALU Operation

sel[3] = 0 → Arithmetic operation

sel[3] = 1 → Logical operation

sel[2:0] → Selects the specific operation

# Operation Table

## Arithmetic Operations

| `sel`  | Operation     |
| ------ | ------------- |
| `0000` | `a`           |
| `0001` | `a + 1`       |
| `0010` | `a - 1`       |
| `0011` | `b`           |
| `0100` | `b + 1`       |
| `0101` | `b - 1`       |
| `0110` | `a + b`       |
| `0111` | `a + b + Cin` |


## Logical Operations

| `sel`  | Operation   |
| ------ | ----------- |
| `1000` | `~a`        |
| `1001` | `~b`        |
| `1010` | `a & b`     |
| `1011` | `a \| b`    |
| `1100` | `~(a & b)`  |
| `1101` | `~(a \| b)` |
| `1110` | `a ^ b`     |
| `1111` | `~(a ^ b)`  |


## Port Description

| Port  | Direction | Width | Description      |
| ----- | --------- | ----- | ---------------- |
| `a`   | Input     | 8-bit | First operand    |
| `b`   | Input     | 8-bit | Second operand   |
| `Cin` | Input     | 1-bit | Carry input      |
| `sel` | Input     | 4-bit | Operation select |
| `y`   | Output    | 8-bit | ALU result       |


## Project Structure

8-bit-ALU-Verilog/

│

├── ALU.v

├── ALU_tb.v

└── README.md

## Simulation
The testbench verifies all 16 operations using the following initial values:
a   = 5
b   = 3
Cin = 0

For example:

sel = 0110
Operation = a + b
Result = 5 + 3 = 8

For addition with carry:

sel = 0111
Cin = 1
Operation = a + b + Cin
Result = 5 + 3 + 1 = 9

## Tools Used
Verilog HDL
Xilinx Vivado
RTL Simulation
FPGA Design

## Future Improvements
The ALU can be extended with:

Carry-out flag

Zero flag

Sign flag

Overflow detection

Comparison operations

Shift and rotate operations

Multiplication and division

Parameterized data width

Pipelined architecture

Self-checking testbench

Functional coverage

SystemVerilog assertions

FPGA implementation using switches and LEDs

## License

This project is created for educational and RTL design practice purposes.
