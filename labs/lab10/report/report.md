---
## Front matter
title: "Отчёт по лабораторной работе №10"
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

Научиться работать с отладчиком gdb.

# Выполнение лабораторной работы

1. С помощью терминала создадим подкаталог, создадим файл lab10-1.asm. Изучим и запишем в него код из листинга, откомпилируем и запустим файл

![](image/1.png){ #fig:001 width=100% }

![](image/2.png){ #fig:002 width=100% }

3. Добавим в подпрограмму ещё одну подпрограмму, проверим корректность работы

![](image/3.png){ #fig:003 width=100% }

4. Создадим новый файл, запишем в него предложенный код, запустим отладчик и в нем запустим программу

![](image/4.png){ #fig:004 width=100% }

![](image/5.png){ #fig:005 width=100% }

5. Установим брейкпоинт
    
![](image/6.png){ #fig:006 width=100% }

6. Рассмотрим отличия между синтаксисами. Ячейки памяти находятся с разных сторон от значений в них и в АТТ добавляются символы $ и %

![](image/7.png){ #fig:007 width=100% }

7. Выведем режимы псевдографики, по началу layout regs будет пустой

![](image/8.png){ #fig:008 width=100% }

8. Добавим точки остановки

![](image/9.png){ #fig:009 width=100% }

9. С помощью команды i r посмотрим содержимое регистров

![](image/10.png){ #fig:010 width=100% }

10. Теперь поменяем значение в 1 регистре на другое

![](image/12.png){ #fig:011 width=100% }

![](image/13.png){ #fig:012 width=100% }

11. Воспользуемся функцией (set) и поменяем значение

![](image/15.png){ #fig:013 width=100% }

12. Запустим программу из 9 лабораторной, установим брейкпоинт и изучим, что лежит в стэке. Шаг равен 4, потому что в 1 ячейке стэка 4 байта информации

![](image/17.png){ #fig:014 width=100% }


# Самостоятельная работа

1. Скопируем файл и изменим код

![](image/18.png){ #fig:015 width=100% }

2. Предложенный код выводит ошибку, с помощью gdb и функций X/NFU посмотрим содержание регистра умножения, ещё надо поставить на нем брэикпоинт, заметим, что в нем изменяется eax, а суммируем мы с ebx и выводим значение в ebx, поэтому заменим в суммирование ebx на eax и получим правильный ответ 25.

![Исправленный вывод](image/19.png){ #fig:016 width=100% }

![Исправленный код](image/21.png){ #fig:017 width=100% }

# Выводы

В данной работе мы познакомились с отладчиком и с помощью него научились изменять программу.
