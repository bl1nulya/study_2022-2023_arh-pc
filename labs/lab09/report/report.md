---
## Front matter
title: "Отчёт по лабораторной работе №9"
subtitle: "Дисциплина: Архитектура компьютера"
author: "Рыжкова Ульяна Валерьевна"


## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
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
biblatex: false
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

Научиться работать с циклами и стэком.


# Выполнение лабораторной работы

1. С помощью терминала создадим подкаталог, создадим файл lab9-1.asm

![](image/1.png){ #fig:001 width=100% }

2. Изучим и запишем в него код из листинга, откомпилируем и запустим файл, заметим, что мы получили зацикливание

![](image/2.png){ #fig:002 width=100% }

3. Изменим код программы и посмотрим, что он нам выведет. Действительно количество значений удовлетворяет введенному числу, но т.к. вывод начинается с 0, он дойдет только до 4.

![](image/3.png){ #fig:003 width=100% }

4. Создадим новый файл, запишим в него предложенный код, предварительно изучив его. Было обработано 4 аргумета, 

![](image/4.png){ #fig:004 width=100% }

5. Напишем программу для вычисления суммы
    
![](image/5.png){ #fig:005 width=100% }

6. Изменим код, чтобы найти произведение введенных значений. Не забудем изменить начальное значение esi с 0 на 1.

![Умножение](image/6.png){ #fig:006 width=100% }


# Самостоятельная работа

1. Мне попался 3 вариант, напишем код и выведем результат 

![Самостоятельная работа](image/7.png){ #fig:007 width=100% }

# Выводы

В данной работе мы познакомились с циклами и научились вводить аргументы напрямую
