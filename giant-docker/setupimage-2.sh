#!/bin/bash

cd ~
source ~/.rbenv_setup
sudo apt-get install libssl1.0-dev -y -qq
rbenv install 1.9.3-p550
rbenv local 1.9.3-p550
rbenv rehash
