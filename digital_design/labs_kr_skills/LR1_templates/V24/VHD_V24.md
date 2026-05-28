# Variant 24: VHDL Lab Implementation Documentation

This document contains detailed explanations and implementation details for all 7 VHDL lab assignments for Variant 24.

## Variant 24 Parameters

From `W_VHD_V24.md`:

- **K = 2B4C** (hex) - Constant for LED display
- **I = 68** (hex) - Input operand
- **J = BE** (hex) - Expected output
- **F = 2B4C** (hex) - Boolean function
- **Operations {A,B,C,D} = { nand, -, <<<3, xor }** - ALU operations
- **G = 7421** - Input code (7421 BCD)
- **L = Excess-3** - Output code (Excess-3 BCD)

---

## Task 1: LED Constant Display

### Module: [`1_led_const.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/1_led_const.vhd)

**Purpose**: Display constant K = 2B4C on 16 LEDs.

**Implementation**:

- Uses generic `INITVALUE := X"2B4C"` for flexibility
- Behavioral architecture with direct assignment `led_out <= INITVALUE`
- 16-bit output vector

**Expected Behavior**:

- LEDs display: `0010_1011_0100_1100` (binary)
- LD15-LD12: 0010, LD11-LD8: 1011, LD7-LD4: 0100, LD3-LD0: 1100

**Pin Mapping**: See [`constrs_1/1_led_const.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_1/1_led_const.xdc)

---

## Task 2: Switch-LED Direct Connection

### Module: [`2_sw_led_unit.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/2_sw_led_unit.vhd)

**Purpose**: Pass switch states directly to LEDs (bidirectional test).

**Implementation**:

- Simple pass-through: `led_out <= sw_in`
- Generic `N := 16` for vector width
- Behavioral architecture

**Expected Behavior**:

- Each switch SW[i] controls corresponding LED LD[i]
- Switch up (1) → LED on, Switch down (0) → LED off

**Pin Mapping**: See [`constrs_2/2_sw_led_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_2/2_sw_led_unit.xdc)

---

## Task 3: Combinational Logic Unit

### Module: [`3_comb_led_unit.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/3_comb_led_unit.vhd)

**Purpose**: Compute `sw_in XOR I = J` where I=68, J=BE.

**Calculation**:

```
I = 68 (hex) = 0110_1000 (binary)
J = BE (hex) = 1011_1110 (binary)
Required sw_in = I ⊕ J = 0110_1000 ⊕ 1011_1110 = 1101_0110 = D6 (hex)
```

**Implementation**:

- Generic `INITVALUE := X"68"` (constant I)
- Operation: `int_value <= INITVALUE xor sw_in`
- Output: Lower 8 bits show result, upper 8 bits set to '0'

**Expected Behavior**:

- Set SW7-SW0 to `11010110` (D6)
- LD7-LD0 display `10111110` (BE = J)
- LD15-LD8 all OFF

**Pin Mapping**: See [`constrs_3/3_comb_led_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_3/3_comb_led_unit.xdc)

---

## Task 4: Boolean Function Implementation (Structural)

### Module: [`4_function_unit.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/4_function_unit.vhd)

**Purpose**: Implement F = 2B4C using minimal structural VHDL.

**Boolean Function Analysis**:

Truth table for F = 2B4C:

```
x3 x2 x1 x0 | F     Hex
-------------+----   ---
0  0  0  0  | 0      0
0  0  0  1  | 0      1
0  0  1  0  | 1      2  ←
0  0  1  1  | 1      3  ←
0  1  0  0  | 0      4
0  1  0  1  | 0      5
0  1  1  0  | 1      6  ←
0  1  1  1  | 1      7  ←
1  0  0  0  | 0      8
1  0  0  1  | 1      9  ←
1  0  1  0  | 0      A
1  0  1  1  | 1      B  ←
1  1  0  0  | 0      C
1  1  0  1  | 1      D  ←
1  1  1  0  | 0      E
1  1  1  1  | 0      F
```

**Karnaugh Map**:

```
      x1x0
x3x2  00  01  10  11
 00   0   0   1   1
 01   0   0   1   1
 11   0   1   0   0
 10   0   1   0   1
```

**Minimized SOP**:

- **F = x2·x1 + x3·x2·x0 + x̄3·x1·x0**

**Implementation**:

- Structural architecture using `NOT_1`, `AND_2`, `AND_N`, `OR_N` components
- Three product terms ORed together
- References helper components from root directory

**Expected Behavior**:

- Test with SW3-SW0:
  - 0010 → LD0=1 ✓
  - 0110 → LD0=1 ✓
  - 1001 → LD0=1 ✓
  - 0000 → LD0=0 ✓

**Pin Mapping**: See [`constrs_4/4_function_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_4/4_function_unit.xdc)

---

## Task 5: ALU Unit

### Module: [`5_alu_unit.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/5_alu_unit.vhd)

**Purpose**: 4-operation ALU selected by SW3-SW0.

**Operations**:

- **A (0001) = NAND**: `sw_in[15:10] nand sw_in[9:4]`
- **B (0010) = Subtract**: `sw_in[15:10] - sw_in[9:4]`
- **C (0100) = Rotate Left 3**: `sw_in[15:10] <<< 3`
- **D (1000) = XOR**: `sw_in[15:10] xor sw_in[9:4]`

**Implementation**:

- Uses `IEEE.NUMERIC_STD.ALL` for arithmetic
- `with select` multiplexer for operation selection
- Rotate left by 3: `sw_in(15:10)(2:0) & sw_in(15:10)(5:3)`
- 6-bit result on LD5-LD0, upper LEDs off

**Example Tests**:

1. **NAND**: SW3-0=0001, SW15-10=001111, SW9-4=001010 → LD5-0=111101
2. **XOR**: SW3-0=1000, SW15-10=001111, SW9-4=001010 → LD5-0=000101
3. **Rotate**: SW3-0=0100, SW15-10=101010 → LD5-0=010101

**Pin Mapping**: See [`constrs_5/5_alu_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_5/5_alu_unit.xdc)

---

## Task 6: Code Translator (Behavioral)

### Module: [`6_code_translator_unit.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/6_code_translator_unit.vhd)

**Purpose**: Convert 7421 BCD to Excess-3 code.

**Code Definitions**:

_7421 BCD (Weighted 7-4-2-1)_:
| Digit | Code |
|-------|------|
| 0 | 0000 |
| 1 | 0001 |
| 2 | 0010 |
| 3 | 0011 |
| 4 | 0100 |
| 5 | 0101 |
| 6 | 0110 |
| 7 | 1000 |
| 8 | 1001 |
| 9 | 1010 |

_Excess-3 (BCD + 3)_:
| Digit | Code |
|-------|------|
| 0 | 0011 |
| 1 | 0100 |
| 2 | 0101 |
| 3 | 0110 |
| 4 | 0111 |
| 5 | 1000 |
| 6 | 1001 |
| 7 | 1010 |
| 8 | 1011 |
| 9 | 1100 |

**Implementation**:

- Behavioral using `with select` lookup table
- 4-bit input (SW3-0) in 7421 code
- 4-bit output (LD3-0) in Excess-3 code
- Invalid codes (1011-1111) → 0000

**Expected Behavior**:

- SW=0000 (7421-0) → LD=0011 (Exc3-0)
- SW=0001 (7421-1) → LD=0100 (Exc3-1)
- SW=1000 (7421-7) → LD=1010 (Exc3-7)
- SW=1010 (7421-9) → LD=1100 (Exc3-9)

**Pin Mapping**: See [`constrs_6/6_code_translator_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_6/6_code_translator_unit.xdc)

---

## Task 7: Code Translator (Structural)

### Module: [`7_code_translator_unit.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/7_code_translator_unit.vhd)

**Purpose**: Same conversion as Task 6, but using only MUX2 and NOT gates.

**Boolean Minimization** (with don't-cares for 1011-1111):

Karnaugh maps for each output bit:

**L3 (MSB)**:

```
Minimized: L3 = G3·Ḡ2 + G2·G1
```

**L2**:

```
Minimized: L2 = G3 + G2·Ḡ1
```

**L1**:

```
Minimized: L1 = Ḡ3·Ḡ2·G1 + Ḡ3·G2·Ḡ1 + G3
```

**L0 (LSB)**:

```
L0 = 1 (always true for valid 7421 inputs)
```

**Implementation**:

- Structural architecture using only `NOT_1`, `AND_N_MUX`, `OR_N_MUX`
- `AND_N_MUX` and `OR_N_MUX` built from `MUX_2` primitives
- Each output bit implemented as minimized SOP expression
- References helper components from root directory

**Expected Behavior**:

- Same functionality as Task 6
- Schematic should show only MUX2 and NOT gates

**Pin Mapping**: See [`constrs_7/7_code_translator_unit.xdc`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/V24/constrs_7/7_code_translator_unit.xdc)

---

## Helper Components

Referenced from root directory:

- [`not_1.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/not_1.vhd) - Single bit inverter
- [`and_2.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/and_2.vhd) - 2-input AND gate
- [`and_n.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/and_n.vhd) - N-input AND gate
- [`or_n.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/or_n.vhd) - N-input OR gate
- [`mux_2.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/mux_2.vhd) - 2-to-1 multiplexer
- [`and_n_mux.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/and_n_mux.vhd) - AND built from MUX2
- [`or_n_mux.vhd`](file:///c:/Users/renuxela/my-files/bsuir/6sem/POCP/LR1_templates/or_n_mux.vhd) - OR built from MUX2

---

## Vivado Project Structure

For each task, create a Vivado project:

1. Add the task VHDL file (e.g., `1_led_const.vhd`)
2. Add all required helper component files
3. Add the corresponding constraint file from `constrs_N/` directory
4. Set target device: Artix-7 xc7a100tcsg324-1 (Nexys4 DDR)
5. Run synthesis, implementation, and generate bitstream
6. Program the FPGA and test functionality

**Note**: Tasks 4 and 7 are structural designs and will show gate-level schematics in Vivado.
