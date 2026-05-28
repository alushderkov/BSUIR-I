# Vivado Testing Instructions for Variant 24

This guide explains how to test each of the 7 VHDL assignments in Vivado for Variant 24.

## Prerequisites

- **Vivado Design Suite** (2018.2 or later recommended)
- **Nexys4 DDR Board** with USB cable
- **Board files** installed for Nexys4 DDR

---

## General Workflow (for each task)

### Step 1: Create New Project

1. Open Vivado
2. Click **Create Project**
3. Project name: `variant24_task_N` (where N = 1-7)
4. Project location: Your choice
5. Project type: **RTL Project**
6. **Do not specify sources at this time** (uncheck)
7. Select board: **Nexys 4 DDR** (or manually select part: xc7a100tcsg324-1)
8. Click **Finish**

### Step 2: Add Source Files

#### For Tasks 1-3, 5, 6 (Behavioral):

1. Click **Add Sources** → Add or create design sources
2. Add the task VHDL file:
   - Task 1: `V24/1_led_const.vhd`
   - Task 2: `V24/2_sw_led_unit.vhd`
   - Task 3: `V24/3_comb_led_unit.vhd`
   - Task 5: `V24/5_alu_unit.vhd`
   - Task 6: `V24/6_code_translator_unit.vhd`
3. For Task 5: Also add `IEEE.NUMERIC_STD` library (already in code)

#### For Task 4 (Structural Boolean Function):

1. Add design sources:
   - `V24/4_function_unit.vhd` (top module)
   - `not_1.vhd` (helper)
   - `and_2.vhd` (helper)
   - `and_n.vhd` (helper)
   - `or_n.vhd` (helper)
2. Set `FUNCTION_UNIT` as top module

#### For Task 7 (Structural Code Translator):

1. Add design sources:
   - `V24/7_code_translator_unit.vhd` (top module)
   - `not_1.vhd` (helper)
   - `mux_2.vhd` (helper)
   - `and_n_mux.vhd` (helper)
   - `or_n_mux.vhd` (helper)
2. Set `CCODE_TRANSLATOR_UNIT` as top module

### Step 3: Add Constraint File

1. Click **Add Sources** → Add or create constraints
2. Add the corresponding XDC file:
   - Task 1: `V24/constrs_1/1_led_const.xdc`
   - Task 2: `V24/constrs_2/2_sw_led_unit.xdc`
   - Task 3: `V24/constrs_3/3_comb_led_unit.xdc`
   - Task 4: `V24/constrs_4/4_function_unit.xdc`
   - Task 5: `V24/constrs_5/5_alu_unit.xdc`
   - Task 6: `V24/constrs_6/6_code_translator_unit.xdc`
   - Task 7: `V24/constrs_7/7_code_translator_unit.xdc`

### Step 4: Run Synthesis

1. Click **Run Synthesis** (or press F11)
2. Wait for completion (typically 1-3 minutes)
3. Check for errors in Messages window
4. Click **Open Synthesized Design**
5. **View Schematic**:
   - For Tasks 4 & 7: Verify gate-level structure
   - For others: Review RTL schematic

### Step 5: Run Implementation

1. Click **Run Implementation**
2. Wait for completion (typically 2-5 minutes)
3. Check timing reports:
   - Go to **Reports** → **Timing** → **Report Timing Summary**
   - Verify no timing violations

### Step 6: Generate Bitstream

1. Click **Generate Bitstream**
2. Wait for completion (typically 3-7 minutes)
3. Bitstream file created: `*.bit`

### Step 7: Program FPGA

1. Connect Nexys4 DDR board via USB
2. Power on the board
3. Click **Open Hardware Manager**
4. Click **Auto Connect**
5. Right-click on device → **Program Device**
6. Select generated `.bit` file
7. Click **Program**

### Step 8: Hardware Testing

Refer to the test cases below for each specific task.

---

## Task-Specific Test Cases

### Task 1: LED Constant Display

**Expected Result**: LEDs display `0010_1011_0100_1100`

**Verification**:

- LD15-LD12 = `0010` (should show: OFF-OFF-ON-OFF)
- LD11-LD8 = `1011` (should show: ON-OFF-ON-ON)
- LD7-LD4 = `0100` (should show: OFF-ON-OFF-OFF)
- LD3-LD0 = `1100` (should show: ON-ON-OFF-OFF)

**Pass Criteria**: All LEDs match the pattern for K=2B4C

---

### Task 2: Switch-LED Direct Connection

**Test Procedure**:

1. Toggle each switch SW0-SW15 individually
2. Verify corresponding LED lights up

**Verification**:

- SW0 UP → LD0 ON
- SW0 DOWN → LD0 OFF
- Repeat for all 16 switches

**Pass Criteria**: Each switch controls its corresponding LED

---

### Task 3: Combinational Logic

**Test Procedure**:

1. Set all switches to 0
2. Set SW7-SW0 to `11010110` (D6 in hex)
   - SW7=1, SW6=1, SW5=0, SW4=1, SW3=0, SW2=1, SW1=1, SW0=0

**Expected Result**:

- LD7-LD0 display `10111110` (BE in hex = J)
  - LD7=1, LD6=0, LD5=1, LD4=1, LD3=1, LD2=1, LD1=1, LD0=0
- LD15-LD8 all OFF

**Pass Criteria**: Output matches J=BE when input is D6

---

### Task 4: Boolean Function

**Test Procedure**: Try all 16 input combinations

Key test cases:

| SW3-SW0 (hex) | Expected LD0 |
| ------------- | ------------ |
| 0000 (0)      | 0 (OFF)      |
| 0001 (1)      | 0 (OFF)      |
| 0010 (2)      | 1 (ON) ✓     |
| 0011 (3)      | 1 (ON) ✓     |
| 0100 (4)      | 0 (OFF)      |
| 0110 (6)      | 1 (ON) ✓     |
| 0111 (7)      | 1 (ON) ✓     |
| 1001 (9)      | 1 (ON) ✓     |
| 1011 (B)      | 1 (ON) ✓     |
| 1101 (D)      | 1 (ON) ✓     |
| 1111 (F)      | 0 (OFF)      |

**Pass Criteria**: LD0 matches F=2B4C truth table for all 16 inputs

---

### Task 5: ALU Unit

**Test A - NAND** (SW3-SW0 = 0001):

- Set SW15-SW10 = `001111` (0F)
- Set SW9-SW4 = `001010` (0A)
- Expected LD5-LD0 = `111101` (3D) - NAND result

**Test B - Subtraction** (SW3-SW0 = 0010):

- Set SW15-SW10 = `001111` (0F = 15)
- Set SW9-SW4 = `001010` (0A = 10)
- Expected LD5-LD0 = `000101` (05) - 15-10=5

**Test C - Rotate Left 3** (SW3-SW0 = 0100):

- Set SW15-SW10 = `101010` (2A)
- Expected LD5-LD0 = `010101` (15) - rotated

**Test D - XOR** (SW3-SW0 = 1000):

- Set SW15-SW10 = `001111` (0F)
- Set SW9-SW4 = `001010` (0A)
- Expected LD5-LD0 = `000101` (05) - XOR result

**Pass Criteria**: All 4 operations produce correct results

---

### Task 6 & 7: Code Translator (Both should behave identically)

**Test Procedure**: Test all valid 7421 codes

| SW3-SW0 | 7421 Digit | Expected LD3-LD0 | Excess-3Code |
| ------- | ---------- | ---------------- | ------------ |
| 0000    | 0          | 0011             | 3            |
| 0001    | 1          | 0100             | 4            |
| 0010    | 2          | 0101             | 5            |
| 0011    | 3          | 0110             | 6            |
| 0100    | 4          | 0111             | 7            |
| 0101    | 5          | 1000             | 8            |
| 0110    | 6          | 1001             | 9            |
| 1000    | 7          | 1010             | 10 (A)       |
| 1001    | 8          | 1011             | 11 (B)       |
| 1010    | 9          | 1100             | 12 (C)       |

**Additional Check for Task 7**:

- Open synthesized design schematic
- Verify only MUX2 and NOT gates are used (no direct AND/OR gates)

**Pass Criteria**:

- All 10 conversions are correct
- (Task 7 only) Schematic shows only MUX2/NOT primitives

---

## Troubleshooting

### Synthesis Errors

**"Port X not found"**:

- Check entity/port names match constraint file
- Verify capitalization

**"Component not found"**:

- Ensure all helper files are added to project
- Check component declarations match file names

**"Multiple drivers"**:

- Check no signal is assigned in multiple places

### Implementation Errors

**"Timing not met"**:

- For this lab, timing violations can usually be ignored (LEDs are slow)
- Check critical path in timing report

**"Unroutable design"**:

- Verify pin assignments in XDC are correct
- Check for conflicting constraints

### Hardware Issues

**LEDs don't light up**:

- Check board power (green LED should be on)
- Verify bitstream programmed successfully
- Try re-programming

**Wrong output**:

- Double-check switch positions (UP=1, DOWN=0)
- Verify you're reading the correct LEDs (LD0 is rightmost)
- Re-run synthesis with updated code

**Board not detected**:

- Install Digilent board files and drivers
- Check USB cable connection
- Try different USB port

---

## Success Checklist

For each task, verify:

- [ ] Synthesis completes without errors
- [ ] Implementation completes without critical warnings
- [ ] Bitstream generated successfully
- [ ] FPGA programmed without errors
- [ ] Hardware test cases all pass
- [ ] (Tasks 4 & 7) Schematic shows correct gate structure

---

## Additional Resources

- [Nexys 4 DDR Reference Manual](https://digilent.com/reference/programmable-logic/nexys-4-ddr/reference-manual)
- [Vivado Design Suite User Guide](https://www.xilinx.com/support/documentation-navigation/design-hubs/dh0014-vivado-implementation-hub.html)
- Master XDC file for Nexys4 DDR: Available from Digilent website

---

## Notes

- Each task should be tested in a separate Vivado project
- Save successful bitstream files for documentation
- Take photos/screenshots of working hardware for lab report
- Document any deviations from expected behavior
