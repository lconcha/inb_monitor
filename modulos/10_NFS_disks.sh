#!/bin/bash
html=$1

to-html "inb_cluster_NFS_status_simple.sh" >> $html




# OLD VERSION
# inb_cluster_NFS_status_simple.sh > ./tmp_nfs_status.txt
# sed 's/$/<br \/>/g' ./tmp_nfs_status.txt > tmp_nfs_status.html


# echo "<b>NFS disks <br /></b>"  >>n $html
# echo "    <code>" >> $html
# cat tmp_nfs_status.html >> $html
# echo "    </code>" >> $html