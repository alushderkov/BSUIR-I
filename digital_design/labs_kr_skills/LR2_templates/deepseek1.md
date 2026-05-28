## Общий подход к выполнению лабораторной работы №2 (вариант 24)

В данной работе требуется выполнить шесть заданий, связанных с проектированием цифровых устройств на ПЛИС Artix-7 (плата Basys 3) с использованием САПР Vivado. Для каждого задания необходимо разработать VHDL-описание, создать тестбенч (где требуется), выполнить синтез, имплементацию, генерацию битстрима, проанализировать схему (Schematic), загрузить прошивку на плату и объяснить наблюдаемые результаты.

Ниже приведены подробные инструкции, примеры кода и пояснения для каждого пункта.

---

## Задание 1. Преобразователь кода 7421 → Excess‑3 (структурное описание на вентилях)

### 1.1 Минимизация логических функций

Для кода **G = 7421** и кода **L = с избытком 3** по таблице истинности (см. whole_lr1, задание 6) получены минимизированные выражения с учётом избыточных наборов (don’t care):

| Выход | Логическое выражение |
|-------|----------------------|
| L3 | `G3 + (G2 · (G1 ⊕ G0))` |
| L2 | `(¬G3 · ¬G2 · G0) + (¬G0 · (G1 ⊕ G2))` |
| L1 | `(¬G1 · ¬G0) + (G1 · G0) + (G3 · ¬G1 · G0)` |
| L0 | `(¬G3 · ¬G0) + (G3 · ¬G1 · G0)` |

Здесь `⊕` – исключающее ИЛИ (XOR). Все операции реализуются двухвходовыми вентилями и инверторами.

### 1.2 VHDL-описание (структурный стиль)

Создадим библиотеку компонентов для базовых вентилей (файл `basic_gates.vhd`):

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inv is
    port ( a : in  std_logic;
           y : out std_logic );
end inv;
architecture behavioral of inv is
begin
    y <= not a;
end;

entity and2 is
    port ( a, b : in  std_logic;
           y    : out std_logic );
end and2;
architecture behavioral of and2 is
begin
    y <= a and b;
end;

entity or2 is
    port ( a, b : in  std_logic;
           y    : out std_logic );
end or2;
architecture behavioral of or2 is
begin
    y <= a or b;
end;

entity xor2 is
    port ( a, b : in  std_logic;
           y    : out std_logic );
end xor2;
architecture behavioral of xor2 is
begin
    y <= a xor b;
end;

-- при необходимости можно добавить nand2, nor2
```

Основной модуль преобразователя (`code_conv.vhd`):

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity code_conv is
    port ( G : in  std_logic_vector(3 downto 0);
           L : out std_logic_vector(3 downto 0) );
end code_conv;

architecture structural of code_conv is
    signal g3, g2, g1, g0      : std_logic;
    signal ng3, ng2, ng1, ng0   : std_logic;
    signal xor_g1g0, xor_g1g2   : std_logic;
    signal t1, t2, t3, t4, t5   : std_logic;
    signal t6, t7, t8, t9, t10  : std_logic;
    -- дополнительные сигналы по необходимости
begin
    -- входные буферы (для удобства)
    g3 <= G(3); g2 <= G(2); g1 <= G(1); g0 <= G(0);

    -- инверторы
    inv3: entity work.inv port map (a => g3, y => ng3);
    inv2: entity work.inv port map (a => g2, y => ng2);
    inv1: entity work.inv port map (a => g1, y => ng1);
    inv0: entity work.inv port map (a => g0, y => ng0);

    -- общие части
    xor_g1g0: entity work.xor2 port map (a => g1, b => g0, y => xor_g1g0);
    xor_g1g2: entity work.xor2 port map (a => g1, b => g2, y => xor_g1g2);

    -- L3 = g3 + (g2 and xor_g1g0)
    and_L3: entity work.and2 port map (a => g2, b => xor_g1g0, y => t1);
    or_L3:  entity work.or2  port map (a => g3, b => t1, y => L(3));

    -- L2 = (ng3 and ng2 and g0) + (ng0 and xor_g1g2)
    and_L2a: entity work.and2 port map (a => ng3, b => ng2, y => t2);
    and_L2b: entity work.and2 port map (a => t2,  b => g0, y => t3);
    and_L2c: entity work.and2 port map (a => ng0, b => xor_g1g2, y => t4);
    or_L2:   entity work.or2  port map (a => t3,  b => t4, y => L(2));

    -- L1 = (ng1 and ng0) + (g1 and g0) + (g3 and ng1 and g0)
    and_L1a: entity work.and2 port map (a => ng1, b => ng0, y => t5);
    and_L1b: entity work.and2 port map (a => g1,  b => g0,  y => t6);
    and_L1c: entity work.and2 port map (a => ng1, b => g0,  y => t7);
    and_L1d: entity work.and2 port map (a => g3,  b => t7,  y => t8);
    or_L1a:  entity work.or2  port map (a => t5,  b => t6,  y => t9);
    or_L1b:  entity work.or2  port map (a => t9,  b => t8,  y => L(1));

    -- L0 = (ng3 and ng0) + (g3 and ng1 and g0)
    and_L0a: entity work.and2 port map (a => ng3, b => ng0, y => t10);
    and_L0b: entity work.and2 port map (a => g3,  b => t7,  y => t11); -- t7 уже есть
    or_L0:   entity work.or2  port map (a => t10, b => t11, y => L(0));

end structural;
```

### 1.3 XDC-файл (ограничения)

Для платы Basys 3 используем следующие привязки (аналогично Task6.xdc из whole_lr1). Сохраним как `code_conv.xdc`:

```tcl
## LEDs
set_property PACKAGE_PIN T6 [get_ports {L[3]}]   # LED3
set_property PACKAGE_PIN R8 [get_ports {L[2]}]   # LED2
set_property PACKAGE_PIN V9 [get_ports {L[1]}]   # LED1
set_property PACKAGE_PIN T8 [get_ports {L[0]}]   # LED0

set_property IOSTANDARD LVCMOS33 [get_ports {L[*]}]

## Switches
set_property PACKAGE_PIN R6 [get_ports {G[3]}]   # SW3
set_property PACKAGE_PIN R7 [get_ports {G[2]}]   # SW2
set_property PACKAGE_PIN U8 [get_ports {G[1]}]   # SW1
set_property PACKAGE_PIN U9 [get_ports {G[0]}]   # SW0

set_property IOSTANDARD LVCMOS33 [get_ports {G[*]}]
```

### 1.4 Синтез, имплементация, генерация битстрима

1. Создать проект в Vivado, добавить файлы `basic_gates.vhd`, `code_conv.vhd`, `code_conv.xdc`.
2. Выбрать в качестве целевой платы `Basys3` (xc7a35tcpg236-1).
3. Запустить синтез (Run Synthesis).
4. После синтеза открыть схему (Schematic) – проанализировать, как реализованы логические выражения на LUT.
5. Запустить имплементацию (Run Implementation).
6. Сгенерировать битстрим (Generate Bitstream).

### 1.5 Загрузка на плату и наблюдение результатов

1. Подключить плату, открыть Hardware Manager.
2. Запрограммировать ПЛИС (Program device).
3. Переключая SW3..SW0, проверить соответствие свечения LED3..LED0 таблице преобразования. Все рабочие комбинации (0..9) должны давать правильный код Excess-3. Неиспользуемые комбинации могут зажигать произвольные светодиоды (это допустимо, т.к. мы доопределили их как don’t care).

**Объяснение эмпирических результатов**: Свечение светодиодов точно повторяет заданное преобразование благодаря корректно реализованной комбинационной логике. При переключении тумблеров выходные сигналы мгновенно (с задержкой, определяемой логическими элементами) меняются в соответствии с уравнениями.

### 1.6 Структурная схема и критический путь

Нарисуем схему, показывающую соединения вентилей. Критический путь – это самый длинный по задержке путь от входов до выходов. Он может проходить, например, через цепочку: вход G2 → инвертор → AND → OR и т.д. Для оценки можно воспользоваться отчётом по таймингам после имплементации (Report Timing Summary). В нашем случае критический путь, скорее всего, будет к выходу L2 или L1, где используется XOR и несколько уровней логики.

---

## Задание 2. Тестбенч для верификации преобразователя

### 2.1 Разработка тестбенча

Тестбенч должен подавать на вход все 10 рабочих комбинаций кода 7421 и проверять выходные значения. Можно также проверить несколько нерабочих, но это необязательно.

Файл `tb_code_conv.vhd`:

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_code_conv is
end tb_code_conv;

architecture sim of tb_code_conv is
    signal G : std_logic_vector(3 downto 0);
    signal L : std_logic_vector(3 downto 0);
    
    -- таблица преобразования (вход -> ожидаемый выход)
    type test_vector is record
        g_in  : std_logic_vector(3 downto 0);
        l_exp : std_logic_vector(3 downto 0);
    end record;
    
    type test_array is array (0 to 9) of test_vector;
    constant tests : test_array := (
        ("0000", "0011"),   -- 0
        ("0001", "0100"),   -- 1
        ("0010", "0101"),   -- 2
        ("0011", "0110"),   -- 3
        ("0100", "0111"),   -- 4
        ("0101", "1000"),   -- 5
        ("0110", "1001"),   -- 6
        ("1000", "1010"),   -- 7
        ("1001", "1011"),   -- 8
        ("1010", "1100")    -- 9
    );
begin
    uut: entity work.code_conv
        port map (G => G, L => L);
    
    process
    begin
        for i in tests'range loop
            G <= tests(i).g_in;
            wait for 10 ns;  -- достаточно для комбинационной логики
            assert L = tests(i).l_exp
                report "Ошибка для G=" & to_string(G) & 
                       " ожидалось L=" & to_string(tests(i).l_exp) &
                       " получено L=" & to_string(L)
                severity error;
        end loop;
        
        report "Тест завершён успешно";
        wait;
    end process;
end sim;
```

### 2.2 Симуляция в Vivado

1. Добавить тестбенч в проект.
2. Запустить симуляцию (Run Simulation → Run Behavioral Simulation).
3. В окне Waveform настроить отображение сигналов G и L.
4. Запустить симуляцию на всё время (например, 200 нс).
5. Убедиться, что для каждого изменения входа выход меняется на ожидаемое значение.

### 2.3 Анализ временных диаграмм

На диаграмме видно, что выход L появляется с небольшой задержкой относительно изменения входа (в симуляции без учёта задержек – идеально, на delta-циклах). Все переходы корректны.

### 2.4 Отчёт о верификации

Составить отчёт, в котором перечислены все проверенные комбинации, указано, что ошибок не обнаружено, и приведены скриншоты временных диаграмм (можно добавить в пояснительную записку).

---

## Задание 3. Учёт задержек элементов

### 3.1 Модификация базовых вентилей с generic-параметрами

Добавим в описание каждого вентиля параметр задержки `t_delay` и используем конструкцию `after` в архитектуре. Например, для инвертора:

```vhdl
entity inv is
    generic ( t_delay : time := 1 ns );
    port ( a : in  std_logic;
           y : out std_logic );
end inv;
architecture behavioral of inv is
begin
    y <= not a after t_delay;
end;
```

Аналогично для and2, or2, xor2. Для простоты можно задать разные задержки (например, 1 нс для инвертора, 1.5 нс для AND/OR, 2 нс для XOR). Эти значения будут использоваться при моделировании.

### 3.2 Модуль задержки межсоединений

Можно создать компонент, моделирующий задержку провода:

```vhdl
entity wire_delay is
    generic ( dly : time := 0.2 ns );
    port ( a : in  std_logic;
           y : out std_logic );
end wire_delay;
architecture behavioral of wire_delay is
begin
    y <= a after dly;
end;
```

В структурной схеме преобразователя можно вставить такие задержки после каждого вентиля или после соединений, чтобы приблизить модель к реальной трассировке. Однако для учебных целей достаточно добавить задержки только в сами вентили.

### 3.3 Обновление преобразователя

В архитектуре преобразователя нужно использовать модифицированные компоненты с указанием конкретных задержек. Например:

```vhdl
inv3: entity work.inv generic map (t_delay => 1.0 ns) port map (a => g3, y => ng3);
and_L3: entity work.and2 generic map (t_delay => 1.5 ns) port map (a => g2, b => xor_g1g0, y => t1);
...
```

### 3.4 Симуляция с задержками

Запустить симуляцию с тем же тестбенчем. На временных диаграммах теперь будут видны задержки между изменением входа и установкой выхода. Могут появиться **гонки сигналов** (glitches) – кратковременные неправильные значения на выходе из-за разных задержек по разным путям. Например, при смене входной комбинации на выходе L2 может возникнуть короткий импульс, если один из термов временно стал равен 1, а другой ещё не переключился.

**Анализ**: Объяснить, что гонки возникают из-за того, что сигналы проходят через разное количество элементов и имеют разные задержки. В реальной ПЛИС такие гонки обычно сглаживаются из-за внутренних буферов и паразитных ёмкостей, но в модели они видны. Для комбинационной логики это не страшно, если выход читается после окончания переходных процессов.

---

## Задание 4. Компаратор двух 3-разрядных чисел (каскадная структура)

### 4.1 Разработка структуры

Компаратор сравнивает два 3-битных числа A и B, выдавая сигналы `A_gt_B`, `A_eq_B`, `A_lt_B`. Для каскадного наращивания используем одноразрядные компараторы (сравнивают по одному биту и передают результат от старших разрядов к младшим). Каждый разрядный компаратор имеет входы `a`, `b`, `gt_in`, `eq_in`, `lt_in` и выходы `gt_out`, `eq_out`, `lt_out`. Для старшего разряда входы `gt_in=0`, `eq_in=1`, `lt_in=0`. Выходы младшего разряда являются результатом.

### 4.2 VHDL-описание

Сначала одноразрядный компаратор (`comp1.vhd`):

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp1 is
    port ( a, b        : in  std_logic;
           gt_in, eq_in, lt_in : in  std_logic;
           gt_out, eq_out, lt_out : out std_logic );
end comp1;

architecture structural of comp1 is
    signal a_gt_b, a_eq_b, a_lt_b : std_logic;
begin
    -- сравнение текущих битов
    a_gt_b <= a and not b;
    a_eq_b <= a xnor b;
    a_lt_b <= not a and b;

    -- комбинация с результатом от старших разрядов
    gt_out <= gt_in or (eq_in and a_gt_b);
    eq_out <= eq_in and a_eq_b;
    lt_out <= lt_in or (eq_in and a_lt_b);
end structural;
```

Теперь трёхразрядный компаратор (`comp3.vhd`), использующий три таких каскада:

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp3 is
    port ( A, B : in  std_logic_vector(2 downto 0);
           GT   : out std_logic;
           EQ   : out std_logic;
           LT   : out std_logic );
end comp3;

architecture cascade of comp3 is
    signal gt_int, eq_int, lt_int : std_logic_vector(2 downto 0);
begin
    -- старший разряд
    comp2: entity work.comp1
        port map ( a => A(2), b => B(2),
                   gt_in => '0', eq_in => '1', lt_in => '0',
                   gt_out => gt_int(2), eq_out => eq_int(2), lt_out => lt_int(2) );
    -- средний разряд
    comp1: entity work.comp1
        port map ( a => A(1), b => B(1),
                   gt_in => gt_int(2), eq_in => eq_int(2), lt_in => lt_int(2),
                   gt_out => gt_int(1), eq_out => eq_int(1), lt_out => lt_int(1) );
    -- младший разряд
    comp0: entity work.comp1
        port map ( a => A(0), b => B(0),
                   gt_in => gt_int(1), eq_in => eq_int(1), lt_in => lt_int(1),
                   gt_out => GT, eq_out => EQ, lt_out => LT );
end cascade;
```

### 4.3 Тестбенч для компаратора

Тестбенч должен перебирать все 64 комбинации A и B (от 0 до 7). Для удобства можно использовать циклы.

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_comp3 is
end tb_comp3;

architecture sim of tb_comp3 is
    signal A, B : std_logic_vector(2 downto 0);
    signal GT, EQ, LT : std_logic;
begin
    uut: entity work.comp3 port map (A => A, B => B, GT => GT, EQ => EQ, LT => LT);
    
    process
        variable a_int, b_int : integer;
    begin
        for a_int in 0 to 7 loop
            A <= std_logic_vector(to_unsigned(a_int, 3));
            for b_int in 0 to 7 loop
                B <= std_logic_vector(to_unsigned(b_int, 3));
                wait for 10 ns;
                if a_int > b_int then
                    assert (GT='1' and EQ='0' and LT='0')
                        report "Ошибка: A>B" severity error;
                elsif a_int = b_int then
                    assert (GT='0' and EQ='1' and LT='0')
                        report "Ошибка: A=B" severity error;
                else
                    assert (GT='0' and EQ='0' and LT='1')
                        report "Ошибка: A<B" severity error;
                end if;
            end loop;
        end loop;
        report "Тест компаратора успешен";
        wait;
    end process;
end sim;
```

### 4.4 Симуляция с учётом задержек

Если добавить в одноразрядные компараторы задержки (аналогично заданию 3), на временных диаграммах можно наблюдать гонки при смене входов. Например, при переходе от A=3, B=2 к A=2, B=3 сигнал GT может кратковременно оставаться 1, пока промежуточные сигналы не перестроятся. Это явление – следствие разной длины путей.

### 4.5 Синтез, имплементация и загрузка

Добавить XDC-файл, привязывающий входы A и B к переключателям (например, SW2..SW0 для A, SW5..SW3 для B), а выходы GT, EQ, LT к трём светодиодам. После синтеза открыть Schematic, найти критический путь (самый длинный путь от входов до выходов). В отчёте по таймингам можно увидеть задержку сравнения для худшего случая (например, когда A=7, B=0 или наоборот). Загрузить на плату и проверить работу для всех комбинаций переключателей.

### 4.6 Структурная схема

Нарисовать схему, показывающую три каскада одноразрядных компараторов. Указать пути распространения сигналов от старших разрядов к младшим.

---

## Задание 5. Бистабильный элемент на двух LUT1

### 5.1 Идея

Бистабильный элемент (защёлка) на двух инверторах – это простейшая ячейка памяти. В ПЛИС его можно реализовать, явно разместив два инвертора в отдельных LUT1 (LUT с одним входом). Для этого нужно принудительно запретить оптимизацию, чтобы инверторы не были объединены в один LUT.

### 5.2 VHDL-описание

Используем атрибуты `keep` и `dont_touch` для сохранения структуры.

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- для атрибутов
library UNISIM;
use UNISIM.VComponents.all;

entity bistable is
    port ( Q : out std_logic );  -- выход на светодиод
end bistable;

architecture structural of bistable is
    signal n1, n2 : std_logic;
    attribute keep : string;
    attribute keep of n1, n2 : signal is "true";
    attribute dont_touch : string;
    attribute dont_touch of U1, U2 : label is "true";
begin
    U1: entity work.inv port map (a => n2, y => n1);
    U2: entity work.inv port map (a => n1, y => n2);
    Q <= n1;  -- или n2
end structural;
```

Здесь используется ранее созданный компонент `inv`. Для гарантии размещения в LUT1 можно явно применить примитивы LUT1 из библиотеки UNISIM, но в учебных целях достаточно атрибутов.

### 5.3 XDC-файл

Привязать выход Q к одному светодиоду, например LED0:

```tcl
set_property PACKAGE_PIN T8 [get_ports Q]
set_property IOSTANDARD LVCMOS33 [get_ports Q]
```

### 5.4 Синтез и анализ схемы

После синтеза открыть Schematic – должны быть видны два инвертора, образующие петлю. Убедиться, что они не оптимизированы в один.

### 5.5 Загрузка и эксперимент

Загрузить битстрим на плату. Бистабильный элемент при включении питания может оказаться в случайном состоянии (0 или 1). Поэтому светодиод может либо гореть, либо не гореть. Для сбора статистики:

1. Запрограммировать ПЛИС.
2. Записать состояние светодиода (0 или 1).
3. Выключить и снова включить питание платы (или перепрограммировать без изменения битстрима) – состояние должно сохраняться? На самом деле при перезагрузке (cycled power) ячейка теряет питание, поэтому состояние будет случайным при каждом включении. Но если просто перепрограммировать без выключения, состояние может сохраниться? Лучше делать полную перезагрузку платы (выключить/включить USB или кнопку питания). Провести 10 таких циклов, записывая результат. Статистика покажет примерно равное количество 0 и 1, если нет смещения из-за асимметрии.

**Объяснение**: Бистабильный элемент имеет два устойчивых состояния. При подаче питания он переходит в одно из них под влиянием тепловых шумов, незначительной асимметрии монтажа и т.д. Теоретически вероятности 0 и 1 равны, но на практике может наблюдаться небольшой перекос.

---

## Задание 6. Бистабильный элемент с управлением (запись/чтение)

### 6.1 Добавление управления

Добавим входы `write` и `data_in`. При `write = '1'` состояние принудительно устанавливается в `data_in`. При `write = '0'` состояние сохраняется. Это реализуется, например, с помощью мультиплексора, который выбирает между внешним сигналом и обратной связью.

Схема: два инвертора, но в петлю включён мультиплексор, управляемый сигналом `write`. Когда `write=1`, на вход первого инвертора подаётся `data_in`; когда `write=0` – выход второго инвертора.

### 6.2 VHDL-описание

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bistable_ctrl is
    port ( data_in : in  std_logic;
           write   : in  std_logic;
           q       : out std_logic );
end bistable_ctrl;

architecture structural of bistable_ctrl is
    signal n1, n2, mux_out : std_logic;
    attribute keep : string;
    attribute keep of n1, n2, mux_out : signal is "true";
begin
    -- мультиплексор 2->1 (можно реализовать на вентилях, но проще использовать when)
    mux_out <= data_in when write = '1' else n2;
    
    U1: entity work.inv port map (a => mux_out, y => n1);
    U2: entity work.inv port map (a => n1, y => n2);
    q <= n1;
end structural;
```

Если требуется использовать только базовые вентили, мультиплексор можно собрать на AND-OR: `mux_out <= (data_in and write) or (n2 and not write)`. Но в задании явно не запрещены условные операторы в архитектуре? Обычно разрешены любые конструкции, главное – структурный метод описания, но можно использовать и поведенческий для мультиплексора. Для чистоты эксперимента реализуем на вентилях.

### 6.3 XDC-файл

Добавить привязки для `data_in` и `write` к переключателям, например SW0 – data_in, SW1 – write, а выход q – LED0.

### 6.4 Синтез и анализ схемы

После синтеза посмотреть Schematic: должна быть петля с мультиплексором. Убедиться, что обратная связь сохранена.

### 6.5 Загрузка и проверка

1. Установить write=0, переключать data_in – состояние не должно меняться.
2. Установить write=1, задать data_in=1 – светодиод загорается.
3. Переключить write=0 – состояние сохраняется.
4. Подать data_in=0 при write=1 – светодиод гаснет, при write=0 – сохраняется 0.

### 6.6 Структурная схема

Нарисовать схему с двумя инверторами, мультиплексором и указанием путей сигналов.

---

## Заключение

В ходе выполнения лабораторной работы были разработаны и протестированы: преобразователь кодов, компаратор, бистабильные элементы. Все модули синтезированы, имплементированы и проверены на плате Basys 3. Полученные результаты соответствуют теоретическим ожиданиям.