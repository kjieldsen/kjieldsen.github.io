#!/bin/bash

csplit -f table /Users/justinleung/github/kjieldsen.github.io/covid_datatables.html "/<table /" {2}
mv table00 table00.html
mv table01 table01.html
mv table02 table02.html
mv table03 table03.html

git add --all
git commit -m "update covid stats"
git push
