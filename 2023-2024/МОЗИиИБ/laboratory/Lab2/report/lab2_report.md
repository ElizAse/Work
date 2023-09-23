---
## Front matter
title: "Вторая лабораторная работа. Шифры перестановки"
subtitle: "НФИмд-01-23"
author: "Асеинова Елизавета Валерьевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
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
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Цель данной работы - ознакомиться с шифрами перестановки, а также научиться применять их на практике.

# Задание

1. Реализовать маршрутное шифрование
2. Реализовать шифрование с помощью решеток
3. Реализовать шифрование с использованием таблицы Вижинера

# Теоретическое введение

Шифры перестановки преобразуют открытый текст в криптограмму путем перестановки его символов. Способ, каким при шифровании переставляются буквы открытого текста и является ключом шифра. Важным требования является равенство длин ключа исходного текста.

# Выполнение лабораторной работы

1. Произведено ознакомление с шифрами перестановки по методическим материалам курса

2. Прописан код для маршрутного шифрования на языке программирования Python. 

![Маршрутное шифрование](images/marsh.png){#fig:001 width=70%}

3. Выводим на экран результат применения.

![Результат применения 1](images/res1.png){#fig:002 width=70%}

4. Прописан код для шифрования с помощью решеток на языке программирования Python. 

![Шифрование с помощью решеток](images/resh.png){#fig:003 width=70%}

5. Выводим на экран результат применения.

![Результат применения 2](images/res2.png){#fig:004 width=70%}

6. Прописан код для шифрования с использованием таблицы Вижинера на языке программирования Python. 

![Таблица Вижинера](images/vis.png){#fig:005 width=70%}

7. Выводим на экран результат применения.

![Результат применения 3](images/res3.png){#fig:006 width=70%}

# Выводы

В рамках данной лабораторной работы было произведено ознакомление с шифрами перестановки.
Шифры были реализованы на языке программирования Python.

# Список литературы

1. Методические материалы курса
