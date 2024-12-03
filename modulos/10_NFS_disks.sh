#!/bin/bash
html=$1
file_flag=$(dirname $html)/ThereAreNFSErrors

#inb_cluster_NFS_status_simple.sh
#echo "<h2>NFS disks <br /></h2>"  >> $html
#to-html "inb_cluster_NFS_status_simple.sh -T" > $html
##### HEY! timeout does not play nice with to-html

# # OLD VERSION
inb_cluster_NFS_status_simple.sh -T >./tmp_nfs_status.txt
sed 's/$/<br \/>/g' ./tmp_nfs_status.txt >tmp_nfs_status.html

echo "<h2>NFS disks <br /></h2>" >>$html
echo "<p>&gt inb_cluster_NFS_status_simple.sh</p>" >>$html
echo "    <code>" >>$html
cat tmp_nfs_status.html >>$html
echo "    </code>" >>$html

# Make a file as a flag
str=$(grep "MOUNTING ERRORS" ./tmp_nfs_status.txt)
if [ -z $str ]; then
  if [ -f $file_flag ]; then rm $file_flag; fi
else
  echo "There are some NFS errors"
  touch $file_flag
  echo "Created file flag: $file_flag"
fi
