#!/bin/bash
#
#
# Make sure you have installed to-html through cargo (rust)
# https://github.com/Aloso/to-html


# Put to-html on the path
function path_add() {
  rel_path_to_add=$1
  path_to_add=$(readlink -f $rel_path_to_add)
  if [ -d $path_to_add ]
  then
    export PATH=${path_to_add}:${PATH}
    echolor green "[INFO] Added to PATH: $path_to_add"
  else
    echolor red "[ERROR] Cannot add to PATH, directory does not exist: $path_to_add"
  fi
}
path_add /home/inb/lconcha/.cargo/bin


# Define files
html=/misc/penfield/lconcha/inb_monitor/index.html
tmp_html=/misc/penfield/lconcha/inb_monitor/tmp_index.html
here=$(dirname $0)


# Begin cretion of html file
echo "
<html>
 <body>
 <b> Status of Don Clusterio <br /></b>

" > $tmp_html
the_date=$(date)
echo "<b> $the_date <br /><br /></b>"  >> $tmp_html

# Run all available modules
for f in ${here}/modulos/*.sh;
do
  echo "Running $f"
  $f $tmp_html
  echo "<br />"  >> $tmp_html
done

# Finish up the html
echo "
 </body>
</html>
" >> $tmp_html

# Replace old html
mv $tmp_html $html
echo "Created $html"
