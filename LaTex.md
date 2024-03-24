<!-- Table of Contents -->
<h3>Table of Contents</h3>
<nav>
    <ol>
    	  <li><a href="#start">Start</a></li>
        <li><a href="#mathematical-environment">Mathematical environment</a></li>
        <ul>
            <li><a href="#inserting-off-formulas">Inserting "off" formulas</a></li>
        </ul>
    	  <li><a href="#mathematical-symbols">Mathematical symbols</a></li>
        <li><a href="#greek-letters">Greek letters</a></li>
        <li><a href="#mathematical-operators">Mathematical operators</a></li>
        <li><a href="#degrees-indices">Degrees and indices</a></li>
        <li><a href="#fractions-binomials">Fractions and binomials</a></li>
        <ul>
            <li><a href="#continued-fractions">Continued fractions</a></li>
            <li><a href="#multiplying-two-numbers">Multiplying two numbers</a></li>
        </ul>
        <li><a href="#roots">Roots</a></li>
        <li><a href="#series-integrals">Series and integrals</a></li>
        <li><a href="#parentheses-curly-braces-delimiters">Parentheses, curly braces, and delimiters</a></li>
        <ul>
            <li><a href="#automatic-sizing">Automatic sizing</a></li>
            <li><a href="#manual-sizing">Manual sizing</a></li>
        </ul>
        <li><a href="#matrices-arrays">Matrices and arrays</a></li>
        <ul>
            <li><a href="#matrices-in-running-text">Matrices in running text</a></li>
        </ul>
        <li><a href="#adding-text-to-equations">Adding text to equations</a></li>
        <ul>
            <li><a href="#formatted-text">Formatted text</a></li>
        </ul>
        <li><a href="#formatting-mathematics-symbols">Formatting mathematics symbols</a></li>
        <ul>
            <li><a href="#accents">Accents</a></li>
        </ul>
        <li><a href="#color">Color</a></li>
        <li><a href="#plus-minus-signs">Plus and minus signs</a></li>
        <li><a href="#controlling-horizontal-spacing">Controlling horizontal spacing</a></li>
        <li><a href="#manually-specifying-formula-style">Manually Specifying Formula Style</a></li>
        <li><a href="#advanced-mathematics">Advanced Mathematics: AMS Math package</a></li>
        <ul>
            <li><a href="#introducing-dots-in-formulas">Introducing dots in formulas</a></li>
            <li><a href="#dots">Dots</a></li>
            <li><a href="#align-environment">Write an equation with the align environment</a></li>
        </ul>
        <li><a href="#list-of-mathematical-symbols">List of mathematical symbols</a></li>
    </ol>
</nav>

---

<!-- Start -->
<h4 id="start">Start</h4>

Одним из главных мотивов для Дональда Кнута, когда он начал разрабатывать исходную систему 
TeX, было создание чего-то, что позволяло бы просто записывать математические формулы, но 
при этом выглядело бы профессионально на этапе печати. Тот факт, что ему это удалось, скорее 
всего и был причиной того, что TeX (а позже и LaTeX) стал настолько популярным в научном 
сообществе. Возможность набора математических формул — одна из самых сильных сторон LaTeX. 
Но при этом, это очень объёмная тема из-за существования большого количества математических 
обозначений.

Если для вашего документа требуется всего несколько простых математических формул, обычный 
LaTeX предоставит вам большинство инструментов, которые вам смогут понадобятся. Если же вы 
пишете научную статью, содержащую множество сложных формул, пакет amsmath привносит некоторое 
количество новых команд, которые являются более мощными и гибкими, чем те, которые предоставляются 
базовым LaTeX. Пакет mathtools исправляет некоторые причуды amsmath и добавляет полезные настройки, 
символы и окружения в amsmath. Чтобы использовать любой из данных пакетов, включите в преамбулу 
создаваемого документа:
```latex
\usepackage{amsmath}
```
или
```latex
\usepackage{mathtools}
```
Пакет mathtools загружает пакет amsmath и, следовательно, нет необходимости указывать 
`\usepackage{amsmath}` в преамбуле, если используется mathtools.

---

<!-- Mathematical environment -->
<h4 id="mathematical-environment">Mathematical environment</h4>

Системе LaTeX необходимо сообщить, когда текст, который вы вводите, является математической 
формулой. Это необходимо из-за того, что LaTeX набирает математическую нотацию иначе, чем 
обычный текст. Поэтому для данной цели объявлены специальные окружения. Их можно разделить 
на две категории в зависимости от того, как они представлены:

* text - текст формулы отображается прямо в строке, внутри текста, где он объявлен. Например, 
  я могу написать формулу $a+a=2a$ прямо в этом предложении.

* displayed - для отображения формулы в отдельной строке.

Поскольку математические формулы требуют особых окружений, естественно, есть их соответствующие 
названия, которые вы можете использовать стандартным способом. Однако, в отличие от большинства 
других окружений, есть удобные сокращения для объявления ваших формул. Следующая таблица объединяет 
информацию о них:

<table>
    <tr>
        <th>Тип</th>
        <th>Встроенная (в текст) формула</th>
        <th>Выключенная (на отдельной строке) формула</th>
        <th>Выключенная формула с автонумерацией</th>
    </tr>
    <tr>
        <td>Окружение</td>
        <td><code>math</code></td>
        <td><code>displaymath</code></td>
        <td><code>equation</code></td>
    </tr>
    <tr>
        <td>Сокращение LaTeX</td>
        <td><code>\(...\)</code></td>
        <td><code>\[...\]</code></td>
        <td></td>
    </tr>
    <tr>
        <td>Сокращение TeX</td>
        <td><code>equation</code></td>
        <td><code>equation</code></td>
        <td></td>
    </tr>
    <tr>
        <td>Комментарий</td>
        <td></td>
        <td></td>
        <td>
            <code>equation*</code> (версия со звездочкой) убирает нумерацию, но требует 
            использования amsmath
        </td>
    </tr>
</table>

**Внимание:** Следует избегать использования `$$...$$` , так как это может вызывать проблемы, 
особнно с макросами AMS-LaTeX. Кроме того, в случае возникновения проблем сообщения об ошибках 
могут оказаться бесполезными.

Окружения `equation*` и `displaymath` являются функционально эквивалентными.

Если вы набираете текст в обычном режиме, говорят, что вы находитесь в текстовом режиме, но когда 
вы печатаете в одной из этих математических сред, вы, как говорят, находитесь в математическом 
режиме, который имеет некоторые отличия от текстового режима:

1. Большинство пробелов и разрывов строк не имеют никакого значения, поскольку все пробелы либо 
   получены логически из математических выражений, либо должны быть указаны с помощью специальных 
   команд, таких как `\quad`

2. Пустые строки не допускаются. Только один абзац на формулу.

3. Каждая буква считается именем переменной и будет набрана как таковая. Если вы хотите набрать обычный 
   текст в формуле (обычный вертикальный шрифт и нормальный интервал), вам необходимо ввести текст с 
   помощью специальных команд.

<!-- Inserting "off" formulas -->
<h5 id="face-smiling">Inserting "off" formulas</h5>

Чтобы некоторые операторы, такие как `\lim` или `\sum`, правильно отображались в некоторых математических 
окружениях (имеется ввиду`$......$`), может быть удобно написать класс `\displaystyle` внутри окружения. 
Это может увеличить длину строки, но приведет к более правильному отображению показателей и индексов 
для некоторых математических операторов. Например, `$\sum$` напечатает маленькую Σ `а$\displaystyle \sum$` 
напечатает большую $\sum$, как в уравнениях (Работает только при включенном пакете AMSMATH). Можно 
принудительно настроить такое поведение для всех математических сред, объявив `\everymath{\displaystyle}` 
в самом начале (т.е. до `\begin{document}`).

---

<!-- Mathematical symbols -->
<h4 id="mathematical-symbols">Mathematical symbols</h4>

В математике существует достаточно много различных символов! Ниже приведены те, к которым можно получить 
доступ прямо с клавиатуры:
```latex
+ - = ! / ( ) [ ] < > | ' : *
```
Помимо тех, что перечислены выше, для ввода некоторых символов могут потребоваться отдельные команды. Это 
требуется, например, для ввода греческих букв, символов множества и отношений, стрелок, бинарных операторов, 
и т.д.

Для примера:

<table>
    <tr>
        <td><code>\forall x \in X, \quad \exists y \leq \epsilon</code></td>
        <td>$\forall x \in X, \quad \exists y \leq \epsilon$</td>
    </tr>
</table>

К счастью, есть инструмент, который может значительно упростить поиск команды для определенного символа. 
Найдите "Detexify" в разделе external links ниже. Другой вариант - посмотреть "Полный список символов 
LaTeX" в разделе external links ниже.

---

<!-- Greek letters -->
<h4 id="greek-letters">Greek letters</h4>

Греческие буквы довольно часто используются в математике, но их достаточно просто набирать в математическом 
режиме. Вам просто нужно ввести название буквы после обратной косой черты: если первая буква названия 
строчная, вы получите строчную греческую букву, если первая буква названия заглавная (только первая 
буква), тогда вы получите прописную букву. Обратите внимание, что некоторые заглавные греческие буквы 
выглядят как латинские, поэтому они не предоставляются LaTeX (например, заглавные буквы Alpha и Beta 
это просто латинские "A" и "B" соответственно). Строчные буквы эпсилон, тета, каппа, фи, пи, ро и сигма 
представлены в двух разных версиях. Альтернативная (variant сокр. var) версия, создается добавлением 
"var" перед названием буквы:

<table>
    <tr>
        <td><code>\alpha, \Alpha, \beta, \Beta, \gamma, \Gamma, \pi, \Pi, \phi, \varphi, \mu, \Phi, \varPhi</code></td>
        <td>$\alpha, \Alpha, \beta, \Beta, \gamma, \Gamma, \pi, \Pi, \phi, \varphi, \mu, \Phi, \varPhi$</td>
    </tr>
</table>

Прокрутите вниз до "List of mathematical symbols" чтобы увидеть полный список греческих символов.

---

<!-- Mathematical operators -->
<h4 id="mathematical-operators">Mathematical operators</h4>

Оператор - это функция, которая записывается с помощью слова: например, тригонометрические функции (sin, 
cos, tan), логарифмы и экспоненты (log, exp), пределы (lim), а также след и определитель (tr, det). В 
LaTeX многие из них определены как команды:

<table>
    <tr>
        <td><code>\cos (2\theta) = \cos^2 \theta - \sin^2 \theta</code></td>
        <td>$\cos (2\theta) = \cos^2 \theta - \sin^2 \theta$</td>
    </tr>
</table>

Для некоторых операторов, таких как Предел, нижний индекс помещается под оператором:

<table>
    <tr>
        <td><code>\lim\limits_{x \to \infty} \exp(-x) = 0</code></td>
        <td>$\lim\limits_{x \to \infty} \exp(-x) = 0$</td>
    </tr>
</table>

Для оператора Сравнения по модулю существует две команды: `\bmod` и `\pmod`:

<table>
    <tr>
        <td><code>a \bmod b</code></td>
        <td>$a \bmod b$</td>
    </tr>
</table>

<table>
    <tr>
        <td><code>x \equiv a \pmod{b}b</code></td>
        <td>$x \equiv a \pmod{b}$</td>
    </tr>
</table>

Чтобы использовать операторы, которые не определены заранее, например argmax, 
см. [[../Высшая математика#Определяемые операторы|определяемые операторы]]

---

<!-- Degrees and indices -->
<h4 id="degrees-indices">Degrees and indices</h4>

Степени и индексы эквивалентны верхним и нижним индексам в обычном текстовом режиме. Символ каретки 
(`^`; так же известный как циркумфлекс) используется чтобы что-то поднять, а нижнее подчёркивание 
(`_`) для опускания. Если необходимо повысить или понизить выражение, содержащее больше одного символа, 
его необходимо сгруппировать с помощью фигурных скобок (`{` и `}`).

<table>
    <tr>
        <td><code>k_{n+1} = n^2 + k_n^2 - k_{n-1}</code></td>
        <td>$k_{n+1} = n^2 + k_n^2 - k_{n-1}$</td>
    </tr>
</table>

Для степеней, состоящих из более чем одной цифры, заключите степень в `{}`.

<table>
    <tr>
        <td><code>n^{22}</code></td>
        <td>$n^{22}$</td>
    </tr>
</table>

Подчёркивание (`_`) может использоваться с вертикальной чертой (`|`) при использовании выражения в качестве 
нижнего индекса (*это предложение требует уточнения*):

<table>
    <tr>
        <td><code>f(n) = n^5 + 4n^2 + 2 |_{n=17}</code></td>
        <td>$f(n) = n^5 + 4n^2 + 2 |_{n=17}$</td>
    </tr>
</table>

---

<!-- Fractions and binomials -->
<h4 id="fractions-binomials">Fractions and binomials</h4>

Дроби создаются с помощью команды `\frac{numerator}{denominator}`. Так же и Биномиальный коэффициент можно 
записать используя команду `\binom`:

<table>
    <tr>
        <td><code>\frac{n!}{k!(n-k)!} = \binom{n}{k}</code></td>
        <td>$\frac{n!}{k!(n-k)!} = \binom{n}{k}$</td>
    </tr>
</table>

Дроби можно помещать одну внутри другой:

<table>
    <tr>
        <td><code>\frac{\frac{1}{x}+\frac{1}{y}}{y-z}</code></td>
        <td>$\frac{\frac{1}{x}+\frac{1}{y}}{y-z}$</td>
    </tr>
</table>

Так же обратите внимание, что при встраивании дробей в строку текста или записи одной дроби внутри другой, 
$\tfrac {a}{b}$, их отображаемый размер должен быть заметно меньше, чем в выключенной формуле. Команды 
`\tfrac` и `\dfrac` позволяют использовать стиль записи соотвествующий использованию `\textstyle` и 
`\displaystyle`. Точно так же работают команды `\tbinom` и `\dbinom`, записывающие биноминальный коэффициент.

Для относительно простых дробей, особенно внутри текста, может быть более эстетично использовать "степени и 
индексы":

<table>
    <tr>
        <td><code>^3/_7</code></td>
        <td>$^3/_7$</td>
    </tr>
</table>

Данная запись может показаться немного "растянутой" (занимающей много места), сжатую версию можно определить, 
вставив некоторое отрицательное пространство.

```latex
%running fraction with slash - requires math mode.
\newcommand*\rfrac[2]{{}^{#1}\!/_{#2}}

\rfrac{3}{7}
```

Если вам необходимо часто использовать подобную запись дробей в своём документе, рекомендуем использовать пакет 
xfrac. Данный пакет поддерживает команду `\sfrac` для создания наклонных дробей. Использование:

```latex
Take $\sfrac{1}{2}$ cup of sugar, \dots
 
  3\times\sfrac{1}{2}=1\sfrac{1}{2}
 

Take ${}^1/_2$ cup of sugar, \dots
 
  3\times{}^1/_2=1{}^1/_2
```

Если в качестве показателя степени используются дроби, необходимо использовать фигурные скобки вокруг команды 
`\sfrac`:

```latex
$x^\frac{1}{2}$ % no error
$x^\sfrac{1}{2}$ % error
$x^{\sfrac{1}{2}}$ % no error
```

<table>
    <tr>
        <td><code>$x^\frac{1}{2}$ % no error</code></td>
        <td>$x^\frac{1}{2}$</td>
    </tr>
</table>

В некоторых случаях добавление только данного пакета может привести к ошибкам о том, что определённые формы 
шрифтов недоступны. Тогда необходимо так же добавить пакеты lmodern и fix-cm.

В качестве альтернативы, пакет \[ \int\limits_a^b\frac12 (1+x)^{-3/2}\,\mathrm{d}x= \left.-\frac{1}{\sqrt{1+x}} 
\right|_a^b \] предоставляет команду `\nicefrac` использование которой аналогично использованию `\sfrac`.

<!-- Continued fractions -->
<h5 id="continued-fractions">Continued fractions</h5>

Непрерывные дроби следует записывать с помощью команды `\cfrac`:

```latex
\begin{equation}
  x = a_0 + \cfrac{1}{a_1 
          + \cfrac{1}{a_2 
          + \cfrac{1}{a_3 + \cfrac{1}{a_4} } } }
\end{equation}
```

$$
x = a_0 + \cfrac{1}{a_1 
      + \cfrac{1}{a_2 
      + \cfrac{1}{a_3 + \cfrac{1}{a_4} } } }
$$

<!-- Multiplying two numbers -->
<h5 id="multiplying-two-numbers">Multiplying two numbers</h5>

Чтобы сделать умножение визуально похожим на дробь, можно использовать вложенный массив, например, умножение 
чисел, написанных одно под другим.

```latex
\begin{equation}
\frac{
    \begin{array}[b]{r}
      \left( x_1 x_2 \right)\\
      \times \left( x'_1 x'_2 \right)
    \end{array}
  }{
    \left( y_1y_2y_3y_4 \right)
  }
\end{equation}
```

$$
\frac{
    \begin{array}[b]{r}
      \left( x_1 x_2 \right)\\
      \times \left( x'_1 x'_2 \right)
    \end{array}
    }{
    \left( y_1y_2y_3y_4 \right)
}
$$

---

<!-- Roots -->
<h4 id="roots">Roots</h4>

Команда `\sqrt` создаёт символ квадратного корня, окружающий математическое выражение. Он принимает необязательный 
аргумент в квадратных скобках (`[` и `]`) для изменения показателя (степени) корня:

<table>
    <tr>
        <td><code>\sqrt{\frac{a}{b}}</code></td>
        <td>$\sqrt{\frac{a}{b}}$</td>
    </tr>
</table>

<table>
    <tr>
        <td><code>\sqrt[n]{1+x+x^2+x^3+\dots+x^n}</code></td>
        <td>$\sqrt[n]{1+x+x^2+x^3+\dots+x^n}$</td>
    </tr>
</table>

Часто для написания корня люди предпочитают делать его "закрывающимся", когда заканчивается подкоренное выражение. 
Это позволяет более точно определиять границы верхней линии при чтении. Хотя обычно при печати формул на компьютере 
этим пренебрегают, LaTeX позволяет записывать корни таким образом. просто доабвьте следующий код в преамбулу Вашего 
документа:

```latex
% New definition of square root:
% it renames \sqrt as \oldsqrt
\let\oldsqrt\sqrt
% it defines the new \sqrt in terms of the old one
\def\sqrt{\mathpalette\DHLhksqrt}
\def\DHLhksqrt#1#2{%
\setbox0=\hbox{$#1\oldsqrt{#2\,}$}\dimen0=\ht0
\advance\dimen0-0.2\ht0
\setbox2=\hbox{\vrule height\ht0 depth -\dimen0}%
{\box0\lower0.4pt\box2}}
```

Этот код сначала заменяет команду `\sqrt` на `\oldsqrt`, после чего переопределяет `\sqrt`, используя стандартный 
корень, сильно его дополняя. Вы можете увидеть пример использования нового стиля корня на картинке слева и сравнить 
его со старым видом на правой картинке. К сожалению, этот код не будет работать, если вы хотите дописать ему 
порказатель: если Вы попробуете напечатать $\sqrt[{b}]{a}$ как `\sqrt[b]{a}` после использования кода выше, то 
столкнётесь с тем, что TeX выдаст неправильный вывод. То есть Вы можете таким образом изменить команду квадратного 
корня только в том случае, если Вы не планируете указывать показатели у корней во всём Вашем документе.

Альтернативный код, позволяющий указывать показатели у корней, представлен ниже:

```latex
\usepackage{letltxmacro}
\makeatletter
\let\oldr@@t\r@@t
\def\r@@t#1#2{%
\setbox0=\hbox{$\oldr@@t#1{#2\,}$}\dimen0=\ht0
\advance\dimen0-0.2\ht0
\setbox2=\hbox{\vrule height\ht0 depth -\dimen0}%
{\box0\lower0.4pt\box2}}
\LetLtxMacro{\oldsqrt}{\sqrt}
\renewcommand*{\sqrt}[2][\ ]{\oldsqrt[#1]{#2} }
\makeatother


$\sqrt[a]{b} \quad \oldsqrt[a]{b}$
```

Но стоит учитывать, что этот способ предполагает подключение пакета `\usepackage{letltxmacro}`.

---

<!-- Series and integrals -->
<h4 id="series-integrals">Series and integrals</h4>

Команды `\sum` и `\int` создают символы Ряда и Интеграла соответсвенно. Нижний предел задаётся символом "_", а 
верхний "^". Пример использования Ряда:

<table>
    <tr>
        <td><code>\sum_{i=1}^{10} t_i</code></td>
        <td>$\sum {}_{i=1}^{10} t_i$</td>
    </tr>
</table>

или

<table>
    <tr>
        <td><code>\displaystyle\sum_{i=1}^{10} t_i</code></td>
        <td>$\displaystyle\sum_{i=1}^{10} t_i$</td>
    </tr>
</table>

Пределы для интегралов задаются по правилам такой же нотации, что и для Рядов. Так же важно обозначать 
дифференциал некоторой величины прямым шрифтом, что достигается командой `\mathrm`, и с небольшим отступом 
от подынтегрального выражения с помощью команды `\,`

<table>
    <tr>
        <td><code>\int_0^\infty e^{-x}\,\mathrm{d}x</code></td>
        <td>$\int_0^\infty e^{-x}\,\mathrm{d}x$</td>
    </tr>
</table>

Есть много других "больших" команд, которые работают подобным образом:

<table>
    <tr>
        <td><code>\sum</code></td>
        <td>$\sum$</td>
    </tr>
    <tr>
        <td><code>\bigoplus</code></td>
        <td>$\bigoplus$</td>
    </tr>
    <tr>
        <td><code>\bigcup</code></td>
        <td>$\bigcup$</td>
    </tr>
    <tr>
        <td><code>\bigsqcup</code></td>
        <td>$\bigsqcup$</td>
    </tr>
    <tr>
        <td><code>\int</code></td>
        <td>$\int$</td>
    </tr>
    <tr>
        <td><code>\iiint</code></td>
        <td>$\iiint$</td>
    </tr>
    <tr>
        <td><code>\prod</code></td>
        <td>$\prod$</td>
    </tr>
    <tr>
        <td><code>\bigotimes</code></td>
        <td>$\bigotimes$</td>
    </tr>
    <tr>
        <td><code>\bigcap</code></td>
        <td>$\bigcap$</td>
    </tr>
    <tr>
        <td><code>\bigvee</code></td>
        <td>$\bigvee$</td>
    </tr>
    <tr>
        <td><code>\oint</code></td>
        <td>$\oint$</td>
    </tr>
    <tr>
        <td><code>\iiiint</code></td>
        <td>$\iiiint$</td>
    </tr>
    <tr>
        <td><code>\coprod</code></td>
        <td>$\coprod$</td>
    </tr>
    <tr>
        <td><code>\bigodot</code></td>
        <td>$\bigodot$</td>
    </tr>
    <tr>
        <td><code>\biguplus</code></td>
        <td>$\biguplus$</td>
    </tr>
    <tr>
        <td><code>\bigwedge</code></td>
        <td>$\bigwedge$</td>
    </tr>
    <tr>
        <td><code>\iint</code></td>
        <td>$\iint$</td>
    </tr>
    <tr>
        <td><code>\idotsint</code></td>
        <td>$\idotsint$</td>
    </tr>
</table>

Что бы использоваться больше интегральных символов, которые не входят в шрифт Computer Modern, подключите пакет 
\[ \int\limits_a^b\frac12 (1+x)^{-3/2}\,\mathrm{d}x= \left.-\frac{1}{\sqrt{1+x}} \right|_a^b \].

Команда `\substack` позволяет использовать два обратных слэша `\\` для записи пределов Ряда или интеграла 
в несколько строк:

```latex
\sum_{\substack{
   0<i<m \\
   0<j<n
  }} 
 P(i,j)
```

Если вы хотите, чтобы пределы интеграла были указаны выше или ниже символа, используйте команду `\limits`:

<table>
    <tr>
        <td><code>\int\limits_a^b</code></td>
        <td>$\int\limits_a^b$</td>
    </tr>
</table>

Однако если вы хотите, чтобы это применялось ко ВСЕМ интегралам, то нужно указать параметр Шаблон:LaTeX/Parameter 
при подключении пакета \[ \int\limits_a^b\frac12 (1+x)^{-3/2}\,\mathrm{d}x= \left.-\frac{1}{\sqrt{1+x}} \right|_a^b 
\]: Шаблон:LaTeX/Usage

Нижние и верхние пределы в других контекстах, а также другие параметры пакета \[ \int\limits_a^b\frac12 (1+x)^{-3/2}\,
\mathrm{d}x= \left.-\frac{1}{\sqrt{1+x}} \right|_a^b \] связанные с ними, описаны в главе Advanced Mathematics.

Для больших интегралов можно использовать пакет \[ \int\limits_a^b\frac12 (1+x)^{-3/2}\,\mathrm{d}x= \left.-\frac{1}
{\sqrt{1+x}} \right|_a^b \].

---

<!-- Parentheses, curly braces, and delimiters -->
<h4 id="parentheses-curly-braces-delimiters">Parentheses, curly braces, and delimiters</h4>

Использование разделителей, таких как скобки, становится важным при работе с чем угодно, кроме самых тривиальных уравнений. 
Без них формулы могут стать двусмысленными. Кроме того, специальные типы математических структур, такие как матрицы, 
невозможно представить без разделителей.

Существует множество разделителей, доступных для использования в LaTeX:

<table>
    <tr>
        <td><code>( a ), [ b ], \{ c \}, | d |, \| e \|, 
\langle f \rangle, \lfloor g \rfloor, \lceil h 
\rceil, \ulcorner i \urcorner, / j \backslash</code>
        </td>
        <td>$( a ), [ b ], \{ c \}, | d |, \| e \|, \langle f \rangle, \lfloor g \rfloor, \lceil h \rceil, \ulcorner i \urcorner, / j \backslash$</td>
    </tr>
</table>

где `\lbrack` и `\rbrack` могут использоваться вместо "[" и "]".

<!-- Automatic sizing -->
<h5 id="automatic-sizing">Automatic sizing</h5>

Очень часто математические функции будут отличаться друг от друга по размеру, и в этом случае разделители, окружающие 
выражение, должны изменяться соответственно. Это можно сделать автоматически с помощью команд `\left`, `\right`, и 
`\middle`. Любой из выше перечисленных разделителей может быть использован в сочетании с этими командами:

<table>
    <tr>
        <td><code>\left(\frac{x^2}{y^3}\right)</code></td>
        <td>$\left(\frac{x^2}{y^3}\right)$</td>
    </tr>
</table>

<table>
    <tr>
        <td><code>P\left(A=2\middle|\frac{A^2}{B}>4\right)</code></td>
        <td>$P\left(A=2\middle|\frac{A^2}{B}>4\right)$</td>
    </tr>
</table>

Фигурные скобки определяются иначе, с помощью `\left\{` и `\right\}`,

<table>
    <tr>
        <td><code>\left\{\frac{x^2}{y^3}\right\}</code></td>
        <td>$\left\{\frac{x^2}{y^3}\right\}$</td>
    </tr>
</table>

Если разделитель нужен только с одной стороны выражения, то с другой стороны разделить может быть обозначен точкой 
(`.`), что сделает его невидимым.

<table>
    <tr>
        <td><code>\left.\frac{x^3}{3}\right|_0^1</code></td>
        <td>$\left.\frac{x^3}{3}\right|_0^1$</td>
    </tr>
</table>

<!-- Manual sizing -->
<h5 id="manual-sizing">Manual sizing</h5>

В некоторых случаях автоматический размер, создаваемый командами `\left` и `\right`, может быть отличен от того, что вы 
ожидаете увидеть, или вам требуется более точно контролировать размеры разделителей. В этом случае могут использоваться 
команды-модификаторы `\big`, `\Big`, `\bigg` и `\Bigg`:

<table>
    <tr>
        <td><code>( \big( \Big( \bigg( \Bigg(</code></td>
        <td>$( \big( \Big( \bigg( \Bigg($</td>
    </tr>
</table>

Эти команды в первую очередь полезны при работе с вложенными разделителями. Например, при наборе текста:

<table>
    <tr>
        <td><code>\frac{\mathrm d}{\mathrm d x} \left( k g(x) \right)</code></td>
        <td>$\frac{\mathrm d}{\mathrm d x} \left( k g(x) \right)$</td>
    </tr>
</table>

Мы видим, что команды `\left` и `\right` создают разделители такого же размера, что и вложенные в них. Это может 
создать трудности при чтении записей. Чтобы исправить это, мы пишем:

<table>
    <tr>
        <td><code>\frac{\mathrm d}{\mathrm d x} \big( k g(x) \big)</code></td>
        <td>$\frac{\mathrm d}{\mathrm d x} \big( k g(x) \big)$</td>
    </tr>
</table>

Ручное определение размеров также может быть полезно, когда уравнение слишком велико, поэтому заканчивается в конце 
страницы, и должно быть разделено на две строки с помощью команды "align". Хотя команды `\left`. и `\right`. можно 
использовать для автоматического определения размеров разделителей на каждой строке, это может привести к неправильным 
размерам. Кроме того, нужно использовать ручное определение размеров, чтобы избежать чрезмерно больших разделителей, 
если между ними появляется `\underbrace` или аналогичная команда.

---

<!-- Matrices and arrays -->
<h4 id="matrices-arrays">Matrices and arrays</h4>

Базовая матрица может быть создана с использованием среды: как и в других табличных структурах, записи указываются по 
строкам, столбцы разделяются амперсандом (`&`), а новые строки разделяются двойной обратной косой чертой (`\\`).

```latex
\[
 \begin{matrix}
  a & b & c \\
  d & e & f \\
  g & h & i
 \end{matrix}
\]
```

$$
\begin{matrix}
a & b & c \\
d & e & f \\
g & h & i
\end{matrix}
$$

Чтобы указать выравнивание столбцов в таблице, используйте версию со звездочкой:

```latex
\begin{matrix}
    -1 & 3 \\
    2 & -4
\end{matrix}
=
\begin{matrix*}[r]
    -1 & 3 \\
    2 & -4
\end{matrix*}
```

По умолчанию выравнивание — Шаблон:LaTeX/Parameter, но это может быть любой тип столбца, допустимый в среде.

Однако матрицы обычно заключаются в какие-либо разделители, и хотя можно использовать команды `\left` и `\right`, 
существуют различные другие предопределенные среды, которые автоматически включают разделители.

<table>
    <tr>
        <th>Окружающий разделитель</th>
        <th>Примечания</th>
    </tr>
    <tr>
        <td>$\displaystyle (\,)$</td>
        <td>центрирует столбцы по умолчанию</td>
    </tr>
    <tr>
        <td>$\displaystyle (\,)$</td>
        <td>позволяет указать выравнивание столбцов в необязательном параметре</td>
    </tr>
    <tr>
        <td>$\displaystyle [\,]$</td>
        <td>центрирует столбцы по умолчанию</td>
    </tr>
    <tr>
        <td>$\displaystyle [\,]$</td>
        <td>позволяет указать выравнивание столбцов в необязательном параметре</td>
    </tr>
    <tr>
        <td>$\displaystyle \{\,\}$</td>
        <td>центрирует столбцы по умолчанию</td>
    </tr>
    <tr>
        <td>$\displaystyle \{\,\}$</td>
        <td>центрирует столбцы по умолчанию</td>
    </tr>
    <tr>
        <td>$\displaystyle |\,|$</td>
        <td>центрирует столбцы по умолчанию</td>
    </tr>
    <tr>
        <td>$\displaystyle |\,|$</td>
        <td>позволяет указать выравнивание столбцов в необязательном параметре</td>
    </tr>
    <tr>
        <td>$\displaystyle \|\,\|$</td>
        <td>центрирует столбцы по умолчанию</td>
    </tr>
    <tr>
        <td>$\displaystyle \|\,\|$</td>
        <td>позволяет указать выравнивание столбцов в необязательном параметре</td>
    </tr>
</table>

При записи матриц произвольного размера обычно используются горизонтальные, вертикальные и диагональные тройки 
точек (известные как эллипсы) для заполнения определенных столбцов и строк.  Их можно указать с помощью `\cdots`, 
`\vdots` и `\ddots` соответственно.

```latex
A_{m,n} = 
\begin{pmatrix}
a_{1,1} & a_{1,2} & \cdots & a_{1,n} \\
a_{2,1} & a_{2,2} & \cdots & a_{2,n} \\
\vdots  & \vdots  & \ddots & \vdots  \\
a_{m,1} & a_{m,2} & \cdots & a_{m,n} 
\end{pmatrix}
```

$$
A_{m,n} = 
\begin{pmatrix}
a_{1,1} & a_{1,2} & \cdots & a_{1,n} \\
a_{2,1} & a_{2,2} & \cdots & a_{2,n} \\
\vdots  & \vdots  & \ddots & \vdots  \\
a_{m,1} & a_{m,2} & \cdots & a_{m,n} 
\end{pmatrix}
$$

В некоторых случаях вам может потребоваться более точный контроль выравнивания внутри каждого столбца или вставка 
строк между столбцами или строками.  Этого можно добиться с помощью среды, которая по сути представляет собой 
математическую версию [[../Tables#Табличная среда|табличная среда]], которая требует предварительного указания 
столбцов.

```latex
\begin{array}{c|c}
1 & 2 \\ 
\hline
3 & 4
\end{array}
```

$$
\begin{array}{c|c}
1 & 2 \\ 
\hline
3 & 4
\end{array}
$$

Вы можете заметить, что матричный класс сред AMS не оставляет достаточно места при использовании вместе с дробями, 
что приводит к выводу, подобному этому.

Чтобы решить эту проблему, добавьте дополнительный начальный пробел с необязательным параметром в команду `\\`.

```latex
M = \begin{bmatrix}
       \frac{5}{6} & \frac{1}{6} & 0           \\[0.3em]
       \frac{5}{6} & 0           & \frac{1}{6} \\[0.3em]
       0           & \frac{5}{6} & \frac{1}{6}
     \end{bmatrix}
```

Если вам нужны «границы» или «индексы» в вашей матрице, простой TeX предоставляет макрос `\bordermatrix`

```latex
M = \bordermatrix{~ & x & y \cr
                  A & 1 & 0 \cr
                  B & 0 & 1 \cr}
```

<!-- Matrices in running text -->
<h5 id="matrices-in-running-text">Matrices in running text</h5>

Чтобы вставить небольшую матрицу и не увеличивать интерлиньяж в содержащей ее строке, используйте среду

```latex
A matrix in text must be set smaller:
$\bigl(\begin{smallmatrix}
a&b \\ c&d
\end{smallmatrix} \bigr)$
to not increase leading in a portion of text.
```

---

<!-- Adding text to equations -->
<h4 id="adding-text-to-equations">Adding text to equations</h4>

<!-- Formatted text -->
<h5 id="formatted-text">Formatted text</h5>

---

<!-- Formatting mathematics symbols -->
<h4 id="formatting-mathematics-symbols">Formatting mathematics symbols</h4>

<!-- Accents -->
<h5 id="accents">Accents</h5>

---

<!-- Color -->
<h4 id="color">Color</h4>

---

<!-- Plus and minus signs -->
<h4 id="plus-minus-signs">Plus and minus signs</h4>

---

<!-- Controlling horizontal spacing -->
<h4 id="controlling-horizontal-spacing">Controlling horizontal spacing</h4>

---

<!-- Manually Specifying Formula Style -->
<h4 id="manually-specifying-formula-style">Manually Specifying Formula Style</h4>

---

<!-- Advanced Mathematics: AMS Math package -->
<h4 id="advanced-mathematics">Advanced Mathematics: AMS Math package</h4>

<!-- introducing-dots-in-formulas -->
<h5 id="formatted-text">Introducing dots in formulas</h5>

<!-- Dots -->
<h5 id="dots">Dots</h5>

<!-- Write an equation with the align environment -->
<h5 id="align-environment">Write an equation with the align environment</h5>

---

<!-- List of mathematical symbols -->
<h4 id="list-of-mathematical-symbols">List of mathematical symbols</h4>
