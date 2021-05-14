#!/bin/bash

csplit -f table /Users/justinleung/github/kjieldsen.github.io/covid_datatables.html "/<table /" {6}

cat table_css.html table00 > table00.html
cat table_css.html table01 > table01.html
cat table_css.html table02 > table02.html
cat table_css.html table03 > table03.html
cat table_css.html table04 > table04.html
cat table_css.html table05 > table05.html
cat table_css.html table06 > table06.html
cat table_css.html table07 > table07.html

$FILES = ./*_covid_table.html
for f in $FILES
do
  cat table_css.html $f > temp.html
  mv temp.html $f
done

ls -ltr

git add --all
git commit -m "update covid stats"
git push
