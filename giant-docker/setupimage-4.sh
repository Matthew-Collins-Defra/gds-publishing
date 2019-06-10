#!/bin/bash

cd ~
source ~/.rbenv_setup
sudo apt-get install libssl-dev -y -qq
rbenv install 2.5.3
rbenv install 2.6.3
rbenv local 2.6.3
rbenv rehash