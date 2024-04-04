<h1>Справочник по языку программирования Markdown</h1>

---

<!-- Оглавление -->
<h2>Оглавление</h2>
<nav>
    <ol>
        <li><a href="#раздел-1">HTML в Markdown</a></li>
        <li><a href="#раздел-2">Параграфы и разрывы строк (Paragraphs and line breaks)</a></li>
        <li><a href="#раздел-3">Заголовки (Headings)</a></li>
        <li><a href="#раздел-4">Выделение текста (Emphasis)</a></li>
        <ul>
            <li><a href="#подраздел-4.1">Курсив (Italic)</a></li>
            <li><a href="#подраздел-4.2">Жирный (Bold)</a></li>
            <li><a href="#подраздел-4.3">Жирный курсив (Bold and italic)</a></li>
            <li><a href="#подраздел-4.4">Зачёркнутый (Strikethrough)</a></li>
            <li><a href="#подраздел-4.5">Подчёркнутый (Underline)</a></li>
        </ul>
        <li><a href="#раздел-5">Разделители (Horizontal rules)</a></li>
        <li><a href="#раздел-6">Цитаты (Blockquotes)</a></li>
        <li><a href="#раздел-7">Спойлер (Spoiler)</a></li>
        <li><a href="#раздел-8">Списки (Lists)</a></li>
        <ul>
            <li><a href="#подраздел-8.1">Нумерованные (Ordered)</a></li>
            <li><a href="#подраздел-8.2">Ненумерованные (Unordered)</a></li>
            <li><a href="#подраздел-8.3">Чекбоксы (Checkboxes)</a></li>
            <li><a href="#подраздел-8.4">Вложенные (Nested)</a></li>
            <li><a href="#подраздел-8.5">Другие элементы внутри списков (Other)</a></li>
        </ul>
        <li><a href="#раздел-9">Ссылки (Links)</a></li>
        <ul>
            <li><a href="#подраздел-9.1">Строчные (Inline)</a></li>
            <li><a href="#подраздел-9.2">Справочные (Help)</a></li>
            <li><a href="#подраздел-9.3">Автоматические (Automatic)</a></li>
        </ul>
        <li><a href="#раздел-10">Картинки (Images)</a></li>
        <ul>
            <li><a href="#подраздел-10.1">Строчные (Inline)</a></li>
            <li><a href="#подраздел-10.2">Справочные (Help)</a></li>
        </ul>
        <li><a href="#раздел-11">Вставка кода (Code)</a></li>
        <ul>
            <li><a href="#подраздел-11.1">Одна-две пары бэктиков (One or two pairs of backticks)</a></li>
            <li><a href="#подраздел-11.2">Три и более пары бэктиков (Three or more pairs of backticks)</a></li>
            <li><a href="#подраздел-11.3">Отступ (Indentation)</a></li>
            <li><a href="#подраздел-11.4">Подсветка кода (Code highlighting)</a></li>
        </ul>
        <li><a href="#раздел-12">Таблицы (Tables)</a></li>
        <li><a href="#раздел-13">Экранирование (Escaping characters)</a></li>
        <li><a href="#раздел-14">Как использовать Markdown в мессенджерах</a></li>
        <li><a href="#раздел-15">Эмоджи (Emoji)</a></li>
	<ul>
            <li><a href="#подраздел-15.1">Запись в файл (Write to file)</a></li>
            <li><a href="#подраздел-15.2">Общий список (Common list)</a></li>
        </ul>
        <li><a href="#раздел-16">Формулы LaTex (Formulas)</a></li>
	<ul>
            <li><a href="#подраздел-16.1">Запись в файл (Write to file)</a></li>
            <li><a href="#подраздел-16.2">Общий список (Common list)</a></li>
        </ul>
    </ol>
</nav>

---

<!-- Разделы -->
<h2 id="раздел-1">HTML в Markdown</h2>

В большинстве редакторов Markdown можно использовать HTML-теги для дополнительного форматирования текста или вставки специфических 
элементов, если стандартный синтаксис Markdown не предоставляет нужной функциональности. Однако это может быть не совсем удобно и 
не совсем соответствует цели использования Markdown, которая заключается в создании простого и легко читаемого форматированного 
текста без необходимости использования HTML.

<h4>Пример:</h4>

```
Cut:
<kbd>CTRL</kbd> + <kbd>X</kbd>

Copy:
<kbd>CTRL</kbd> + <kbd>C</kbd>

Paste:
<kbd>CTRL</kbd> + <kbd>V</kbd>

Save:
<kbd>CTRL</kbd> + <kbd>S</kbd>
```

<h4>Результат:</h4>

>Cut:
><kbd>CTRL</kbd> + <kbd>X</kbd>
>
>Copy:
><kbd>CTRL</kbd> + <kbd>C</kbd>
>
>Paste:
><kbd>CTRL</kbd> + <kbd>V</kbd>
>
>Save:
><kbd>CTRL</kbd> + <kbd>S</kbd>

---

<h2 id="раздел-2">Параграфы и разрывы строк (Paragraphs and line breaks)</h2>

Чтобы поделить текст на параграфы, между ними нужно оставить пустую строку. Строка считается пустой, даже если в ней есть пробелы 
и табуляции. Если же строки находятся рядом, то они автоматически склеиваются в одну.

<h4>Пример:</h4>

```
Первый параграф

Второй параграф
Продолжение второго параграфа
```

<h4>Результат:</h4>

>Первый параграф
>
>Второй параграф
>Продолжение второго параграфа

Для переноса строки внутри одного параграфа есть три метода:

* поставить в конце строки два или больше пробела `  `
* поставить в конце строки обратную косую черту `\`
* использовать HTML-тег `<br>`

<h4>Пример:</h4>

```
Перенос с помощью пробелов  
Перенос с помощью обратного слеша\
Перенос с помощью тега <br> Последняя строка
```

<h4>Результат:</h4>

>Перенос с помощью пробелов  
>Перенос с помощью обратного слеша\
>Перенос с помощью тега <br> Последняя строка

Обратите внимание, что у каждого из методов есть свои недостатки:

* пробелы в конце строки бывает трудно заметить, и это может запутать читателя
* обратный слеш вводится в стандарте CommonMark и может поддерживаться не всеми редакторами
* HTML-теги в Markdown также поддерживаются не всеми редакторами

---

<h2 id="раздел-3">Заголовки (Headings)</h2>

В синтаксисе Markdown есть шесть уровней заголовков: от H1 (самого большого) до H6 (самого маленького). Для их выделения используют 
решётки `#`, при этом есть несколько тонкостей:

* решётки можно ставить как перед заголовком, так и с двух сторон от него (на уровень заголовка влияют только те `#`, которые находятся 
  перед ним)
* количество решёток соответствует уровню заголовка: одна для первого уровня, две для второго и так далее
* между решёткой и текстом ставится пробел

<h4>Пример:</h4>

```
# Заголовок первого уровня
## Заголовок второго уровня
### Заголовок третьего уровня
#### Заголовок четвёртого уровня
##### Заголовок пятого уровня
###### Заголовок шестого уровня
```

<h4>Результат:</h4>

># Заголовок первого уровня
>## Заголовок второго уровня
>### Заголовок третьего уровня
>#### Заголовок четвёртого уровня
>##### Заголовок пятого уровня
>###### Заголовок шестого уровня

С помощью HTML заголовки записываются в тегах от `<h1>` (самого большого) до `<h6>` (самого маленького):

<h4>Пример:</h4>

```
<h1>Заголовок первого уровня</h1>
<h2>Заголовок второго уровня</h2>
<h3>Заголовок третьего уровня</h3>
<h4>Заголовок четвёртого уровня</h4>
<h5>Заголовок пятого уровня</h5>
<h6>Заголовок шестого уровня</h6>
```

<h4>Результат:</h4>

><h1>Заголовок первого уровня</h1>
><h2>Заголовок второго уровня</h2>
><h3>Заголовок третьего уровня</h3>
><h4>Заголовок четвёртого уровня</h4>
><h5>Заголовок пятого уровня</h5>
><h6>Заголовок шестого уровня</h6>

У заголовков первого и второго уровня есть альтернативный способ выделения: на следующей строке после них нужно поставить знаки равенства 
`=` или дефисы `-`. Вот несколько правил:

* знак `=` применяется для заголовков H1
* дефис применяется для заголовков H2
* если в одной строке поставить оба знака, то работать ничего не будет
* можно ставить любое количество знаков, и на тип заголовка это не повлияет
* между заголовком и знаками не должно быть пустых строк

<h4>Пример:</h4>

```
Заголовок первого уровня
=
Заголовок первого уровня
=========
Заголовок второго уровня
-
Заголовок второго уровня
----------
```

<h4>Результат:</h4>

>Заголовок первого уровня
>=
>Заголовок первого уровня
>=========
>Заголовок второго уровня
>-
>Заголовок второго уровня
>----------

---

<h2 id="раздел-4">Выделение текста (Emphasis)</h2>

Чтобы изменить начертание текста, нужно выделить его с двух сторон спецсимволами следующим образом: `<спецсимвол>текст<спецсимвол>`.

<h3 id="подраздел-4.1">Курсив (Italic)</h3>

Для выделения текста курсивом нужно использовать одну звёздочку `*` или нижнее подчёркивание `_`.

<h4>Пример:</h4>

```
*Текст курсивом*

_Текст курсивом_
```

<h4>Результат:</h4>

>*Текст курсивом*
>
>_Текст курсивом_

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
<i>Текст курсивом</i>

<em>Текст курсивом</em>
```

<h4>Результат:</h4>

><i>Текст курсивом</i>
>
><em>Текст курсивом</em>

<h3 id="подраздел-4.2">Жирный (Bold)</h3>

Для выделения текста жирным нужно использовать две звёздочки `**` или два нижних подчёркивания `__`.

<h4>Пример:</h4>

```
**Жирный текст**

__Жирный текст__
```

<h4>Результат:</h4>

>**Жирный текст**
>
>__Жирный текст__

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
<b>Жирный текст</b>

<strong>Жирный текст</strong>
```

<h4>Результат:</h4>

><b>Жирный текст</b>
>
><strong>Жирный текст</strong>

<h3 id="подраздел-4.3">Жирный курсив (Bold and italic)</h3>

Для выделения текста сразу обоими стилями нужно использовать три звёздочки `***` или три нижних подчёркивания `___`.

<h4>Пример:</h4>

```
***Текст жирным курсивом***

___Текст жирным курсивом___
```

<h4>Результат:</h4>

>***Текст жирным курсивом***
>
>___Текст жирным курсивом___

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
<i><b>Текст жирным курсивом</b></i>

<em><strong>Текст жирным курсивом</strong></em>

<i><strong>Текст жирным курсивом</strong></i>

<em><b>Текст жирным курсивом</b></em>
```

<h4>Результат:</h4>

><b>Текст жирным курсивом</b>
>
><strong>Текст жирным курсивом</strong>
>
><i><strong>Текст жирным курсивом</strong></i>
>
><em><b>Текст жирным курсивом</b></em>

Обратите внимание, что если вы хотите выделить фрагмент внутри слова, то это корректно сработает только при использовании звёздочек.

<h4>Пример:</h4>

```
Кор*рек*тно, кор**рек**тно, кор***рек***тно

Кор<i>рек</i>тно, кор<b>рек</b>тно, кор<i><b>рек</b></i>тно, кор<i><b>рек</i></b>тно

Некор_рек_тно, некор__рек__тно, некор___рек___тно
```

<h4>Результат:</h4>

>Кор*рек*тно, кор**рек**тно, кор***рек***тно
>
>Кор<i>рек</i>тно, кор<b>рек</b>тно, кор<i><b>рек</b></i>тно, кор<i><b>рек</i></b>тно
>
>Некор_рек_тно, некор__рек__тно, некор___рек___тно

<h3 id="подраздел-4.4">Зачёркнутый (Strikethrough)</h3>

Чтобы зачеркнуть текст, нужно использовать две тильды `~~` или одна `~`. Такая опция есть только в диалекте GitHub Flavored Markdown.

<h4>Пример:</h4>

```
~Зачёркнутый текст~

~~Зачёркнутый текст~~
```

<h4>Результат:</h4>

>~Зачёркнутый текст~
>
>~~Зачёркнутый текст~~

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
<strike>Зачёркнутый текст</strike>

<del>Зачёркнутый текст</del>
```

<h4>Результат:</h4>

><strike>Зачёркнутый текст</strike>
>
><del>Зачёркнутый текст</del>

<h3 id="подраздел-4.5">Подчёркнутый (Underline)</h3>

В синтаксисе Markdown нет встроенного способа подчеркнуть текст. Но если ваш редактор поддерживает HTML, то можно использовать теги:

<h4>Пример:</h4>

```
<u>Подчёркнутый текст</u>
```

<h4>Результат:</h4>

><u>Подчёркнутый текст</u>

---

<h2 id="раздел-5">Разделители (Horizontal rules)</h2>

Чтобы оформить горизонтальный разделитель, нужно поставить три или больше специальных символа: звёздочки `*`, дефиса `-` или нижних 
подчёркивания `_`. Они должны находиться на отдельной строке, и между ними можно ставить любое количество пробелов и табуляций.

Если ваш редактор поддерживает HTML-теги, то для разметки можно также использовать тег `<hr>`.

<h4>Пример:</h4>

```
***
---
___
*	*  **
<hr>
```

<h4>Результат:</h4>

>***
>---
>___
>*	*  **
><hr>

---

<h2 id="раздел-6">Цитаты (Blockquotes)</h2>

Чтобы параграф отобразился как цитата, нужно поставить перед ним закрывающую угловую скобку `>`.

<h4>Пример:</h4>

```
Нецитатный текст
> Оформление цитатой
последовательных строк
внутри одного параграфа

Нецитатный текст
```

<h4>Результат:</h4>

Нецитатный текст

> Оформление цитатой
последовательных строк
внутри одного параграфа

Нецитатный текст

Внутрь одного блока цитаты можно поместить сразу несколько параграфов и использовать любые элементы оформления. Например, заголовки 
и другие цитаты. Чтобы сделать это, нужно поместить закрывающую угловую скобку перед началом каждой строки.

<h4>Пример:</h4>

```
> # Заголовок
> Первый параграф
>
> Второй параграф
>
> > Вложенная цитата
> > > Цитата третьего уровня
>
> Продолжение основной цитаты
```

<h4>Результат:</h4>

> # Заголовок
> Первый параграф
>
> Второй параграф
>
> > Вложенная цитата
> > > Цитата третьего уровня
>
> Продолжение основной цитаты

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
<blockquote>
    Это цитата с использованием HTML в Markdown.
</blockquote>
```

<h4>Результат:</h4>

<blockquote>
    Это цитата с использованием HTML в Markdown.
</blockquote>

---

<h2 id="раздел-7">Спойлер (Spoiler)</h2>

Если после символа цитирования поставить восклицательный знак `>!`, то цитата выведется свёрнутой, и развернуть её пользователь 
сможет, кликнув по ней.

<h4>Пример:</h4>

```
Предупреждение о спойлере
>!Текст спойлера
```

<h4>Результат:</h4>

>Предупреждение о спойлере
>>!Текст спойлера

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
<details>
    <summary>Предупреждение о спойлере</summary>
    Текст спойлера
</details>
```

<h4>Результат:</h4>

><details>
>    <summary>Предупреждение о спойлере</summary>
>    Текст спойлера
></details>

---

<h2 id="раздел-8">Списки (Lists)</h2>

В синтаксисе Markdown есть несколько видов списков. Для их оформления перед каждым пунктом нужно поставить подходящий тег и отделить 
его от текста пробелом.

<h3 id="подраздел-8.1">Нумерованные (Ordered)</h3>

Для создания нумерованного списка перед пунктами нужно поставить число с точкой. При этом нумерация в разметке ленивая. Неважно, какие 
именно числа вы напишете: Markdown пронумерует список автоматически.

<h4>Пример:</h4>

```
1. Первый пункт
2. Второй пункт
3. Третий пункт



1. Первый пункт
1. Второй пункт
1. Третий пункт



1. Первый пункт
73. Второй пункт
5. Третий пункт
```

<h4>Результат:</h4>

>1. Первый пункт
>2. Второй пункт
>3. Третий пункт
>
>
>
>1. Первый пункт
>1. Второй пункт
>1. Третий пункт
>
>
>
>1. Первый пункт
>73. Второй пункт
>5. Третий пункт

Список можно начинать и не с единицы. Для нумерации важно только число, которое стоит перед первым пунктом.

<h4>Пример:</h4>

```
27. Первый пункт
27. Второй пункт
27. Третий пункт
```

<h4>Результат:</h4>

>27. Первый пункт
>27. Второй пункт
>27. Третий пункт

Обратите внимание, что между двумя нумерованными списками, идущими подряд, нужно отбить две пустые строки. Если отбить только одну 
или две, то Markdown воспримет два списка как один. Некоторые редакторы в таком случае увеличивают интервал между пунктами.

<h4>Пример:</h4>

```
1. Первый пункт
2. Второй пункт
3. Третий пункт

1. Четвёртый пункт
2. Пятый пункт
3. Шестой пункт


1. Седмой пункт
2. Восьмой пункт
3. Девятый пункт
```

<h4>Результат:</h4>

>1. Первый пункт
>2. Второй пункт
>3. Третий пункт
>
>1. Четвёртый пункт
>2. Пятый пункт
>3. Шестой пункт
>
>
>1. Седмой пункт
>2. Восьмой пункт
>3. Девятый пункт

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
<ol>
    <li>Первый пункт</li>
    <li>Второй пункт</li>
    <li>Третий пункт</li>
</ol>
```

<h4>Результат:</h4>

><ol>
>    <li>Первый пункт</li>
>    <li>Второй пункт</li>
>    <li>Третий пункт</li>
></ol>

Тег `<ol>` означает order list.

<h3 id="подраздел-8.2">Ненумерованные (Unordered)</h3>

Для создания ненумерованного списка нужно поставить перед каждым пунктом звёздочку `*`, дефис `-` или плюс `+`.

<h4>Пример:</h4>

```
* Первый пункт
* Второй пункт
* Третий пункт
- Первый пункт
- Второй пункт
- Третий пункт
+ Первый пункт
+ Второй пункт
+ Третий пункт
```

<h4>Результат:</h4>

>* Первый пункт
>* Второй пункт
>* Третий пункт
>- Первый пункт
>- Второй пункт
>- Третий пункт
>+ Первый пункт
>+ Второй пункт
>+ Третий пункт

Обратите внимание, что Markdown относит к разным спискам пункты, перед которыми стоят разные маркеры. Даже несмотря на то, что мы 
не оставляем пустых строк между списками.

Если же два списка идут подряд, а перед их пунктами стоят одинаковые маркеры, тогда между ними нужно отбить две пустые строки (как в 
случае с нумерованными списками).

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
<ul>
    <li>Первый пункт</li>
    <li>Второй пункт</li>
    <li>Третий пункт</li>
</ul>
```

<h4>Результат:</h4>

><ul>
>    <li>Первый пункт</li>
>    <li>Второй пункт</li>
>    <li>Третий пункт</li>
></ul>

Тег `<ul>` означает unorder list.

<h3 id="подраздел-8.3">Чекбоксы (Checkboxes)</h3>

Чтобы сделать чекбоксы, нужно использовать маркированный список, но между маркером и текстом поставить `[x]` для отмеченного пункта 
и `[ ]` — для неотмеченного.

Чекбоксы доступны в диалекте GitHub Flavored Markdown (тот самый, который умеет зачёркивать текст) и поддерживаются не всеми 
редакторами Markdown. Например, нам для демонстрации примера пришлось открывать другой.

<h4>Пример:</h4>

```
- [x] Отмеченный пункт
- [ ] Неотмеченный пункт
```

<h4>Результат:</h4>

>- [x] Отмеченный пункт
>- [ ] Неотмеченный пункт

<h3 id="подраздел-8.4">Вложенные (Nested)</h3>

Чтобы создать вложенный список, нужно поставить перед его пунктами табуляцию или несколько пробелов. В Markdown одна табуляция 
соответствует четырём пробелам.

Список одного вида можно вкладывать в любой другой.

<h4>Пример:</h4>

```
1. Пункт
	1. Подпункт
		1. Подподпункт

- Пункт
	- Подпункт
		- Подподпункт


1. Пункт
	- Подпункт
		* Подподпункт

+ Пункт
	1. Подпункт

- Пункт
  - [x] Отмеченный подпункт
  - [ ] Неотмеченный подпункт
    1. Подподпункт
```

<h4>Результат:</h4>

>1. Пункт
>    1. Подпункт
>        1. Подподпункт
>
>- Пункт
>    - Подпункт
>        - Подподпункт
>
>
>1. Пункт
>    - Подпункт
>        * Подподпункт
>
>+ Пункт
>    1. Подпункт
>
>- Пункт
>  - [x] Отмеченный подпункт
>  - [ ] Неотмеченный подпункт
>    1. Подподпункт

На самом деле количество пробелов, которые нужно поставить для корректного отступа, рассчитывается чуть сложнее. Берётся количество 
символов в маркере (один для `*`, `-` и `+`, два для `1.`, три для `10.`), и к нему прибавляется любое число от 1 до 4.

Таким образом, если в маркере 1 символ, нужно поставить от 2 до 5 пробелов, если 2 символа — от 3 до 6, если 3 символа — от 4 до 7.

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
<ul>
    <li>Пункт 1</li>
    <ul>
        <li>Подподпункт 1.1</li>
        <li>Подподпункт 1.2</li>
    </ul>
    <li>Пункт 2</li>
</ul>
```

<h4>Результат:</h4>

><ul>
>    <li>Пункт 1</li>
>    <ul>
>        <li>Подподпункт 1.1</li>
>        <li>Подподпункт 1.2</li>
>    </ul>
>    <li>Пункт 2</li>
></ul>

<h3 id="подраздел-8.5">Другие элементы внутри списков (Other)</h3>

В пункты списков можно добавлять другие элементы оформления. Например, параграфы или цитаты. Для этого нужно сделать отступ, как 
если бы вы добавляли вложенный список.

<h4>Пример:</h4>

```
1. Первый пункт
	> Цитата внутри первого пункта
1. Второй пункт
 	
    Параграф внутри второго пункта
1. Третий пункт
```

<h4>Результат:</h4>

>1. Первый пункт
>	> Цитата внутри первого пункта
>1. Второй пункт
> 	
>    Параграф внутри второго пункта
>1. Третий пункт

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
<ul>
    <li>Пункт 1</li>
    <blockquote>
        Цитата внутри первого пункта
    </blockquote>
    <li>Пункт 2</li>
    <p>
        Параграф внутри второго пункта
    </p>
    <li>Пункт 3</li>
</ul>
```

<h4>Результат:</h4>

><ul>
>    <li>Пункт 1</li>
>    <blockquote>
>        Цитата внутри первого пункта
>    </blockquote>
>    <li>Пункт 2</li>
>    <p>
>        Параграф внутри второго пункта
>    </p>
>    <li>Пункт 3</li>
></ul>

---

<h2 id="раздел-9">Ссылки (Links)</h2>

Markdown предлагает 3 стиля разметки ссылок: **строчный**, **справочный** и **автоматический**.

<h3 id="подраздел-9.1">Строчные (Inline)</h3>

Чтобы оформить ссылкой часть текста, используется такой синтаксис: `[текст](ссылка)`. Можно сделать всплывающую подсказку при наведении 
курсора. Для этого в круглых скобках после ссылки нужно поставить пробел и написать текст подсказки в кавычках `[текст](ссылка 
"подсказка")`.

<h4>Пример:</h4>

```
[GitHub Account](https://github.com/BogdanKlimov11) без подсказки

[GitHub Account](https://github.com/BogdanKlimov11 "Всплывающая подсказка") с подсказкой
```

<h4>Результат:</h4>

>[GitHub Account](https://github.com/BogdanKlimov11) без подсказки
>
>[GitHub Account](https://github.com/BogdanKlimov11 "Всплывающая подсказка") с подсказкой

<h3 id="подраздел-9.2">Справочные (Help)</h3>

Ещё один способ оформить ссылку — справочный. Он работает как сноски в книгах: `[текст][имя сноски]`. При таком способе организации 
ссылок в конце документа нужно также написать и оформить саму сноску: `[имя сноски]: ссылка`. При желании после ссылки можно добавить 
подсказку — точно так же, как в предыдущем методе.

Имя сноски может быть любым сочетанием символов: цифрами, буквами и даже знаками препинания. На одну и ту же сноску в тексте можно 
ссылаться сколько угодно раз.

Ссылки, оформленные справочным методом, выглядят и работают точно так же, как и в предыдущем способе. Сами сноски в отформатированном 
документе не отображаются.

<h4>Пример:</h4>

```
[Без подсказки][1]

[С подсказкой][2]

[Раздел «Repositories»][repo]



[1]: https://github.com/BogdanKlimov11

[2]: https://github.com/BogdanKlimov11 "Всплывающая подсказка"

[repo]: https://github.com/BogdanKlimov11?tab=repositories
```

<h4>Результат:</h4>

>[Без подсказки][link1]
>
>[С подсказкой][link2]
>
>[Раздел «Repositories»][repo]
>
>
>
>[link1]: https://github.com/BogdanKlimov11
>
>[link2]: https://github.com/BogdanKlimov11 "Всплывающая подсказка"
>
>[repo]: https://github.com/BogdanKlimov11?tab=repositories

<h3 id="подраздел-9.3">Автоматические (Automatic)</h3>

Markdown позволяет использовать упрощённый вариант для вставки ссылок, для этого нужно просто обернуть ссылку треугольными скобками 
`<ссылка>`.

Можно вставлять адреса электронной почты `<email>`, тогда мы автоматически получим ссылку типа `mailto:`.

Несмотря на простоту, он не является основным и был добавлен только в спецификации CommonMark.

<h4>Пример:</h4>

```
<https://github.com/BogdanKlimov11>

<bogdanklimov11@gmail.com>
```

<h4>Результат:</h4>

><https://github.com/BogdanKlimov11>
>
><bogdanklimov11@gmail.com>

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
Без подсказки
<a href="https://github.com/BogdanKlimov11">GitHub Account</a>

С подсказкой
<a href="https://github.com/BogdanKlimov11" title="Всплывающая подсказка">GitHub Account</a>
```

<h4>Результат:</h4>

>Без подсказки
><a href="https://github.com/BogdanKlimov11">GitHub Account</a>
>
>С подсказкой
><a href="https://github.com/BogdanKlimov11" title="Всплывающая подсказка">GitHub Account</a>

---

<h2 id="раздел-10">Картинки (Images)</h2>

Конструкции для вставки изображений очень похожи на те, что используются для ссылок. Предлагается 2 стиля разметки: строчный и 
справочный.

<h3 id="подраздел-10.1">Строчные (Inline)</h3>

Изображения в Markdown оформляются по принципу, схожему с принципом оформления ссылкок, только перед квадратными скобками нужно 
поставить восклицательный знак: `![текст](путь к изображению)`. Здесь также можно сделать всплывающую подсказку `![текст](путь к 
изображению "подсказка")`.

<h4>Пример:</h4>

```
Без подсказки
![Novosibirsk Technopark](https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/1edd6030-a0f6-43ac-ad44-e06cdedcd763)

С подсказкой
![Picture of NSU](https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/3bd514d0-e83f-4738-91d4-5f693777f90b "NSU")
```

<h4>Результат:</h4>

>Без подсказки
>![Novosibirsk Technopark](https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/1edd6030-a0f6-43ac-ad44-e06cdedcd763)
>
>С подсказкой
>![Picture of NSU](https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/3bd514d0-e83f-4738-91d4-5f693777f90b "NSU")

<h3 id="подраздел-10.2">Справочные (Help)</h3>

Можно использовать и справочный метод: `![текст][имя сноски]`. Сноски оформляются так же, как и в ссылках: `[имя сноски]: путь к 
изображению`, — в них тоже можно добавлять подсказки `[имя сноски]: путь к изображению "подсказка"`.

<h4>Пример:</h4>

```
Без подсказки
![Opera and Ballet Theatre][image1]

С подсказкой
![Flotilia][image2]



[image1]: https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/7fbd1f5d-cf25-4888-a900-e6f33f6b6bda

[image2]: https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/0264b60c-4c49-4ead-affa-4db4dc2e606e "Residential complex"
```

<h4>Результат:</h4>

>Без подсказки
>![Opera and Ballet Theatre][image1]
>
>С подсказкой
>![Flotilia][image2]
>
>
>
>[image1]: https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/ae1dd30d-6304-42ad-8926-9a30710d236d
>
>[image2]: https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/0264b60c-4c49-4ead-affa-4db4dc2e606e "Residential complex"

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
Без подсказки

<img src="https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/696d22ce-38d7-4c2f-9391-d5a1ef63cd16" alt="Novosibirsk Arena">

С подсказкой

<img src="https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/ce26d88f-ca37-4c64-8627-0f237b6ab35d" alt="Bugrinsky Bridge" title="Bridge">
```

<h4>Результат:</h4>

>Без подсказки
>
><img src="https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/696d22ce-38d7-4c2f-9391-d5a1ef63cd16" alt="Novosibirsk Arena" width="100%" height="auto">
>
>С подсказкой
>
><img src="https://github.com/BogdanKlimov11/Markdown_course/assets/136115919/ce26d88f-ca37-4c64-8627-0f237b6ab35d" alt="Bugrinsky Bridge" title="Bridge" width="100%" height="auto">

---

<h2 id="раздел-11">Вставка кода (Code)</h2>

В Markdown есть несколько способов выделить исходный код:

* если надо отобразить фрагмент кода внутри строки с каким-то текстом, нужно с двух сторон выделить этот код одним или несколькими 
  обратными апострофами `\`` (их ещё называют бэктиками).
* чтобы выделить фрагмент из нескольких строк, нужно с двух сторон выделить его тремя обратными апострофами.
* также перед фрагментом кода можно поставить табуляцию или четыре пробела, при этом предыдущая строка должна быть пустой.

<h3 id="подраздел-11.1">Одна-две пары бэктиков (One or two pairs of backticks)</h3>

<h4>Пример:</h4>

Функция \`print (x)` выводит содержимое переменной \```x```.

<h4>Результат:</h4>

Функция `print (x)` выводит содержимое переменной ```x```.

<h3 id="подраздел-11.2">Три и более пары бэктиков (Three or more pairs of backticks)</h3>

<h4>Пример:</h4>

\```

#include <stdio.h>

int main() {

&emsp;printf("Hello, World!");

&emsp;return 0;

}

\```

<h4>Результат:</h4>

```
#include <stdio.h>
int main() {
    printf("Hello, World!");
    return 0;
}
```

<h3 id="подраздел-11.3">Отступ (Indentation)</h3>

<h4>Пример:</h4>

&emsp;let x = 12;<br>
&emsp;let y = 6;<br>
&emsp;console.log(x + y);

<h4>Результат:</h4>

    let x = 12;
    let y = 6;
    console.log(x + y);

<h3 id="подраздел-11.4">Подсветка кода (Code highlighting)</h3>

Если обрамлять код тремя обратными апострофами, то после первой тройки можно указать язык программирования — тогда Markdown 
правильно подсветит элементы кода.

<h4>Пример:</h4>

\```python

if x > 0:

&emsp;print (x)

else:

&emsp;print ('Hello, World!')

\```

<br>

\```c

#include <stdio.h>

int main() {

&emsp;printf("Hello, World!");

&emsp;return 0;

}

\```

<br>

\```javascript

let x = 12;

let y = 6;

console.log(x + y);

\```

<h4>Результат:</h4>

```python
if x > 0:
	print (x)
else:
	print ('Hello, World!')
```

```c
#include <stdio.h>
int main() {
   printf("Hello, World!");
   return 0;
}
```

```javascript
let x = 12;
let y = 6;
console.log(x + y);
```

Возможность вставлять блоки кода тремя обратными апострофами появилась в спецификации CommonMark, но там не указан список 
псевдонимов: как правильно называть языки, чтобы Markdown понял, о чём речь.

Поэтому каждая реализация ведёт свой собственный список языков и их псевдонимов. Так как их очень много, да ещё и новые 
время от времени добавляются, то удобных таблиц обычно не делают. Предлагают сразу ознакомиться с конфигурационным файлом.

Вот такой <a href="https://github.com/github-linguist/linguist/blob/master/lib/linguist/languages.yml">список языков</a>, 
например, поддерживает диалект GitHub Flavored Markdown.

---

<h2 id="раздел-12">Таблицы (Tables)</h2>

В уже упомянутом выше диалекте GitHub Flavored Markdown (и некоторых других тоже) есть возможность оформлять таблицы. Столбцы 
разделяются вертикальными линиями `|`, а строка с шапкой отделяется от остальных дефисами `-`, которых можно ставить сколько 
угодно.

<h4>Пример:</h4>

```
|Столбец 1|Столбец 2|Столбец 3|
|-|--------|---|
|Длинная запись в первом столбце|Запись в столбце 2|Запись в столбце 3|
|Кртк зпс| |Слева нет записи|
```

<h4>Результат:</h4>

>|Столбец 1|Столбец 2|Столбец 3|
>|-|--------|---|
>|Длинная запись в первом столбце|Запись в столбце 2|Запись в столбце 3|
>|Кртк зпс| |Слева нет записи|

Чтобы выровнять весь столбец по правому краю, в строке с дефисами сразу после дефисов можно поставить двоеточие `:`. Чтобы 
выровнять содержимое по центру, надо поставить двоеточия с обеих сторон.

<h4>Пример:</h4>

```
|Столбец 1|Столбец 2|Столбец 3|
|:-|:-:|-:|
|Равнение по левому краю|Равнение по центру|Равнение по правому краю|
|Запись|Запись|Запись|
```

<h4>Результат:</h4>

>|Столбец 1|Столбец 2|Столбец 3|
>|:-|:-:|-:|
>|Равнение по левому краю|Равнение по центру|Равнение по правому краю|
>|Запись|Запись|Запись|

Так же это можно сделать через HTML теги:

<h4>Пример:</h4>

```
<table border="1">
    <tr>
        <th>Заголовок 1</th>
        <th>Заголовок 2</th>
    </tr>
    <tr>
        <td>Ячейка 1</td>
        <td>Ячейка 2</td>
    </tr>
</table>
```

<h4>Результат:</h4>

><table border="1">
>    <tr>
>        <th>Заголовок 1</th>
>        <th>Заголовок 2</th>
>    </tr>
>    <tr>
>        <td>Ячейка 1</td>
>        <td>Ячейка 2</td>
>    </tr>
></table>

---

<h2 id="раздел-13">Экранирование (Escaping characters)</h2>

Многие символы в Markdown выполняют роль служебных. Если они встречаются в вашем тексте сами по себе, то для корректного 
отображения их стоит экранировать (иначе они просто не только не отобразятся сами, но и добавят вашему тексту какое-нибудь 
ненужное форматирование). Для этого перед ними ставится обратная косая черта `\`.

Вот список символов, которые нужно экранировать: `*_{}[]<>()#+-.! |\`. Делать это постоянно необязательно — достаточно 
ставить экран только в тех случаях, когда Markdown может воспринять эти символы как служебные. Например, если строка 
начинается с символа `#`, то экранировать её надо — потому что программа может решить, что вы хотите сделать заголовок. 
А вот если решётка находится где-то в центре строки, то экранировать ничего не надо — редактор поймёт, что тут она просто 
часть текста.

---

<h2 id="раздел-14">Как использовать Markdown в мессенджерах</h2>

Как мы уже писали, принципы Markdown используются при разметке текста во многих мессенджерах. Обычно он используется для 
выделения текста, при этом синтаксис у каждой платформы свой.

1. Жирный:

    * **Telegram** и **Discord** — \*\*две звёздочки с двух сторон**
    * **WhatsApp** и **Viber** — \*одна звёздочка с двух сторон*

2. Курсив:

    * **Telegram** — \_\_два нижних подчёркивания с двух сторон__
    * **WhatsApp** и **Viber** — \_одно нижнее подчёркивание с двух сторон_
    * **Discord** — \*одна звёздочка с двух сторон* или \_одно нижнее подчёркивание с двух сторон_

3. Подчёркнутый:

    * **Discord** — \_\_два нижних подчёркивания с двух сторон__

4. Зачёркнутый:

    * **WhatsApp** и **Viber** — \~одна тильда с двух сторон~
    * **Discord** — \~~две тильды с двух сторон~~

5. Моноширинный (используется для вставки кода):

    * **Telegram**, **WhatsApp**, **Viber** и **Discord** — \```три обратных апострофа с двух сторон```
    * в **Discord** точно так же, как и в **Markdown**, можно указывать язык программирования для подсветки синтаксиса

6. Спойлер:

    * **Telegram** и **Discord** — ||две вертикальные черты с двух сторон||

---

<h2 id="раздел-15">Эмодзи (Emoji)</h2>

<h3 id="подраздел-15.1">Запись в файл (Write to file)</h3>

Для вывода эмодзи в Markdown вы можете использовать скопированные эмодзи (т. е. вставить в файл прямо как символ), 
Unicode-символы или встроенные эмодзи.

Вывод для Unicode-символов в HTML выглядит следующим образом: `&#xкод;` - 16-чный или `&#код;` - 10-чный.

<h4>Пример:</h4>

```
Смайлик: 😊

&#128522; - в 10-чной

&#x1F60A; - в 16-чной
```

<h4>Результат:</h4>

>Смайлик: 😊
>
>&#128522; - в 10-чной
>
>&#x1F60A; - в 16-чной

Вывод встроенных эмодзи выглядит так: `:название эмодзи:`.

<h4>Пример:</h4>

```
Смайлик: 😊

:blush:
```

<h4>Результат:</h4>

>Смайлик: 😊
>
>:blush:

<h3 id="подраздел-15.2">Общий список (Common list)</h3>

Список всех эмодзи сожно посмотреть <a href="https://github.com/BogdanKlimov11/Markdown_course/blob/main/Emoji.md">здесь</a>.

---

<h2 id="раздел-16">Формулы LaTex (Formulas)</h2>

<h3 id="подраздел-16.1">Запись в файл (Write to file)</h3>

Для использования формул LaTeX в Markdown можно использовать специальные символы и синтаксис, который будет 
интерпретироваться Markdown-парсером.

* Встроенные формулы: Вы можете использовать одинарные долларовые знаки `$` или структуру `\(формула\)` для встроенных формул.

* Блочные формулы: Для более сложных формул, которые должны быть отдельными от текста, вы можете использовать двойные 
  долларовые знаки `$$` или структуру `\[формула\]`. Так же перед формулой должна быть пустая строка.

<h4>Пример:</h4>

```
встроенная формула $E=mc^2$

блочная формула

$$
\int_{-\infty}^{\infty} e^{-x^2} \, dx = \sqrt{\pi}
$$
```

<h4>Результат:</h4>

встроенная формула $E=mc^2$

блочная формула

$$
\int_{-\infty}^{\infty} e^{-x^2} \, dx = \sqrt{\pi}
$$

<h3 id="подраздел-16.2">Общий список (Common list)</h3>

Элементы LaTex можно взять <a href="https://github.com/BogdanKlimov11/Markdown_course/blob/main/LaTex.md">здесь</a>.

---

<!-- Contacts -->
<h2>📡 Контакты автора:</h2>
<div id="badges" align="center">
    <a href="https://vk.com/bogdan_klimov">
        <img src="https://img.shields.io/badge/VK-blue?style=for-the-badge&logo=vk&logoColor=white&size=30" alt="VK Badge"/>
    </a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://t.me/bogdanklimov">
        <img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white" alt="Telegram Badge"/>
    </a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.instagram.com/ghost_777_24?igsh=aHdwa2s1cTIzbmhw&utm_source=qr">
        <img src="https://img.shields.io/badge/Instagram-%23E4405F.svg?style=for-the-badge&logo=Instagram&logoColor=white" alt="Instagram Badge"/>
    </a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.facebook.com/profile.php?id=100033935590093&mibextid=LQQJ4d">
        <img src="https://img.shields.io/badge/Facebook-%231877F2.svg?style=for-the-badge&logo=Facebook&logoColor=white" alt="Facebook Badge"/>
    </a>
</div>
