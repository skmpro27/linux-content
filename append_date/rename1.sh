
#!/bin/bash -x

for file in `ls *.log.1`
do
	firstPart=`echo $file | awk -F. '{print $1"-"}'`
	datePart=`date -I | awk -F- '{print $3 $2 $1}'`
	lastPart=`echo $file | awk -F. '{print "."$2}'`
	renamed=$firstPart$datePart$lastPart

	echo $file "renamed to" $renamed
	mv $file $renamed
done
