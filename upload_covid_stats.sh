#!/bin/bash

csplit -f table /Users/justinleung/github/kjieldsen.github.io/covid_datatables.html "/<table /" {2}

cat table_css.html table00 > table00.html
cat table_css.html table01 > table01.html
cat table_css.html table02 > table02.html
cat table_css.html table03 > table03.html

git add --all
git commit -m "update covid stats"
git push
