#!/bin/bash
html=$1

inb_cluster_NFS_status_simple.sh > ./tmp_nfs_status.txt
sed 's/$/<br \/>/g' ./tmp_nfs_status.txt > tmp_nfs_status.html


echo "<b>NFS disks <br /></b>"  >> $html
echo "    <code>" >> $html
cat tmp_nfs_status.html >> $html
echo "    </code>" >> $html
