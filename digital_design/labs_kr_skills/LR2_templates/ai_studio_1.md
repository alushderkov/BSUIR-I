Привет! Эта лабораторная работа действительно сложнее, так как требует понимания не только базового написания VHDL, но и нюансов работы с САПР Vivado, моделированием (Testbenches) и временными характеристиками (задержки, гонки сигналов).

Ниже представлено полное руководство и решения для **Варианта 24** (Преобразователь из кода G (7421) в код L (С избытком 3), а также компаратор и бистабильные элементы).

---

# 📖 Подробное руководство по Vivado: Тестбенчи и Временные диаграммы

Так как в задании требуется детально описать процесс симуляции, используйте этот алгоритм для всех заданий (Задание 2, 3, 4):

### 1. Как создать и запустить Testbench:

1. В панели **Flow Navigator** слева нажмите `Add Sources`.
2. Выберите `Add or create simulation sources` -> `Next`.
3. Нажмите `Create File`, назовите его, например, `tb_task1` -> `Finish`.
4. В панели `Sources` (вкладка Simulation Sources) найдите созданный файл, кликните дважды и вставьте код тестбенча (представлен ниже).
5. Нажмите на этот файл правой кнопкой мыши и выберите **Set as Top** (сделать главным для симуляции).
6. В **Flow Navigator** нажмите **Run Simulation** -> **Run Behavioral Simulation**.

### 2. Как работать с временными диаграммами (Waveform):

1. После запуска симуляции откроется черное окно **Waveform**.
2. Чтобы уместить все графики на экране, нажмите на панели инструментов кнопку **Zoom Fit** (или Shift + F).
3. По умолчанию на графике видны только порты верхнего уровня. Если вы хотите посмотреть внутренние сигналы схемы (например, после прохождения вентилей), найдите окно **Scopes**, выберите ваш внутренний компонент (например, `UUT`), затем в окне **Objects** выделите нужные сигналы и перетащите их (Drag & Drop) на временную диаграмму.
4. После добавления новых сигналов нажмите кнопку **Restart** (стрелка назад с чертой) на верхней панели, а затем **Run All** (кнопка Play с треугольником и чертой), чтобы перезапустить симуляцию с новыми сигналами.

### 3. Как анализировать Schematic и искать Критический Путь:

1. Запустите синтез: **Run Synthesis**.
2. После завершения выберите **Open Synthesized Design**.
3. Нажмите **Tools -> Schematic** (или F4). Откроется схема вашей логики из базовых элементов кристалла (LUT, буферы).
4. **Критический путь** — это маршрут сигнала с максимальной задержкой. Чтобы его найти, нажмите **Reports -> Timing -> Report Timing Summary**.
5. В открывшемся окне перейдите в раздел `Unconstrained Paths` (или `Intra-Clock Paths`), найдите путь с параметром _Max Delay_.
6. Щёлкните по нему правой кнопкой мыши и выберите **Mark Path** -> путь на вашей Schematic окрасится в красный цвет.

---

# 🚀 Задание 1. Преобразователь кодов (7421 -> С избытком 3)

**Минимизация (теория):**
Код 7421 (G) имеет веса 7, 4, 2, 1. Разрешённые комбинации для чисел 0..9: `0000(0), 0001(1), 0010(2), 0011(3), 0100(4), 0101(5), 0110(6), 1000(7), 1001(8), 1010(9)`.
Остальные комбинации (`0111, 1011, 1100, 1101, 1110, 1111`) являются избыточными (Don't Cares). Код "С избытком 3" (L) равен десятичному значению + 3.

Используя карты Карно и ограничиваясь **только двухвходовыми вентилями** (согласно заданию), мы получаем следующие сверхминимизированные функции:

- `L3 = G3 OR (G2 AND (G1 OR G0))`
- `L2 = (!G3 AND (G2 XOR (G1 OR G0))) OR (G3 AND G1)`
- `L1 = (G1 XNOR G0) OR (G3 AND !G1)`
- `L0 = G3 XNOR G0 = !(G3 XOR G0)`

### VHDL код (Структурный метод)

Для структурного описания мы обязаны описать базовые вентили отдельно.

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- === БАЗОВЫЕ ВЕНТИЛИ ===
entity and2 is port(a, b: in std_logic; q: out std_logic); end and2;
architecture rtl of and2 is begin q <= a and b; end rtl;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity or2 is port(a, b: in std_logic; q: out std_logic); end or2;
architecture rtl of or2 is begin q <= a or b; end rtl;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity xor2 is port(a, b: in std_logic; q: out std_logic); end xor2;
architecture rtl of xor2 is begin q <= a xor b; end rtl;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity inv is port(a: in std_logic; q: out std_logic); end inv;
architecture rtl of inv is begin q <= not a; end rtl;

-- === ОСНОВНОЙ МОДУЛЬ ПРЕОБРАЗОВАТЕЛЯ ===
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity translator_g_to_l is
    Port (
        sw_i : in std_logic_vector(3 downto 0); -- Вход G (7421)
        led_o : out std_logic_vector(3 downto 0) -- Выход L (Избыток 3)
    );
end translator_g_to_l;

architecture Structural of translator_g_to_l is
    signal Y, G2_and_Y, G2_xor_Y, not_G3, term_L2_1, term_L2_2 : std_logic;
    signal G1_xor_G0, not_G1_xor_G0, not_G1, term_L1_1, G3_xor_G0 : std_logic;
begin
    -- Вспомогательный сигнал: Y = G1 OR G0
    U1: entity work.or2 port map(sw_i(1), sw_i(0), Y);

    -- L3 = G3 OR (G2 AND Y)
    U2: entity work.and2 port map(sw_i(2), Y, G2_and_Y);
    U3: entity work.or2 port map(sw_i(3), G2_and_Y, led_o(3));

    -- L2 = (!G3 AND (G2 XOR Y)) OR (G3 AND G1)
    U4: entity work.xor2 port map(sw_i(2), Y, G2_xor_Y);
    U5: entity work.inv port map(sw_i(3), not_G3);
    U6: entity work.and2 port map(not_G3, G2_xor_Y, term_L2_1);
    U7: entity work.and2 port map(sw_i(3), sw_i(1), term_L2_2);
    U8: entity work.or2 port map(term_L2_1, term_L2_2, led_o(2));

    -- L1 = !(G1 XOR G0) OR (G3 AND !G1)
    U9: entity work.xor2 port map(sw_i(1), sw_i(0), G1_xor_G0);
    U10: entity work.inv port map(G1_xor_G0, not_G1_xor_G0);
    U11: entity work.inv port map(sw_i(1), not_G1);
    U12: entity work.and2 port map(sw_i(3), not_G1, term_L1_1);
    U13: entity work.or2 port map(not_G1_xor_G0, term_L1_1, led_o(1));

    -- L0 = !(G3 XOR G0)
    U14: entity work.xor2 port map(sw_i(3), sw_i(0), G3_xor_G0);
    U15: entity work.inv port map(G3_xor_G0, led_o(0));
end Structural;
```

**Эмпирические результаты на плате:** Если подать на тумблеры (sw) валидный код 7421, на светодиодах отобразится строго +3 значения от соответствующего числа. Для избыточных входных наборов (напр. 1111) загорится непредсказуемый код, так как схема была оптимизирована с учётом безразличных состояний для сокращения количества вентилей.

---

# 🕵️‍♂️ Задание 2. Тестбенч преобразователя кодов

Создайте файл симуляции `tb_translator.vhd` и используйте инструкцию из начала, чтобы запустить верификацию.

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_translator is
end tb_translator;

architecture Behavior of tb_translator is
    signal sw_i : std_logic_vector(3 downto 0) := "0000";
    signal led_o : std_logic_vector(3 downto 0);

    -- Ожидаемые валидные комбинации
    type code_array is array (0 to 9) of std_logic_vector(3 downto 0);
    constant G_codes : code_array := ("0000", "0001", "0010", "0011", "0100", "0101", "0110", "1000", "1001", "1010");
    constant L_codes : code_array := ("0011", "0100", "0101", "0110", "0111", "1000", "1001", "1010", "1011", "1100");
begin
    UUT: entity work.translator_g_to_l port map (sw_i => sw_i, led_o => led_o);

    process begin
        -- Верификация валидных кодов с проверкой Assert
        for i in 0 to 9 loop
            sw_i <= G_codes(i);
            wait for 20 ns;
            assert led_o = L_codes(i) report "Ошибка трансляции!" severity error;
        end loop;

        -- Прогон вообще всех 16 комбинаций для наблюдения диаграмм
        for i in 0 to 15 loop
            sw_i <= std_logic_vector(to_unsigned(i, 4));
            wait for 20 ns;
        end loop;

        wait;
    end process;
end Behavior;
```

---

# ⏱ Задание 3. Вентили с задержками и Гонки сигналов

При реальной работе ПЛИС сигналы через вентили распространяются не мгновенно. Разная длина логических путей до финального вентиля `OR` может привести к _glitch'ам_ — гонкам сигналов (выбросам на графике).

**Пример модифицированных вентилей и провода (добавьте их в ваш дизайн):**

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Модуль задержки в межсоединениях
entity wire_delay is
    generic (Tpd : time := 1 ns);
    port(i : in std_logic; o : out std_logic);
end wire_delay;
architecture rtl of wire_delay is begin o <= i after Tpd; end rtl;

-- Пример обновленного вентиля с задержкой
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity and2_d is
    generic (Tpd : time := 2 ns);
    port(a, b: in std_logic; q: out std_logic);
end and2_d;
architecture rtl of and2_d is begin q <= a and b after Tpd; end rtl;
```

_Запустив симуляцию Задания 2 поверх обновленных структур с `after Tns`, вы увидите короткие игольчатые выбросы. Объяснение феномена: сигналы по более короткому логическому пути доходят до элемента быстрее, временно переключая его состояние до тех пор, пока не "добежит" запаздывающий сигнал по более длинному пути (критическому)._

---

# ⚖️ Задание 4. 3-разрядный Компаратор (Каскадная структура)

Реализация строго на двухвходовых вентилях. Сначала пишется 1-битный модуль сравнения `comp1`, а затем он собирается в каскад `comp3`.

**VHDL Код (сохраняйте в разные файлы или в один, но `comp3` сделайте верхним):**

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 1-БИТНЫЙ КОМПАРАТОР
entity comp1 is
    port (
        a, b : in std_logic;
        l_in, g_in, e_in : in std_logic; -- Входы от старшего каскада (Less, Greater, Equal)
        l_out, g_out, e_out : out std_logic
    );
end comp1;

architecture structural of comp1 is
    signal a_xor_b, a_xnor_b, not_a, not_b, a_and_not_b, not_a_and_b, term_g, term_l : std_logic;
begin
    -- Равенство (Equal): E_out = E_in AND (A XNOR B)
    U1: entity work.xor2 port map(a, b, a_xor_b);
    U2: entity work.inv port map(a_xor_b, a_xnor_b);
    U3: entity work.and2 port map(e_in, a_xnor_b, e_out);

    -- Больше (Greater): G_out = G_in OR (E_in AND (A AND !B))
    U4: entity work.inv port map(b, not_b);
    U5: entity work.and2 port map(a, not_b, a_and_not_b);
    U6: entity work.and2 port map(e_in, a_and_not_b, term_g);
    U7: entity work.or2 port map(g_in, term_g, g_out);

    -- Меньше (Less): L_out = L_in OR (E_in AND (!A AND B))
    U8: entity work.inv port map(a, not_a);
    U9: entity work.and2 port map(not_a, b, not_a_and_b);
    U10: entity work.and2 port map(e_in, not_a_and_b, term_l);
    U11: entity work.or2 port map(l_in, term_l, l_out);
end structural;

------------------------------------------------------
-- 3-БИТНЫЙ КАСКАДНЫЙ КОМПАРАТОР (Top Module)
------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp3 is
    port (
        sw_a : in std_logic_vector(2 downto 0); -- sw[5..3]
        sw_b : in std_logic_vector(2 downto 0); -- sw[2..0]
        led_l, led_g, led_e : out std_logic     -- led[2..0]
    );
end comp3;

architecture structural of comp3 is
    signal l_mid, g_mid, e_mid : std_logic_vector(2 downto 0);
begin
    -- Сборка начинается со старшего бита (MSB)
    C2: entity work.comp1 port map (sw_a(2), sw_b(2), '0', '0', '1', l_mid(2), g_mid(2), e_mid(2));
    C1: entity work.comp1 port map (sw_a(1), sw_b(1), l_mid(2), g_mid(2), e_mid(2), l_mid(1), g_mid(1), e_mid(1));
    C0: entity work.comp1 port map (sw_a(0), sw_b(0), l_mid(1), g_mid(1), e_mid(1), led_l, led_g, led_e);
end structural;
```

---

# 🔄 Задание 5. Бистабильный элемент из инверторов

В ПЛИС создать комбинаторную петлю проблематично (синтезатор попытается её удалить как ошибку). Для принудительного сохранения логики используется атрибут `dont_touch`.

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bistable is
    Port ( led_o : out std_logic );
end bistable;

architecture Behavioral of bistable is
    signal q, q_n : std_logic := '0';
    -- Запрещаем оптимизацию логики, чтобы не вырезали петлю
    attribute dont_touch : string;
    attribute dont_touch of q : signal is "true";
    attribute dont_touch of q_n : signal is "true";
begin
    q <= not q_n;
    q_n <= not q;
    led_o <= q;
end Behavioral;
```

**XDC Ограничение для этого задания:** Необходимо явно разрешить Vivado синтез петель. Добавьте в ваш XDC:
`set_property ALLOW_COMBINATORIAL_LOOPS true[get_nets q_n]`

**Объяснение результатов (сбор статистики 10 перезагрузок):**
Без внешнего инициализирующего импульса состояние, в которое "просыпается" петля инверторов, будет зависеть от гонки сигналов при подаче питания (зависит от паразитных емкостей трассировки, температуры кристалла, шума). Вы увидите, что светодиод после прошивки может либо светиться, либо не светиться псевдослучайным образом (или падать в одно предпочтительное состояние из-за асимметрии задержек в конкретном месте кристалла FPGA).

---

# 💾 Задание 6. Бистабильный элемент с управлением (Write, Keep, Read)

Мы размыкаем петлю мультиплексором (за счёт условия `when...else`), позволяя записывать данные извне.

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bistable_ctrl is
    Port (
        data_in  : in std_logic;  -- Данные (например, sw[0])
        write_en : in std_logic;  -- Запись (sw[1])
        read_en  : in std_logic;  -- Чтение (sw[2])
        led_o    : out std_logic  -- Выход (led[0])
    );
end bistable_ctrl;

architecture Behavioral of bistable_ctrl is
    signal q, q_n : std_logic;
    attribute dont_touch : string;
    attribute dont_touch of q : signal is "true";
    attribute dont_touch of q_n : signal is "true";
begin
    -- Если write_en = 1, записываем новое значение. Иначе сохраняем текущее состояние.
    q_n <= not data_in when write_en = '1' else not q;
    q <= not q_n;

    -- Вывод только при включенном режиме чтения
    led_o <= q when read_en = '1' else '0';
end Behavioral;
```

---

# 📍 Базовый XDC файл (Констрейнты для платы Basys 3)

Для имплементации этих схем на плате (Hardware Manager), создайте файл `constraints.xdc` и добавляйте туда нужные порты:

```xdc
# Тумблеры (sw_i)
set_property PACKAGE_PIN R6 [get_ports {sw_i[3]}]
set_property PACKAGE_PIN R7 [get_ports {sw_i[2]}]
set_property PACKAGE_PIN U8 [get_ports {sw_i[1]}]
set_property PACKAGE_PIN U9 [get_ports {sw_i[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {sw_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_i[1]}]
set_property IOSTANDARD LVCMOS33[get_ports {sw_i[0]}]

# Светодиоды (led_o)
set_property PACKAGE_PIN T6 [get_ports {led_o[3]}]
set_property PACKAGE_PIN R8 [get_ports {led_o[2]}]
set_property PACKAGE_PIN V9 [get_ports {led_o[1]}]
set_property PACKAGE_PIN T8[get_ports {led_o[0]}]

set_property IOSTANDARD LVCMOS33[get_ports {led_o[3]}]
set_property IOSTANDARD LVCMOS33[get_ports {led_o[2]}]
set_property IOSTANDARD LVCMOS33[get_ports {led_o[1]}]
set_property IOSTANDARD LVCMOS33[get_ports {led_o[0]}]
```
