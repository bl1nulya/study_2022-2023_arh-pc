---
## Front matter
title: "Отчёт по лабораторной работе №11"
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

Научиться работать с программами для написания файлов.

# Выполнение лабораторной работы

1. С помощью терминала создадим подкаталог и файл lab11-1.asm, введем в него код и проверим его работу

![](image/1.png){ #fig:001 width=100% }

![](image/2.png){ #fig:002 width=100% }

2. С помощью команды chmod изменим права доступа к исполняемому файлу lab11-1, запретив его выполнение. С помощью данной команды мы ограничили доступ к данному файлу, поэтому появляется предупреждение

![](image/3.png){ #fig:003 width=100% }

3. Изменим права доступа к файлу lab11-1.asm с исходным текстом программы, добавив права на исполнение. Поскольку до этого мы запретили выполнение, но можем исполнять исходный файл, соответственно после компиляции файл запускается

![](image/4.png){ #fig:004 width=100% }

4. У меня третий вариант:

![](image/5.png){ #fig:005 width=100% }

# Самостоятельная работа

1. Напишем программу, проверим результат

![](image/7.png){ #fig:006 width=100% }


# Выводы

В данной работе мы познакомились с ограничением для файлов и с программами по изменению файлов.
