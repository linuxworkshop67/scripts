#!/bin/bash
# main vars
img=$(echo $1)
width=$(echo $2)
height=$(echo $3)
newImg=$(echo $4)

#check for empty param
if [ $# -lt 4 ]
then
	echo "must provide:"
	echo -e "\t1-Source img path"
	echo -e "\t2-New img width"
	echo -e "\t3-New img height"
	echo -e "\t4-New img name"
	exit 1
fi

metadata(){
	echo "Metadata of image: $1"
	echo "-----------------------------------"
	echo -e "Current Dims: " $(identify -ping -format '%wpx x %hpx' $1)
	echo -e "Current Size: " $(identify -ping -format '%b' $1)
}

metadata $img

convert $img -resize "$width"x"$height"\> $newImg

metadata $newImg


