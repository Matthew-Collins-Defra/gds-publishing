#!/bin/bash

cd ~
source ~/.rbenv_setup
cd /var/govuk/govuk-guix
sudo apt-get install wget
sudo gpg --keyserver pool.sks-keyservers.net --recv-keys 3CE464558A84FDC69DB40CFB090B11993D9AEBB5
#wget https://git.savannah.gnu.org/cgit/guix.git/plain/etc/guix-install.sh
echo y | sudo /home/govuk/guix-install.sh
exit 0
