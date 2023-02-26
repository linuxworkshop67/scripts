#!/bin/bash
echo "Updating the system now!"
sleep 5
sudo apt update
sudo apt upgrade -y
echo "Installing Build essentials!"
sleep 3
sudo apt install build-essential linux-headers-$(uname -r) -y
echo "Disabling animations"
sleep 3
gsettings set org.gnome.desktop.interface enable-animations false
echo "Removing unnecessary programs!"
sleep 3
sudo apt purge apport aisleriot gnome-mahjongg gnome-sudoku gnome-mines  -y
echo "Installing flameshot and other utitilites"
sleep 3
sudo apt install flameshot vlc deluge geany tilix -y
sudo apt install gcc make perl nemo git python3-pip -y
sudo apt install curl wget tree htop net-tools vim -y
sudo apt install neofetch caffeine samba smbclient gnome-tweaks -y
echo "Installing Snapd and flatpack gnome integration"
sleep 3
sudo apt install snapd flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap -y
echo "Installing Restricted extras"
sleep 3
sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons -y
echo "Setting up your github email and user"
echo "Enter your github username: " 
read gname
eacho "Enter email addressed used for github"
read gemail
echo "GNAME=$gname" >> $HOME/.bashrc
echo "GEMAIL=$gemail" >> $HOME/.bashrc

git config --global user.name $gname
git config --global user.email $gemail
echo "Generating ssh key"
ssh-keygen -t ed25519 -C $gemail
echo "All is done. Your PC will restart in 5 seconds"
echo "Please take a snapshot if using virtual machine!"


