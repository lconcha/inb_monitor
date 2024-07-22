#!/bin/bash
html=$1

echo "<h2>Status of SGE hosts (computers) <br /></h2>"  >> $html
to-html "qhost" >> $html


# OLD VERSION
# qhost > tmp_qhost.txt

# sed 's/$/<br \/>/g' ./tmp_qhost.txt > tmp_qhost.html


# echo "<b>qhost <br /></b>"  >> $html
# echo "    <code>" >> $html
# cat tmp_qhost.html >> $html
# echo "    </code>" >> $html