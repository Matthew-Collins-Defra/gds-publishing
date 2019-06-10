#!/bin/bash

cd ~
source ~/.rbenv_setup
cd /
sudo tar zxvf /home/govuk/usr-share-puppet.tgz
cd /var/govuk/govuk-puppet
bundle install
bundle exec rake librarian:install
