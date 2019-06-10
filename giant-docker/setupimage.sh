#!/usr/bin/env sh

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  
mkdir ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
source ~/.bashrc

sudo apt-get install libssl1.0-dev -y -qq
rbenv install 1.9.3-p550
rbenv local 1.9.3-p550
rbenv rehash
gem install bundler -v '1.17.3' --no-ri --no-rdoc

sudo apt-get install libssl-dev -y -qq
rbenv install 2.5.3
rbenv install 2.6.3
rbenv local 2.6.3
gem install bundler --no-ri --no-rdoc