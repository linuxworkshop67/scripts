#!/bin/bash
echo "This script will install the following packages:"
PACK=('ruby-full' 'sqlite3' 'sqlitebrowser' 'libsqlite3-dev' 'yarn' 'nodejs' 'npm' 'rails' 'git-core' 'zlib1g-dev' 'build-essential' 'libssl-dev' 'libreadline-dev' 'libyaml-dev' 'libsqlite3-dev' 'sqlite3' 'libxml2-dev' 'libxslt1-dev' 'libcurl4-openssl-dev' 'software-properties-common' 'libffi-dev' 'nodejs' 'yarn')



installer(){
  sudo apt install ${PACK[@]} -y
  echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
  source $HOME/.bashrc
  rbenv install 3.1.2
  rbenv global 3.1.2


  gem install rails -v 7.0.2.4
  gem install bundler sqlite3 webdrivers childprocess xpath
  rbenv rehash

}
for pack in ${PACK[@]}
do
	echo -e "\t 📦 $pack"
done
read -p "continue? " ans
[[ $ans == "y" ]] && installer || echo "Installation canceled"



