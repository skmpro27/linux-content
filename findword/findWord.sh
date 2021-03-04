
#! /bin/bash -x

for logfile in `ls *.log`
do
	count=`cat $logfile | grep -c systemd`
	echo $count $logfile
done

