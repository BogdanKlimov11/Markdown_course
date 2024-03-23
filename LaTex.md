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

---

<!-- Fractions and binomials -->
<h4 id="fractions-binomials">Fractions and binomials</h4>

<!-- Continued fractions -->
<h5 id="continued-fractions">Continued fractions</h5>

<!-- Multiplying two numbers -->
<h5 id="multiplying-two-numbers">Multiplying two numbers</h5>

---

<!-- Roots -->
<h4 id="roots">Roots</h4>

---

<!-- Series and integrals -->
<h4 id="series-integrals">Series and integrals</h4>

---

<!-- Parentheses, curly braces, and delimiters -->
<h4 id="parentheses-curly-braces-delimiters">Parentheses, curly braces, and delimiters</h4>

<!-- Automatic sizing -->
<h5 id="automatic-sizing">Automatic sizing</h5>

<!-- Manual sizing -->
<h5 id="manual-sizing">Manual sizing</h5>

---

<!-- Matrices and arrays -->
<h4 id="matrices-arrays">Matrices and arrays</h4>

<!-- Matrices in running text -->
<h5 id="matrices-in-running-text">Matrices in running text</h5>

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
