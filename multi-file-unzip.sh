#!/bin/bash

echo "Simple script to unzip multiple zip files"
echo "See error.log for any errors encounter"
read -p "Enter Absolute path of files location: " loc
echo "Locaton is: $loc."
echo "All the files in $loc"
ls $loc/*.zip -1
read -p "is this correct?" ans
if [ $ans == 'y' ]
then

    for i in $(ls $loc/*.zip)
    do
        echo "Unziping $i"
         unzip $i 2> error.log 
        echo "Done unzipping $i"
    done
else
    echo "Unzip cancelled"
    exit 1
fi
