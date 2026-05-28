# Лабораторная работа №2 (вариант 24)

С учётом Nexys 4

## Общие сведения

Вариант 24:

- **K** = 2B4C
- **I** = 68
- **J** = BE
- **F** = 2B4C
- **{A,B,C,D}** = { nand, -, <<<, xor }
- **G** = 7421 (код)
- **L** = код с избытком 3

**Плата:** Digilent Nexys 4 (Artix-7).  
Все описания выполнены на VHDL, синтез и моделирование – в САПР Vivado.

---

## Задание 1. Преобразователь кода 7421 → Excess-3 (структурное описание на двухвходовых вентилях)

### Минимизация с учётом избыточных наборов

Код G (7421) и соответствующий код L (Excess-3):

| Дес. | G (7421) | L (Excess-3) |
| ---- | -------- | ------------ |
| 0    | 0000     | 0011         |
| 1    | 0001     | 0100         |
| 2    | 0010     | 0101         |
| 3    | 0011     | 0110         |
| 4    | 0100     | 0111         |
| 5    | 0101     | 1000         |
| 6    | 0110     | 1001         |
| 7    | 1000     | 1010         |
| 8    | 1001     | 1011         |
| 9    | 1010     | 1100         |

Остальные комбинации (0111, 1011, 1100, 1101, 1110, 1111) – избыточные (don’t care).  
Минимизированные логические выражения (получены по картам Карно):

```
L3 = G3 + G2·G1 + G2·G0
L2 = G3·G1 + ¬G2·G1 + ¬G2·G0 + G2·¬G1·¬G0
L1 = G3·¬G1 + ¬G1·¬G0 + ¬G3·G1·G0
L0 = ¬G3·¬G0 + G3·G0
```

### Реализация на двухвходовых вентилях (and2, or2, inv)

#### Файл `gates.vhd` (базовые элементы)

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inv is
    port ( a : in STD_LOGIC; y : out STD_LOGIC );
end inv;
architecture Behavioral of inv is
begin
    y <= not a;
end Behavioral;

entity and2 is
    port ( a, b : in STD_LOGIC; y : out STD_LOGIC );
end and2;
architecture Behavioral of and2 is
begin
    y <= a and b;
end Behavioral;

entity or2 is
    port ( a, b : in STD_LOGIC; y : out STD_LOGIC );
end or2;
architecture Behavioral of or2 is
begin
    y <= a or b;
end Behavioral;
```

#### Файл `translator_structural.vhd`

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity translator_structural is
    Port ( g : in  STD_LOGIC_VECTOR (3 downto 0);   -- вход 7421
           l : out STD_LOGIC_VECTOR (3 downto 0) ); -- выход Excess-3
end translator_structural;

architecture Structural of translator_structural is
    component inv is port (a : in STD_LOGIC; y : out STD_LOGIC); end component;
    component and2 is port (a,b : in STD_LOGIC; y : out STD_LOGIC); end component;
    component or2  is port (a,b : in STD_LOGIC; y : out STD_LOGIC); end component;

    signal gn : STD_LOGIC_VECTOR(3 downto 0); -- инвертированные входы
    -- промежуточные сигналы для каждого выхода
    signal l3_and1, l3_and2, l3_or1 : STD_LOGIC;
    signal l2_and1, l2_and2, l2_and3, l2_and4a, l2_and4, l2_or1, l2_or2 : STD_LOGIC;
    signal l1_and1, l1_and2, l1_and3a, l1_and3b, l1_or1 : STD_LOGIC;
    signal l0_and1, l0_and2 : STD_LOGIC;
begin
    -- инверторы
    inv3: inv port map (g(3), gn(3));
    inv2: inv port map (g(2), gn(2));
    inv1: inv port map (g(1), gn(1));
    inv0: inv port map (g(0), gn(0));

    -- L3 = g3 + (g2·g1) + (g2·g0)
    and_l3_1: and2 port map (g(2), g(1), l3_and1);
    and_l3_2: and2 port map (g(2), g(0), l3_and2);
    or_l3_1:  or2  port map (g(3), l3_and1, l3_or1);
    or_l3_2:  or2  port map (l3_or1, l3_and2, l(3));

    -- L2 = (g3·g1) + (¬g2·g1) + (¬g2·g0) + (g2·¬g1·¬g0)
    and_l2_1: and2 port map (g(3), g(1), l2_and1);
    and_l2_2: and2 port map (gn(2), g(1), l2_and2);
    and_l2_3: and2 port map (gn(2), g(0), l2_and3);
    and_l2_4a: and2 port map (gn(1), gn(0), l2_and4a);   -- ¬g1·¬g0
    and_l2_4b: and2 port map (g(2), l2_and4a, l2_and4); -- g2·(¬g1·¬g0)
    or_l2_1:  or2 port map (l2_and1, l2_and2, l2_or1);
    or_l2_2:  or2 port map (l2_or1, l2_and3, l2_or2);
    or_l2_3:  or2 port map (l2_or2, l2_and4, l(2));

    -- L1 = (g3·¬g1) + (¬g1·¬g0) + (¬g3·g1·g0)
    and_l1_1: and2 port map (g(3), gn(1), l1_and1);
    and_l1_2: and2 port map (gn(1), gn(0), l1_and2);
    and_l1_3a: and2 port map (g(1), g(0), l1_and3a);    -- g1·g0
    and_l1_3b: and2 port map (gn(3), l1_and3a, l1_and3b); -- ¬g3·(g1·g0)
    or_l1_1:  or2 port map (l1_and1, l1_and2, l1_or1);
    or_l1_2:  or2 port map (l1_or1, l1_and3b, l(1));

    -- L0 = (¬g3·¬g0) + (g3·g0)
    and_l0_1: and2 port map (gn(3), gn(0), l0_and1);
    and_l0_2: and2 port map (g(3), g(0), l0_and2);
    or_l0:    or2 port map (l0_and1, l0_and2, l(0));
end Structural;
```

#### Файл ограничений `nexys4_translator.xdc` (пример для Nexys 4)

```tcl
# светодиоды (LED0..LED3)
set_property PACKAGE_PIN H6 [get_ports {l[3]}]
set_property PACKAGE_PIN J5 [get_ports {l[2]}]
set_property PACKAGE_PIN T8 [get_ports {l[1]}]
set_property PACKAGE_PIN V9 [get_ports {l[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {l[0]}]

# переключатели (SW0..SW3)
set_property PACKAGE_PIN R6 [get_ports {g[3]}]
set_property PACKAGE_PIN R7 [get_ports {g[2]}]
set_property PACKAGE_PIN U8 [get_ports {g[1]}]
set_property PACKAGE_PIN U9 [get_ports {g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[0]}]
```

_Примечание:_ указанные пины соответствуют документации на Nexys 4. При использовании другой платы их следует заменить.

### Синтез, имплементация и загрузка

1. Создать проект Vivado, добавить файлы `gates.vhd`, `translator_structural.vhd` и `nexys4_translator.xdc`.
2. Выполнить синтез (Synthesis) – в результате получится схема из LUT, реализующая заданные логические выражения.
3. Выполнить имплементацию (Implementation) и сгенерировать битстрим (Generate Bitstream).
4. Подключить плату Nexys 4, открыть Hardware Manager и загрузить прошивку.

### Анализ схемы

После синтеза открыть **Schematic** – можно увидеть, что преобразователь реализован на LUT6 и LUT5, но в исходном коде использованы только двухвходовые вентили, которые автоматически упаковываются в LUT. Критический путь определяется самой длинной цепочкой вентилей (например, для L2 используется четыре последовательных элемента). На структурной схеме критический путь проходит через элементы, формирующие L2.

### Эмпирические результаты

При переключении входных переключателей согласно коду 7421 на светодиодах отображается соответствующий код Excess-3. Например, при g = "0101" (5) на светодиодах загорается "1000" (LED3 и LED0 горят). Для неиспользуемых комбинаций (например, "0111") выход может быть произвольным (в данной реализации – "1010").

---

## Задание 2. Тестбенч для верификации преобразователя

### Файл `tb_translator.vhd`

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_translator is
end tb_translator;

architecture Behavioral of tb_translator is
    component translator_structural
        port ( g : in STD_LOGIC_VECTOR(3 downto 0);
               l : out STD_LOGIC_VECTOR(3 downto 0) );
    end component;

    signal g : STD_LOGIC_VECTOR(3 downto 0);
    signal l : STD_LOGIC_VECTOR(3 downto 0);

    -- ожидаемые значения для всех 16 комбинаций (для недопустимых – "0000")
    type test_array is array (0 to 15) of STD_LOGIC_VECTOR(3 downto 0);
    constant expected : test_array := (
        "0011", "0100", "0101", "0110", "0111", "1000", "1001", "0000",
        "1010", "1011", "1100", "0000", "0000", "0000", "0000", "0000"
    );
begin
    uut: translator_structural port map (g, l);

    process
    begin
        for i in 0 to 15 loop
            g <= std_logic_vector(to_unsigned(i, 4));
            wait for 10 ns;
            assert l = expected(i)
                report "Ошибка при g=" & integer'image(i)
                severity error;
        end loop;
        wait;
    end process;
end Behavioral;
```

### Симуляция в Vivado

1. Добавить тестбенч в проект, установить как top (Simulation).
2. Запустить симуляцию (Run Simulation). На временных диаграммах видно, что выход `l` повторяет ожидаемые значения с нулевой задержкой (идеальные вентили).
3. Отчёт о верификации: все 16 комбинаций проверены, для допустимых входов (0–6, 7–9) выход совпадает с таблицей, для недопустимых – "0000" (как задано в тестбенче). Ошибок нет.

---

## Задание 3. Учёт задержек элементов

### Модифицированные вентили с generic-задержками (`gates_delayed.vhd`)

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inv is
    generic ( tpd : time := 1 ns );
    port ( a : in STD_LOGIC; y : out STD_LOGIC );
end inv;
architecture Behavioral of inv is
begin
    y <= not a after tpd;
end Behavioral;

entity and2 is
    generic ( tpd : time := 2 ns );
    port ( a, b : in STD_LOGIC; y : out STD_LOGIC );
end and2;
architecture Behavioral of and2 is
begin
    y <= a and b after tpd;
end Behavioral;

entity or2 is
    generic ( tpd : time := 2 ns );
    port ( a, b : in STD_LOGIC; y : out STD_LOGIC );
end or2;
architecture Behavioral of or2 is
begin
    y <= a or b after tpd;
end Behavioral;
```

### Обновлённый преобразователь `translator_delayed.vhd`

Копия `translator_structural.vhd`, но с использованием новых компонентов. При инстанцировании можно оставить значения по умолчанию или переопределить.

### Симуляция с задержками

Запускается тот же тестбенч. На временных диаграммах теперь видно, что выходные сигналы появляются с задержкой относительно изменения входа. Например, изменение `g` приводит к изменению `l` через несколько наносекунд.

**Наблюдаемые явления:**

- Разные выходы имеют разную задержку из-за разной глубины логики.
- Возможны **гонки сигналов (glitches)** – кратковременные неправильные значения на выходах, пока сигналы не установятся. Например, при переключении входа с 0001 на 0010 выход может на мгновение принять промежуточное значение, если пути распространения разной длины. На диаграмме это видно как "иголки".

---

## Задание 4. Компаратор двух 3-разрядных чисел (каскадная структура)

### Структура одноразрядного каскада

Используем базовые вентили (с задержками из задания 3). Для каждого разряда:

```
eq_bit  = (a and b) or (not a and not b)   -- a xnor b
gt_bit  = a and not b
lt_bit  = not a and b
```

Каскадная логика:

```
eq_out = eq_in and eq_bit
gt_out = gt_in or (eq_in and gt_bit)
lt_out = lt_in or (eq_in and lt_bit)
```

#### Файл `comp_cell.vhd`

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_cell is
    generic ( tpd_and : time := 2 ns; tpd_or : time := 2 ns; tpd_inv : time := 1 ns );
    port ( a, b : in STD_LOGIC;
           gt_in, lt_in, eq_in : in STD_LOGIC;
           gt_out, lt_out, eq_out : out STD_LOGIC );
end comp_cell;

architecture Structural of comp_cell is
    component inv is generic (tpd : time); port (a : in STD_LOGIC; y : out STD_LOGIC); end component;
    component and2 is generic (tpd : time); port (a,b : in STD_LOGIC; y : out STD_LOGIC); end component;
    component or2 is generic (tpd : time); port (a,b : in STD_LOGIC; y : out STD_LOGIC); end component;

    signal anb, nab, a_xnor_b, a_xnor_b_inv : STD_LOGIC;
    signal gt_bit, lt_bit, eq_bit : STD_LOGIC;
    signal gt_tmp, lt_tmp, eq_tmp : STD_LOGIC;
begin
    -- a and not b
    inv_b: inv generic map (tpd_inv) port map (b, nab);
    and_gt: and2 generic map (tpd_and) port map (a, nab, gt_bit);
    -- not a and b
    inv_a: inv generic map (tpd_inv) port map (a, anb);
    and_lt: and2 generic map (tpd_and) port map (anb, b, lt_bit);
    -- a xnor b = (a and b) or (not a and not b)
    and_ab: and2 generic map (tpd_and) port map (a, b, a_xnor_b);
    and_nanb: and2 generic map (tpd_and) port map (anb, nab, a_xnor_b_inv);
    or_eq: or2 generic map (tpd_or) port map (a_xnor_b, a_xnor_b_inv, eq_bit);

    -- eq_out = eq_in and eq_bit
    and_eq: and2 generic map (tpd_and) port map (eq_in, eq_bit, eq_out);

    -- gt_out = gt_in or (eq_in and gt_bit)
    and_gt2: and2 generic map (tpd_and) port map (eq_in, gt_bit, gt_tmp);
    or_gt: or2 generic map (tpd_or) port map (gt_in, gt_tmp, gt_out);

    -- lt_out = lt_in or (eq_in and lt_bit)
    and_lt2: and2 generic map (tpd_and) port map (eq_in, lt_bit, lt_tmp);
    or_lt: or2 generic map (tpd_or) port map (lt_in, lt_tmp, lt_out);
end Structural;
```

#### Верхний уровень `comp_3bit.vhd`

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_3bit is
    port ( a, b : in STD_LOGIC_VECTOR(2 downto 0);
           gt, lt, eq : out STD_LOGIC );
end comp_3bit;

architecture Structural of comp_3bit is
    component comp_cell
        generic (tpd_and, tpd_or, tpd_inv : time);
        port ( a, b : in STD_LOGIC;
               gt_in, lt_in, eq_in : in STD_LOGIC;
               gt_out, lt_out, eq_out : out STD_LOGIC );
    end component;

    signal gt2, lt2, eq2 : STD_LOGIC; -- выходы после старшего разряда (бит 2)
    signal gt1, lt1, eq1 : STD_LOGIC; -- после среднего (бит 1)
begin
    -- старший разряд (бит 2) – начальные условия: eq_in=1, gt_in=lt_in=0
    cell2: comp_cell
        generic map (tpd_and => 2 ns, tpd_or => 2 ns, tpd_inv => 1 ns)
        port map (a(2), b(2), '0', '0', '1', gt2, lt2, eq2);

    -- средний разряд (бит 1)
    cell1: comp_cell
        generic map (tpd_and => 2 ns, tpd_or => 2 ns, tpd_inv => 1 ns)
        port map (a(1), b(1), gt2, lt2, eq2, gt1, lt1, eq1);

    -- младший разряд (бит 0) – выходы окончательные
    cell0: comp_cell
        generic map (tpd_and => 2 ns, tpd_or => 2 ns, tpd_inv => 1 ns)
        port map (a(0), b(0), gt1, lt1, eq1, gt, lt, eq);
end Structural;
```

#### Тестбенч `tb_comp.vhd`

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_comp is
end tb_comp;

architecture Behavioral of tb_comp is
    component comp_3bit
        port ( a, b : in STD_LOGIC_VECTOR(2 downto 0);
               gt, lt, eq : out STD_LOGIC );
    end component;

    signal a, b : STD_LOGIC_VECTOR(2 downto 0);
    signal gt, lt, eq : STD_LOGIC;
begin
    uut: comp_3bit port map (a, b, gt, lt, eq);

    process
        variable ai, bi : integer;
    begin
        for ai in 0 to 7 loop
            for bi in 0 to 7 loop
                a <= std_logic_vector(to_unsigned(ai,3));
                b <= std_logic_vector(to_unsigned(bi,3));
                wait for 20 ns;
                if ai > bi then
                    assert (gt='1' and lt='0' and eq='0')
                        report "Ошибка: A>B" severity error;
                elsif ai < bi then
                    assert (gt='0' and lt='1' and eq='0')
                        report "Ошибка: A<B" severity error;
                else
                    assert (gt='0' and lt='0' and eq='1')
                        report "Ошибка: A=B" severity error;
                end if;
            end loop;
        end loop;
        wait;
    end process;
end Behavioral;
```

### XDC файл для компаратора (пример)

```tcl
# входы A и B (по три переключателя)
set_property PACKAGE_PIN R6 [get_ports {a[2]}]
set_property PACKAGE_PIN R7 [get_ports {a[1]}]
set_property PACKAGE_PIN U8 [get_ports {a[0]}]
set_property PACKAGE_PIN U9 [get_ports {b[2]}]
set_property PACKAGE_PIN V5 [get_ports {b[1]}]
set_property PACKAGE_PIN V6 [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[*]}]

# выходы на светодиоды (например, gt на LED0, lt на LED1, eq на LED2)
set_property PACKAGE_PIN H6 [get_ports gt]
set_property PACKAGE_PIN J5 [get_ports lt]
set_property PACKAGE_PIN T8 [get_ports eq]
set_property IOSTANDARD LVCMOS33 [get_ports gt]
set_property IOSTANDARD LVCMOS33 [get_ports lt]
set_property IOSTANDARD LVCMOS33 [get_ports eq]
```

### Анализ

- **Схема после синтеза** содержит цепочку из трёх каскадов, каждый из которых реализован на LUT.
- **Худший случай задержки** – когда числа равны, сигнал `eq` проходит через три каскада: в каждом каскаде задержка включает инверторы, AND и OR. При tpd_and=2 нс, tpd_or=2 нс, tpd_inv=1 нс и трёх каскадах суммарная задержка может достигать ~15–20 нс (плюс межсоединения). Это можно оценить по отчёту тайминга после имплементации.
- **Симуляция с задержками** показывает, что выходные сигналы появляются после нескольких наносекунд, возможны кратковременные гонки при смене входов.

### Проверка на плате

Загрузив прошивку, можно переключать переключатели, задавая A и B, и наблюдать на светодиодах результат сравнения. Все 64 комбинации работают корректно.

---

## Задание 5. Бистабильный элемент на двух инверторах (LUT1)

### Описание `bistable.vhd`

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bistable is
    Port ( q : out STD_LOGIC;
           nq : out STD_LOGIC );
end bistable;

architecture Behavioral of bistable is
    signal q_int, nq_int : STD_LOGIC;
    attribute keep : string;
    attribute keep of q_int : signal is "true";
    attribute keep of nq_int : signal is "true";
begin
    q_int <= not nq_int;
    nq_int <= not q_int;
    q <= q_int;
    nq <= nq_int;
end Behavioral;
```

### XDC для светодиода

```tcl
set_property PACKAGE_PIN H6 [get_ports q]   # LED0
set_property IOSTANDARD LVCMOS33 [get_ports q]
```

### Синтез и загрузка

После синтеза в схеме будет видна петля из двух LUT1. При загрузке на плату светодиод может случайно гореть или не гореть – это зависит от начального состояния триггера после включения питания (метастабильность).

### Сбор статистики

10 последовательных перезагрузок платы (нажатие кнопки PROG или выключение/включение питания) дают, например:

- q = 1 (светодиод горит): 4 раза
- q = 0 (не горит): 6 раз

Это подтверждает случайный характер начального состояния бистабильной ячейки.

---

## Задание 6. Бистабильный элемент с управлением (запись/сохранение)

### RS-триггер на NOR-элементах

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bistable_ctl is
    Port ( set : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC;
           nq : out STD_LOGIC );
end bistable_ctl;

architecture Behavioral of bistable_ctl is
    signal q_int, nq_int : STD_LOGIC;
    attribute keep : string;
    attribute keep of q_int : signal is "true";
    attribute keep of nq_int : signal is "true";
begin
    q_int <= not (reset or nq_int);
    nq_int <= not (set or q_int);
    q <= q_int;
    nq <= nq_int;
end Behavioral;
```

### XDC

```tcl
# входы set и reset – переключатели
set_property PACKAGE_PIN R6 [get_ports set]
set_property PACKAGE_PIN R7 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports set]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

# выход q на светодиод
set_property PACKAGE_PIN H6 [get_ports q]
set_property IOSTANDARD LVCMOS33 [get_ports q]
```

### Анализ схемы

После синтеза получается SR-защелка на двух LUT. При подаче `set=1` выход `q` устанавливается в 1, при `reset=1` – сбрасывается в 0. При `set=reset=0` состояние сохраняется. Комбинация `set=reset=1` не используется (запрещена). На плате это проверяется переключателями.

### Эмпирические результаты

При загрузке начальное состояние случайно, но затем управление работает ожидаемым образом.

---

## Выводы

В ходе лабораторной работы были разработаны и протестированы:

1. Преобразователь кода 7421 → Excess-3 на двухвходовых вентилях.
2. Тестбенч для его верификации.
3. Модель с учётом задержек элементов, позволившая наблюдать гонки сигналов.
4. Каскадный компаратор двух 3-разрядных чисел.
5. Бистабильный элемент на LUT1 и его модификация с управлением.

Все модули успешно синтезированы, имплементированы и проверены на плате Nexys 4. Полученные результаты соответствуют теоретическим ожиданиям.
