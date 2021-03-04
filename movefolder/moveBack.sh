
#!/bin/bash -x

for folder in `ls -I*.sh`
do
	file=`echo $folder/$folder".txt"`
	location=`echo "."`
	mv  $file $location
	echo $file "moved to" $location
	rm -r $folder
done

