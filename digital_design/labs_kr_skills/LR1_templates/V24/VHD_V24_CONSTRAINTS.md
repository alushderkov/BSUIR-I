# Variant 24: Constraint Files Documentation

This document contains all XDC constraint files for variant 24, organized by task. Each constraint file maps VHDL ports to physical pins on the Nexys4 DDR board.

## Target Device

- **FPGA**: Xilinx Artix-7 (xc7a100tcsg324-1)
- **Board**: Nexys4 DDR
- **I/O Standard**: LVCMOS33 (3.3V)

---

## Pin Mapping Reference

### LED Pins (LD15-LD0)

| LED  | Pin | LED | Pin |
| ---- | --- | --- | --- |
| LD15 | P2  | LD7 | U6  |
| LD14 | R2  | LD6 | U7  |
| LD13 | U1  | LD5 | T4  |
| LD12 | P5  | LD4 | T5  |
| LD11 | R1  | LD3 | T6  |
| LD10 | V1  | LD2 | R8  |
| LD9  | U3  | LD1 | V9  |
| LD8  | V4  | LD0 | T8  |

### Switch Pins (SW15-SW0)

| SW   | Pin | SW  | Pin |
| ---- | --- | --- | --- |
| SW15 | P4  | SW7 | V5  |
| SW14 | P3  | SW6 | V6  |
| SW13 | R3  | SW5 | V7  |
| SW12 | T1  | SW4 | R5  |
| SW11 | T3  | SW3 | R6  |
| SW10 | U2  | SW2 | R7  |
| SW9  | V2  | SW1 | U8  |
| SW8  | U4  | SW0 | U9  |

---

## Task 1: LED Constant Display

**File**: [`constrs_1/1_led_const.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_1/1_led_const.xdc)

**Ports Used**:

- Output: `led_out[15:0]` → All 16 LEDs

**Contents**:

```tcl
## LED Outputs (all 16)
set_property PACKAGE_PIN P2 [get_ports {led_out[15]}]
set_property PACKAGE_PIN R2 [get_ports {led_out[14]}]
# ... (all 16 LEDs mapped)
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[15]}]
# ... (IOSTANDARD for all ports)
```

---

## Task 2: Switch-LED Direct Connection

**File**: [`constrs_2/2_sw_led_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_2/2_sw_led_unit.xdc)

**Ports Used**:

- Input: `sw_in[15:0]` → All 16 switches
- Output: `led_out[15:0]` → All 16 LEDs

**Contents**:

```tcl
## LED Outputs (all 16)
set_property PACKAGE_PIN P2 [get_ports {led_out[15]}]
# ...

## Switch Inputs (all 16)
set_property PACKAGE_PIN P4 [get_ports {sw_in[15]}]
# ...

## I/O Standards
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_in[*]}]
```

---

## Task 3: Combinational LED Unit

**File**: [`constrs_3/3_comb_led_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_3/3_comb_led_unit.xdc)

**Ports Used**:

- Input: `sw_in[7:0]` → Lower 8 switches (SW7-SW0)
- Output: `led_out[15:0]` → All 16 LEDs (upper 8 will be 0)

**Contents**:

```tcl
## LED Outputs (all 16)
set_property PACKAGE_PIN P2 [get_ports {led_out[15]}]
# ...

## Switch Inputs (only lower 8)
set_property PACKAGE_PIN V5 [get_ports {sw_in[7]}]
set_property PACKAGE_PIN V6 [get_ports {sw_in[6]}]
# ... (SW7-SW0)
```

---

## Task 4: Boolean Function Unit

**File**: [`constrs_4/4_function_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_4/4_function_unit.xdc)

**Ports Used**:

- Input: `x_in[3:0]` → Lower 4 switches (SW3-SW0)
- Output: `q_out` → LD0 (single LED)

**Contents**:

```tcl
## Output LED (single)
set_property PACKAGE_PIN T8 [get_ports {q_out}]
set_property IOSTANDARD LVCMOS33 [get_ports {q_out}]

## Input Switches (4 bits)
set_property PACKAGE_PIN R6 [get_ports {x_in[3]}]
set_property PACKAGE_PIN R7 [get_ports {x_in[2]}]
set_property PACKAGE_PIN U8 [get_ports {x_in[1]}]
set_property PACKAGE_PIN U9 [get_ports {x_in[0]}]
```

---

## Task 5: ALU Unit

**File**: [`constrs_5/5_alu_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_5/5_alu_unit.xdc)

**Ports Used**:

- Input: `sw_in[15:0]` → All 16 switches
  - SW15-SW10: Operand A (6 bits)
  - SW9-SW4: Operand B (6 bits)
  - SW3-SW0: Operation select
- Output: `led_out[15:0]` → All 16 LEDs (result on LD5-LD0)

**Contents**:

```tcl
## LED Outputs (all 16, but only lower 6 used)
set_property PACKAGE_PIN P2 [get_ports {led_out[15]}]
# ...

## Switch Inputs (all 16)
set_property PACKAGE_PIN P4 [get_ports {sw_in[15]}]
# ...
```

---

## Task 6: Code Translator (Behavioral)

**File**: [`constrs_6/6_code_translator_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_6/6_code_translator_unit.xdc)

**Ports Used**:

- Input: `sw_in[3:0]` → Lower 4 switches (7421 code input)
- Output: `led_out[15:0]` → All 16 LEDs (Excess-3 on LD3-LD0)

**Contents**:

```tcl
## LED Outputs (all 16, but only lower 4 used)
set_property PACKAGE_PIN P2 [get_ports {led_out[15]}]
# ...

## Switch Inputs (only lower 4)
set_property PACKAGE_PIN R6 [get_ports {sw_in[3]}]
set_property PACKAGE_PIN R7 [get_ports {sw_in[2]}]
set_property PACKAGE_PIN U8 [get_ports {sw_in[1]}]
set_property PACKAGE_PIN U9 [get_ports {sw_in[0]}]
```

---

## Task 7: Code Translator (Structural)

**File**: [`constrs_7/7_code_translator_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_7/7_code_translator_unit.xdc)

**Ports Used**: Same as Task 6

- Input: `sw_in[3:0]` → Lower 4 switches (7421 code input)
- Output: `led_out[15:0]` → All 16 LEDs (Excess-3 on LD3-LD0)

**Contents**: Identical to Task 6 constraint file.

---

## XDC File Format Explanation

### Basic Syntax

```tcl
set_property PROPERTY_NAME VALUE [get_ports {port_name}]
```

### Common Properties

1. **PACKAGE_PIN**: Physical pin location on FPGA package

   ```tcl
   set_property PACKAGE_PIN P2 [get_ports {led_out[15]}]
   ```

2. **IOSTANDARD**: Voltage standard for I/O
   ```tcl
   set_property IOSTANDARD LVCMOS33 [get_ports {led_out[15]}]
   ```

### Port Selection

- Single port: `[get_ports {port_name}]`
- Bit of vector: `[get_ports {vector_name[index]}]`
- Entire vector: `[get_ports {vector_name[*]}]`

---

## Usage in Vivado

1. **Add Constraints**:
   - In Vivado: Add Sources → Add or Create Constraints
   - Select appropriate `.xdc` file for the task

2. **Verify**:
   - Open "I/O Planning" view
   - Check all ports are mapped correctly
   - Verify no unconstrained ports

3. **Synthesis/Implementation**:
   - Constraints are automatically applied during synthesis
   - Check "Pin Planning" report for conflicts

---

## Notes

- All constraint files use LVCMOS33 standard (3.3V logic)
- Pin assignments match Nexys4 DDR master XDC file
- Unused LEDs/switches in some tasks don't need constraint entries
- For tasks using fewer ports, only required pins are constrained
