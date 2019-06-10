#!/usr/bin/env sh

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' > ~/.rbenv_setup
echo 'eval "$(rbenv init -)"' >> ~/.rbenv_setup
  
mkdir ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
