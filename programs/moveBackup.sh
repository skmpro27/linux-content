
#! /bin/bash -x

for file in `find . -mtime +7`
do
	if [ -d $file ]
	then
		continue
	fi
	folder=`echo ../backupfolder`
	mv -b $file $folder
	echo $file "moved to" $folder
done

