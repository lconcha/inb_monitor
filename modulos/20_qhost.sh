#!/bin/bash
html=$1


# qhost > tmp_qhost.txt

# sed 's/$/<br \/>/g' ./tmp_qhost.txt > tmp_qhost.html


# echo "<b>qhost <br /></b>"  >> $html
# echo "    <code>" >> $html
# cat tmp_qhost.html >> $html
# echo "    </code>" >> $html


to-html "qhost" >> $html