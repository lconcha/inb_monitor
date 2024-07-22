#!/bin/bash
html=$1

#inb_cluster_NFS_status_simple.sh
#to-html "inb_cluster_NFS_status_simple.sh" > $html
##### HEY! timeout does not play nice with to-html




# OLD VERSION
inb_cluster_NFS_status_simple.sh > ./tmp_nfs_status.txt
sed 's/$/<br \/>/g' ./tmp_nfs_status.txt > tmp_nfs_status.html


echo "<h2>NFS disks <br /></h2>"  >> $html
echo "<p>&gt inb_cluster_NFS_status_simple.sh</p>"  >> $html
echo "    <code>" >> $html
cat tmp_nfs_status.html >> $html
echo "    </code>" >> $html