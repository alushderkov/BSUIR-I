Implementation Plan: VHDL Lab Work Variant 24
Overview
This plan covers implementing all 7 assignments for variant 24 of the FPGA lab work, creating VHDL modules for combinational logic circuits targeting Artix-7 FPGA on Nexys4 DDR board.

Variant 24 Parameters
From 
W_VHD_V24.md
:

K = 2B4C (hex) = 0010_1011_0100_1100 (binary, 16 bits)
I = 68 (hex) = 01101000 (binary, 8 bits)
J = BE (hex) = 10111110 (binary, 8 bits)
F = 2B4C (hex) - logical function for 4 variables
Operations {A,B,C,D} = { nand, -, <<<3, xor }
G = 7421 (code)
L = С избытком 3 (Excess-3 code)
IMPORTANT

Per user requirement: Use Behavioral VHDL for all assignments except where structural approach is explicitly required (only Task 4 and Task 7). Variant 26 uses structural approach extensively, but variant 24 should be simpler and more concise.

Proposed Changes
All files will be created in the V24 directory with task number prefixes (e.g., 1_led_const.vhd).

Task 1: LED Constant Display
[NEW] 
1_led_const.vhd
Purpose: Display constant K on LEDs

Implementation:

Entity with generic INITVALUE := X"2B4C"
16-bit output port led_out
Behavioral architecture: direct assignment led_out <= INITVALUE
[NEW] 
1_led_const.xdc
Purpose: Map 16-bit LED output to Nexys4 DDR pins

Implementation: Constraint file mapping led_out[15:0] to physical LED pins with LVCMOS33 standard

Task 2: Switch-LED Direct Connection
[NEW] 
2_sw_led_unit.vhd
Purpose: Direct pass-through from switches to LEDs

Implementation:

Generic N := 16
16-bit input sw_in, 16-bit output led_out
Behavioral: led_out <= sw_in
[NEW] 
2_sw_led_unit.xdc
Purpose: Map switches and LEDs

Implementation: Constraint file for both sw_in[15:0] and led_out[15:0]

Task 3: Combinational LED Unit with Boolean Operation
[NEW] 
3_comb_led_unit.vhd
Purpose: Perform sw_in[7:0] XOR I = J to produce J on LEDs

Key Calculation:

I = 01101000
J = 10111110
Required sw_in = I XOR J = 01101000 XOR 10111110 = 11010110 (D6 hex)
Implementation:

Generic INITVALUE := X"68" (I), N := 16
8-bit input sw_in, 16-bit output led_out
Behavioral:
int_value <= INITVALUE xor sw_in
led_out <= (15 downto 8 => '0') & int_value
[NEW] 
3_comb_led_unit.xdc
Purpose: Map 8 switches and all LEDs

Task 4: Logical Function Implementation (Structural)
WARNING

This task requires structural VHDL with minimal gates using AND, OR, NOT components.

[NEW] 
4_function_unit.vhd
Purpose: Implement F = 2B4C as minimal combinational logic

Function Analysis:

F = 2B4C (hex) = 0010_1011_0100_1100 (binary)
Truth table for x_in[3:0]:
0000→0, 0001→0, 0010→1, 0011→1
0100→0, 0101→0, 0110→1, 0111→1
1000→0, 1001→1, 1010→0, 1011→1
1100→0, 1101→1, 1110→0, 1111→0
Karnaugh Map Minimization (to be performed):

Identify prime implicants
Create minimal SOP form
Implement using structural VHDL
Implementation:

4-bit input x_in, 1-bit output q_out
Structural architecture instantiating NOT_1, AND_N, OR_N components
Will reuse existing helper components from variant 26
[NEW] 
4_function_unit.xdc
Purpose: Map 4 switches to x_in, 1 LED to q_out

Task 5: ALU Unit
[NEW] 
5_alu_unit.vhd
Purpose: Implement 4 operations selected by sw_in[3:0]

Operations for Variant 24:

A = nand: sw_in[15:10] nand sw_in[9:4] (when sw_in[0]='1')
B = -: sw_in[15:10] - sw_in[9:4] (when sw_in[1]='1')
C = <<<3: Left rotate by 3 (when sw_in[2]='1')
D = xor: sw_in[15:10] xor sw_in[9:4] (when sw_in[3]='1')
Implementation:

Include IEEE.NUMERIC_STD.ALL for arithmetic
with sw_in(3 downto 0) select multiplexer
6-bit result output to led_out[5:0], upper bits to '0'
Proper implementation of rotate left by 3:
sw_in(15 downto 10)(2 downto 0) & sw_in(15 downto 10)(5 downto 3)
[NEW] 
5_alu_unit.xdc
Purpose: Map all 16 switches and LEDs

Task 6: Code Translator (Functional/Behavioral)
[NEW] 
6_code_translator_unit.vhd
Purpose: Convert from 7421 code (G) to Excess-3 code (L)

Code Definitions:

G = 7421 BCD: Weighted code (7,4,2,1)
0: 0000, 1: 0001, 2: 0010, 3: 0011, 4: 0100
5: 0101, 6: 0110, 7: 1000, 8: 1001, 9: 1010
L = Excess-3: BCD + 3
0: 0011, 1: 0100, 2: 0101, 3: 0110, 4: 0111
5: 1000, 6: 1001, 7: 1010, 8: 1011, 9: 1100
Implementation:

4-bit input sw_in[3:0] (7421 code)
4-bit output led_out[3:0] (Excess-3 code)
Behavioral: with sw_in(3 downto 0) select lookup table
Upper LED bits to '0'
[NEW] 
6_code_translator_unit.xdc
Purpose: Map lower 4 switches and LEDs

Task 7: Code Translator (Structural with MUX2 and NOT)
WARNING

This task requires structural VHDL using only MUX2 and NOT gates.

[NEW] 
7_code_translator_unit.vhd
Purpose: Same conversion as Task 6 but structural implementation

Implementation:

Minimize each output bit (L3, L2, L1, L0) using Karnaugh maps
Consider don't-care conditions for invalid 7421 codes (1011-1111)
Implement using only MUX_2 and NOT_1 components
Build AND_N_MUX, OR_N_MUX from MUX2 primitives
Structural architecture with explicit component instantiation
[NEW] 
7_code_translator_unit.xdc
Purpose: Map 4 switches and LEDs

Supporting Files
[NEW] 
VHD_V24.md
Purpose: Comprehensive documentation explaining each task for variant 24

Content:

Parameter definitions
Detailed explanation of each module
Pin mappings
Expected behavior
Calculations and boolean minimization
Structural diagrams
Following the same detailed format as 
VHD_V26.md
[NEW] 
VHD_V24_CONSTRAINTS.md
Purpose: Consolidated constraint file documentation

Content:

All XDC constraints for each of the 7 tasks
Pin mapping explanation
IOSTANDARD documentation
Following format of 
VHD_V26_CONSTRAINTS.md
Helper Components (Copied from root)
These existing components will be referenced by structural tasks:

not_1.vhd
 - Single bit inverter
and_n.vhd
 - N-input AND gate
or_n.vhd
 - N-input OR gate
mux_2.vhd
 - 2-to-1 multiplexer
and_n_mux.vhd
 - AND gate built from MUX2
or_n_mux.vhd
 - OR gate built from MUX2
Verification Plan
Automated Verification
CAUTION

This is a hardware synthesis project requiring Vivado FPGA tools and physical hardware. Automated testing requires manual steps.

Manual Synthesis Verification (for each task 1-7):

Synthesis Check:

bash
# User must perform in Vivado GUI:
# - Create new project
# - Add task VHD file(s) and constraint file
# - Run synthesis
# - Verify: no errors, check resource utilization
# - Open schematic viewer to verify logic structure
Implementation Check:

bash
# User must perform in Vivado GUI:
# - Run implementation
# - Verify: timing constraints met, no routing errors
# - Generate bitstream successfully
Hardware Verification (requires Nexys4 DDR board):

bash
# User must perform:
# - Connect Nexys4 DDR board via USB
# - Program device with generated bitstream
# - Test functionality as specified below
Manual Testing Plan
For each task, after programming the FPGA:

Task 1: LED Constant
Expected: LEDs display 0010_1011_0100_1100
Verify: LD15-LD12=0010, LD11-LD8=1011, LD7-LD4=0100, LD3-LD0=1100
Task 2: Switch-LED
Test: Toggle each switch SW0-SW15
Expected: Corresponding LED lights up
Task 3: Combinational Logic
Test: Set SW7-SW0 to 11010110 (D6)
Expected: LD7-LD0 display 10111110 (BE = J)
Verify: LD15-LD8 are all OFF
Task 4: Boolean Function
Test: Try all 16 combinations of SW3-SW0
Expected: LD0 matches truth table for F=2B4C
Examples:
SW=0010 → LD0=1
SW=0110 → LD0=1
SW=1001 → LD0=1
SW=0000 → LD0=0
Task 5: ALU
Test A (NAND): SW3-SW0=0001, SW15-SW10=001111, SW9-SW4=001010
Expected: LD5-LD0 = 111101 (NAND result)
Test D (XOR): SW3-SW0=1000, same operands
Expected: LD5-LD0 = 000101 (XOR result)
Test C (Rotate): SW3-SW0=0100, SW15-SW10=101010
Expected: LD5-LD0 = 010101 (rotated left by 3)
Task 6: Code Translator (Behavioral)
Test: Set SW3-SW0 to each 7421 code
Expected Mappings:
0000 (7421-0) → 0011 (Exc3-0)
0001 (7421-1) → 0100 (Exc3-1)
1000 (7421-7) → 1010 (Exc3-7)
1010 (7421-9) → 1100 (Exc3-9)
Task 7: Code Translator (Structural)
Test: Same as Task 6
Additional: Verify in schematic that only MUX2 and NOT gates used
User Review Required
IMPORTANT

Boolean Minimization: For Tasks 4 and 7, I will perform Karnaugh map minimization. Please review the minimized expressions to ensure they are truly minimal.

NOTE

Testing Limitation: I cannot physically test on hardware. After implementation, you will need to synthesize, program the FPGA, and verify behavior on the Nexys4 DDR board yourself.

Questions for clarification:

Should I copy the helper component files (not_1.vhd, mux_2.vhd, etc.) into the V24 directory, or reference them from the root?
For the constraint files, should they be individual files (1_led_const.xdc, 2_sw_led_unit.xdc, etc.) or combined into subdirectories like variant 26?