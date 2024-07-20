#!/bin/bash
html=/misc/penfield/lconcha/inb_monitor/index.html
tmp_html=/misc/penfield/lconcha/inb_monitor/tmp_index.html
here=$(dirname $0)

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

" > $tmp_html
the_date=$(date)
echo "<b> $the_date <br /><br /></b>"  >> $tmp_html

for f in ${here}/modulos/*.sh;
do
  echo "Running $f"
  $f $tmp_html
  echo "<br />"  >> $tmp_html
done

echo "
 </body>
</html>
" >> $tmp_html

mv $tmp_html $html
echo "Created $html"
