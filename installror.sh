#!/bin/bash
echo "This script will install the following packages:"
PACK=('ruby-full' 'sqlite3' 'sqlitebrowser' 'libsqlite3-dev' 'yarn' 'nodejs' 'npm' 'rails')
installer(){
 sudo apt install ${PACK[@]} -y
 gem install sqlite3 webdrivers childprocess xpath
}
for pack in ${PACK[@]}
do
	echo -e "\t 📦 $pack"
done
read -p "continue? " ans
[[ $ans == "y" ]] && installer || echo "Installation canceled"



