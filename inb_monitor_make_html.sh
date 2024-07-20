#!/bin/bash
html=/misc/penfield/lconcha/inb_monitor/index.html


echo "
<html>
 <head>
<style>
code {
  font-family: Consolas,"courier new";
  color: black;
  background-color: #f1f1f1;
  padding: 2px;
}
</style>
 </head>
 <body>
 <b> Status of Don Clusterio <br /></b>

" > $html
the_date=$(date)
echo "<b> $the_date <br /><br /></b>"  >> $html

for f in modulos/*.sh;
do
  echo "Running $f"
  $f $html
done

echo "
 </body>
</html>
" >> $html

echo "Created $html"
