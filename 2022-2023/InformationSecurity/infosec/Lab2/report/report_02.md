---
# Front matter
title: "Отчет по лабораторной работе №2"
subtitle: "Дискреционное разграничение прав в Linux. Основные атрибуты"
author: "Асеинова Елизавета"
group: NFIbd-01-19
institute: RUDN University, Moscow, Russian Federation
date: 2022 Sep 13th

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной работы является получение практических навыков работы в консоли с атрибутами файлов, закрепление теоретических основ дискреционного разграничения доступа в современных системах с открытым кодом на базе ОС Linux. [1]

# Выполнение лабораторной работы

1. В установленной при выполнении предыдущей лабораторной работы операционной системе создана учётная запись пользователя guest1ю Выполнен вход в систему от имени пользователя.

![Создание учетной записи](images/1.png)

2. Командой pwd определила директорию, в которой нахожусь. Уточнила имя пользователя командой whoami. Уточнила имя пользователя, его группу, а также группы, куда входит пользователь, командой id. Просмотрела вывод команды groups.

![Определение директории](images/2.png)

3. Просмотрела содержимое файла /etc/passwd и нашла в нем guest1. 

![Содержание файла passwd](images/3.png)

4. Определила существующие в системе директории командой ls -l /home/. 
Проверила, какие расширенные атрибуты установлены на поддиректориях, находящихся в директории /home командой lsattr.

![Системные директории](images/4.png)

5. Создала в домашней директории поддиректорию dir1. Сняла с директории dir1 все атрибуты командой chmod 000 dir1. При попытке создания в директории dir1 файла file1 появилось запрещающее сообщение. 

![Создание поддиректории](images/5.png)

![Снятие атрибутов и попытка создания файла](images/6.png)

6. Заполнила таблицу «Установленные права и разрешённые действия», выполняя действия от имени владельца директории, определив опытным путём, какие операции разрешены, а какие нет.

![Установленные права и разрешённые действия, часть 1](images/7.png)

![Установленные права и разрешённые действия, часть 2](images/8.png)

![Установленные права и разрешённые действия, часть 3](images/9.png)

7. На основании заполненной таблицы определила те или иные минимально необходимые права для выполнения операций внутри директории.

![Минимальные права для совершения операций](images/10.png)

# Выводы

В ходе работы мы получили практические навыки работы в консоли с атрибутами файлов, закрепили теоретические основы дискреционного разграничения доступа в современных системах с открытым кодом на базе ОС Linux.

# Список литературы

1. Методические материалы курса