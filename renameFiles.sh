#!/bin/bash
renameF (){
	for file in $(ls $dir/*.$curExt)
	do
		mv $file ${file%%.*}.$newExt
	done
}
if [ $# -ne 3 ] 
then
	read -p "Enter pwd of files location, current file extension, and new file extension separated by a space: " dir curExt newExt
else
	dir=$1
	curExt=$2
	newExt=$3
fi

if ls *.$curExt &> /dev/null
then
	renameF
else
	echo "No Files with ext: $curExt found in directory: $dir"
fi


