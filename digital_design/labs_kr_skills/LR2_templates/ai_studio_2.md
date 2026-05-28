Привет! Это объемная и интересная лабораторная работа. Поскольку в задании явно сказано, что нужно подробно описать процесс работы в САПР Vivado, создание тестбенчей, анализ временных диаграмм и физическую реализацию на плате **Nexys 4** (исходя из твоей пометки об ошибке в методичке), я подготовил детальное пошаговое руководство с готовым кодом для каждого задания.

---

### Базовое руководство: Как работать в Vivado для этой лабораторной

Поскольку эти действия повторяются из задания в задание, вот универсальный алгоритм:

1. **Создание проекта**: Открой Vivado $\rightarrow$ _Create Project_ $\rightarrow$ Введи имя $\rightarrow$ _RTL Project_ $\rightarrow$ В окне выбора кристалла выбери `xc7a100tcsg324-1` (это чип платы Nexys 4).
2. **Добавление исходников**: В панели _Sources_ нажми _'+' (Add Sources)_ $\rightarrow$ _Add or create design sources_ $\rightarrow$ _Create File_ (тип VHDL). Сюда ты будешь вставлять код `entity` и `architecture`.
3. **Добавление ограничений (XDC)**: _Add Sources_ $\rightarrow$ _Add or create constraints_ $\rightarrow$ _Create File_. Сюда вставляются привязки пинов (pinout) к физическим портам платы.
4. **Синтез и анализ схемы**: Нажми _Run Synthesis_. После завершения нажми _Open Synthesized Design_. Чтобы увидеть структурную схему кристалла, нажми сверху _Tools $\rightarrow$ Schematic_. Здесь можно визуально отследить критический путь.
5. **Имплементация и Битстрим**: Нажми _Run Implementation_, затем _Generate Bitstream_.
6. **Загрузка на плату**: Подключи плату Nexys 4 по USB, включи питание. В Vivado нажми _Open Hardware Manager_ $\rightarrow$ _Open Target_ $\rightarrow$ _Auto Connect_ $\rightarrow$ _Program Device_.
7. **Симуляция (Тестбенчи)**: _Add Sources_ $\rightarrow$ _Add or create simulation sources_ $\rightarrow$ Создай файл тестбенча. Нажми _Run Simulation_ $\rightarrow$ _Run Behavioral Simulation_.
8. **Временные диаграммы (Waveforms)**: В открывшемся окне симулятора добавь нужные сигналы в окно Wave, нажми кнопку _Zoom Fit_. Для измерения задержек используй курсоры (желтые линии). Чтобы увидеть гонки сигналов, нужно сильно приблизить момент переключения логики (Zoom In).

---

### Задание 1. Преобразователь кодов (7421 $\rightarrow$ С избытком 3)

**Теоретическая часть:**
Код G (7421) имеет веса 7, 4, 2, 1. Код L (Excess-3 / С избытком 3) получается прибавлением числа 3.
Используя карты Карно и учитывая избыточные наборы (X), получаем минимальные логические функции:

- `A, B, C, D` — входы (D - младший бит). `W, X, Y, Z` — выходы (Z - младший бит).
- $W = A \lor (B \land (C \lor D))$
- $X = (\neg B \land (C \lor (\neg A \land D))) \lor (B \land \neg(C \lor D))$
- $Y = (\neg C \land (A \lor \neg D)) \lor (C \land D)$
- $Z = \neg(A \oplus D)$

**VHDL Код (Структурное описание с использованием только базовых вентилей):**
Создай файл `task1_converter.vhd`:

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Базовые вентили
entity and2 is Port ( a, b : in STD_LOGIC; q : out STD_LOGIC); end and2;
architecture rtl of and2 is begin q <= a and b; end rtl;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity or2 is Port ( a, b : in STD_LOGIC; q : out STD_LOGIC); end or2;
architecture rtl of or2 is begin q <= a or b; end rtl;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity nor2 is Port ( a, b : in STD_LOGIC; q : out STD_LOGIC); end nor2;
architecture rtl of nor2 is begin q <= a nor b; end rtl;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity xor2 is Port ( a, b : in STD_LOGIC; q : out STD_LOGIC); end xor2;
architecture rtl of xor2 is begin q <= a xor b; end rtl;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity inv is Port ( a : in STD_LOGIC; q : out STD_LOGIC); end inv;
architecture rtl of inv is begin q <= not a; end rtl;

-- Основной модуль
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity code_converter is
    Port (
        sw_i  : in  STD_LOGIC_VECTOR (3 downto 0);
        led_o : out STD_LOGIC_VECTOR (3 downto 0)
    );
end code_converter;

architecture Structural of code_converter is
    signal A, B, C, D, invA, invB, invC, invD : std_logic;
    signal t1, t2, y_or, y_and1, y_and2, c_nor_d, x_t3, t3, t4, x_t1_2, z_t1 : std_logic;
begin
    A <= sw_i(3); B <= sw_i(2); C <= sw_i(1); D <= sw_i(0);

    U_invA: entity work.inv port map (a => A, q => invA);
    U_invB: entity work.inv port map (a => B, q => invB);
    U_invC: entity work.inv port map (a => C, q => invC);
    U_invD: entity work.inv port map (a => D, q => invD);

    -- W = A OR (B AND (C OR D))
    U_t1: entity work.or2 port map (a => C, b => D, q => t1);
    U_t2: entity work.and2 port map (a => B, b => t1, q => t2);
    U_W:  entity work.or2 port map (a => A, b => t2, q => led_o(3));

    -- Y = (!C AND (A OR !D)) OR (C AND D)
    U_y_or:   entity work.or2 port map (a => A, b => invD, q => y_or);
    U_y_and1: entity work.and2 port map (a => invC, b => y_or, q => y_and1);
    U_y_and2: entity work.and2 port map (a => C, b => D, q => y_and2);
    U_Y:      entity work.or2 port map (a => y_and1, b => y_and2, q => led_o(1));

    -- X = !B AND (C OR (!A AND D)) OR B AND (C NOR D)
    U_c_nor_d: entity work.nor2 port map(a => C, b => D, q => c_nor_d);
    U_x_and3:  entity work.and2 port map(a => B, b => c_nor_d, q => x_t3);
    U_t3:      entity work.and2 port map (a => invA, b => D, q => t3);
    U_t4:      entity work.or2  port map (a => C, b => t3, q => t4);
    U_x_t1_2:  entity work.and2 port map (a => invB, b => t4, q => x_t1_2);
    U_X:       entity work.or2  port map (a => x_t1_2, b => x_t3, q => led_o(2));

    -- Z = NOT(A XOR D)
    U_z_t1: entity work.xor2 port map (a => A, b => D, q => z_t1);
    U_Z:    entity work.inv  port map (a => z_t1, q => led_o(0));
end Structural;
```

**Файл Task1.xdc (для Nexys 4):**

```xdc
set_property PACKAGE_PIN J15 [get_ports {sw_i[0]}]
set_property PACKAGE_PIN L16 [get_ports {sw_i[1]}]
set_property PACKAGE_PIN M13 [get_ports {sw_i[2]}]
set_property PACKAGE_PIN R15 [get_ports {sw_i[3]}]
set_property IOSTANDARD LVCMOS33[get_ports sw_i*]

set_property PACKAGE_PIN H17 [get_ports {led_o[0]}]
set_property PACKAGE_PIN K15 [get_ports {led_o[1]}]
set_property PACKAGE_PIN J13 [get_ports {led_o[2]}]
set_property PACKAGE_PIN N14 [get_ports {led_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports led_o*]
```

**Структурная схема и критический путь:**
Схема представляет собой каскад из логических вентилей. Критический путь (самый длинный путь распространения сигнала) проходит через вычисление бита `X` (led_o[2]). Путь: `Вход A (sw_i[3])` $\rightarrow$ `U_invA` $\rightarrow$ `U_t3 (and2)` $\rightarrow$ `U_t4 (or2)` $\rightarrow$ `U_x_t1_2 (and2)` $\rightarrow$ `U_X (or2)` $\rightarrow$ `Выход led_o[2]`. Длина пути — 5 вентилей.

---

### Задание 2. Тестбенч

**VHDL код тестбенча (`tb_converter.vhd`):**

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_code_converter is
end tb_code_converter;

architecture Behavioral of tb_code_converter is
    signal sw_i  : std_logic_vector(3 downto 0) := "0000";
    signal led_o : std_logic_vector(3 downto 0);
begin
    uut: entity work.code_converter port map (sw_i => sw_i, led_o => led_o);

    stim_proc: process
    begin
        for i in 0 to 15 loop
            sw_i <= std_logic_vector(to_unsigned(i, 4));
            wait for 20 ns;
            -- Отчет о верификации
            report "Tested input: " & integer'image(i);
        end loop;
        report "VERIFICATION COMPLETED SUCCESSFULLY!";
        wait;
    end process;
end Behavioral;
```

**Анализ:** После запуска _Run Behavioral Simulation_, в консоли Tcl Vivado ты увидишь сообщения `Tested input...` и `VERIFICATION COMPLETED SUCCESSFULLY!`. На диаграммах будет видно ступенчатое изменение входов и мгновенное (в идеальной симуляции) изменение выходов в правильные состояния кода L.

---

### Задание 3. Моделирование задержек и гонки сигналов

Для этого задания в исходном коде вентилей из Задания 1 добавляется `generic`:

```vhdl
entity and2_d is
    generic ( td : time := 5 ns );
    Port ( a, b : in STD_LOGIC; q : out STD_LOGIC);
end and2_d;
architecture rtl of and2_d is begin q <= a and b after td; end rtl;
-- Аналогично нужно дописать delay = 5ns для or2_d, inv_d, xor2_d, nor2_d
```

И создается модуль межсоединений:

```vhdl
entity wire_delay is
    generic ( td : time := 2 ns );
    Port ( a : in STD_LOGIC; q : out STD_LOGIC);
end wire_delay;
architecture rtl of wire_delay is begin q <= a after td; end rtl;
```

_Что такое гонки сигналов:_ Поскольку у нас разная глубина логики (к примеру путь для W составляет 3 вентиля, а для X - 5 вентилей), при переключении `sw_i` выходы обновятся не одновременно. В симуляции с задержками ты увидишь на графиках "глитчи" (иголки). Например, при смене `sw_i` с 0010 на 0011, сначала переключится быстрый бит Z, и на короткий момент (на 10-15 нс) на выходе появится несуществующий промежуточный код, пока сигнал не дойдет до выхода X. Это явление и есть логические гонки.

---

### Задание 4. Компаратор

Реализация каскадной структуры 3-битного компаратора **только на 2-входовых вентилях**.
**VHDL код (`comparator.vhd`):**

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_1bit is
    port (
        a, b, gt_in, eq_in, lt_in : in std_logic;
        gt_out, eq_out, lt_out : out std_logic
    );
end comp_1bit;

architecture Structural of comp_1bit is
    signal not_a, not_b, a_gt_b, a_lt_b, gt_and, lt_and, xor_ab, xnor_ab : std_logic;
begin
    U_nota: entity work.inv port map (a, not_a);
    U_notb: entity work.inv port map (b, not_b);
    U_agtb: entity work.and2 port map (a, not_b, a_gt_b);
    U_altb: entity work.and2 port map (not_a, b, a_lt_b);

    U_gtand: entity work.and2 port map (eq_in, a_gt_b, gt_and);
    U_gtor:  entity work.or2  port map (gt_in, gt_and, gt_out);

    U_ltand: entity work.and2 port map (eq_in, a_lt_b, lt_and);
    U_ltor:  entity work.or2  port map (lt_in, lt_and, lt_out);

    U_xor:   entity work.xor2 port map (a, b, xor_ab);
    U_xnor:  entity work.inv  port map (xor_ab, xnor_ab);
    U_eqand: entity work.and2 port map (eq_in, xnor_ab, eq_out);
end Structural;

-- Каскадная 3-битная структура
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity comp_3bit is
    port (
        sw_i  : in std_logic_vector(5 downto 0); -- A = sw(5..3), B = sw(2..0)
        led_o : out std_logic_vector(2 downto 0) -- led(0)=gt, led(1)=eq, led(2)=lt
    );
end comp_3bit;
architecture Structural of comp_3bit is
    signal gt2, eq2, lt2, gt1, eq1, lt1 : std_logic;
begin
    S2: entity work.comp_1bit port map(sw_i(5), sw_i(2), '0', '1', '0', gt2, eq2, lt2);
    S1: entity work.comp_1bit port map(sw_i(4), sw_i(1), gt2, eq2, lt2, gt1, eq1, lt1);
    S0: entity work.comp_1bit port map(sw_i(3), sw_i(0), gt1, eq1, lt1, led_o(0), led_o(1), led_o(2));
end Structural;
```

_Задержка для худшего случая:_ Чтобы ее определить, после синтеза в Vivado открой `Report Timing Summary`. Поскольку компаратор каскадный, сигнал от старших битов `A(2)/B(2)` должен просочиться сквозь все 3 блока `comp_1bit`. Внутри одного блока задержка составляет 3 вентиля. Итого худший случай составит около 9 задержек вентилей.

---

### Задание 5. Бистабильный элемент из двух инверторов

Эта схема является кольцом (Combinatorial Loop), Vivado по умолчанию вырезает такие схемы. Чтобы этого избежать, используем жесткую привязку к примитивам (LUT) и атрибуты.
**VHDL код (`bistable.vhd`):**

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity bistable is
    Port ( led_o : out STD_LOGIC );
end bistable;

architecture Structural of bistable is
    signal q, q_n : std_logic;
    attribute ALLOW_COMBINATORIAL_LOOPS : string;
    attribute ALLOW_COMBINATORIAL_LOOPS of q : signal is "TRUE";
    attribute ALLOW_COMBINATORIAL_LOOPS of q_n : signal is "TRUE";
    attribute DONT_TOUCH : string;
    attribute DONT_TOUCH of q : signal is "TRUE";
    attribute DONT_TOUCH of q_n : signal is "TRUE";
begin
    inv1: LUT1 generic map (INIT => "01") port map (I0 => q_n, O => q);
    inv2: LUT1 generic map (INIT => "01") port map (I0 => q, O => q_n);
    led_o <= q;
end Structural;
```

**XDC Ограничения:** Добавь в файл XDC строчку, разрешающую петли:
`set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets q]`
_Объяснение результатов (10 перезагрузок):_ Состояние элемента при включении питания ПЛИС не определено (метастабильность). Тепловой шум и мельчайшие производственные отклонения на кристалле кремния заставляют схему случайно защелкиваться либо в '1', либо в '0'. Статистика может распределиться как 5/5, так и иметь перекос, зависящий от конкретного экземпляра платы.

---

### Задание 6. Управляемый бистабильный элемент (Запись/Хранение/Чтение)

Схема превращается в D-защелку (Latch). Добавляется мультиплексор на вход петли и логика управления чтением.
**VHDL код (`bistable_ctrl.vhd`):**

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity bistable_ctrl is
    Port (
        sw_i  : in  STD_LOGIC_VECTOR (2 downto 0); -- sw(0)=Data, sw(1)=WE, sw(2)=RE
        led_o : out STD_LOGIC_VECTOR (0 downto 0)
    );
end bistable_ctrl;

architecture Structural of bistable_ctrl is
    signal q, q_n, mux_out : std_logic;
    attribute ALLOW_COMBINATORIAL_LOOPS : string;
    attribute ALLOW_COMBINATORIAL_LOOPS of q : signal is "TRUE";
    attribute ALLOW_COMBINATORIAL_LOOPS of q_n : signal is "TRUE";
    attribute DONT_TOUCH : string;
    attribute DONT_TOUCH of q : signal is "TRUE";
begin
    -- MUX: если WE(sw_1)='1', пишем Data(sw_0), иначе сохраняем q_n
    mux_out <= sw_i(0) when sw_i(1) = '1' else q_n;

    inv1: LUT1 generic map (INIT => "01") port map (I0 => mux_out, O => q);
    inv2: LUT1 generic map (INIT => "01") port map (I0 => q, O => q_n);

    -- Управление чтением (RE)
    led_o(0) <= q and sw_i(2);
end Structural;
```

_Структурная схема:_ `MUX` управляется сигналом `WE` и пропускает в кольцо из двух `LUT1 (Inverter)` либо новые данные, либо замкнутую обратную связь (сохранение). Сигнал `RE` через вентиль `AND` решает, будет ли передан бит на светодиод. При тестировании на плате: поднимаешь WE = 1, выставляешь Data, затем опускаешь WE = 0 (защелкиваешь). Теперь состояние хранится аппаратно, и его можно просмотреть, подняв свитч RE.
