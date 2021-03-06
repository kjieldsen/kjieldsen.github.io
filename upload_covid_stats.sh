#!/bin/bash

#csplit -f table /Users/justinleung/github/kjieldsen.github.io/covid_datatables.html "/<table /" {6}
#cat table_css.html table00 > table00.html
#cat table_css.html table01 > table01.html

for f in *_covid_table.html 
do
  cat table_css.html $f > temp.html
  mv temp.html $f
done

ls -ltr

git add --all
git commit -m "update covid stats"
git push
