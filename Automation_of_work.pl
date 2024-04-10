# Заменить все упоминания слова First на слово Second в файле Example.md, и одновременно 
# сделать резервную копию оригинального файла
perl -i.bak -p -e "s/\bFirst\b/Second/" Example.md

# Удалить все повторяющиеся элементы массива
my %cnt; # здесь будет число повторений элементов
@links = grep { ! $cnt{$_}++; } @links;

# Очистить файл от всех HTML-команд
use strict;
use utf8;
use HTML::Entities; # исходим из того, что мы уже получили содержимое HTML-файла и можем с ним работать
utf8::decode($_);
s/<[^>]*>//g;
decode_entities($_);
utf8::encode($_);
