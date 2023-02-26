installYarn(){
    curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
}

installDep(){
    sudo apt-get update
    sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
}


cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >>$HOME/.bashrc
echo 'eval "$(rbenv init -)"' >>$HOME/.bashrc
#exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >>$HOME/.bashrc
#exec $SHELL
source  $HOME/.bashrc
rbenv install 3.1.2
rbenv global 3.1.2
gem install bundler
gem install rails -v 7.0.2.4
rbenv rehash
rails -v
