#!/bin/bash
cd $HOME

sudo apt install curl
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn -y


git clone https://github.com/rbenv/rbenv.git 
git clone https://github.com/rbenv/ruby-build.git 
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source $HOME/.bashrc

~/.rbenv
~/.rbenv/plugins/ruby-build

rbenv install 3.1.2
rbenv global 3.1.2
gem install bundler
gem install rails -v 7.0.2.4
rbenv rehash
rails -v

