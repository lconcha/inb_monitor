#!/bin/bash
html=$1

echo "<h2>Jobs in SGE queues<br /></h2>"  >> $html
to-html "qstat -u '*'" >> $html


# OLD VERSION
# qstat -u "*" > tmp_qstat.txt

# sed 's/$/<br \/>/g' ./tmp_qstat.txt > tmp_qstat.html


# echo "<b>qstat <br /></b>"  >> $html
# echo "    <code>" >> $html
# cat tmp_qstat.html >> $html
# echo "    </code>" >> $html


