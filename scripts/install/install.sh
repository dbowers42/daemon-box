#!/usr/bin/env bash
apt-get update
apt-get upgrade
apt-get install tmux -y
apt-get install git -y

# System wide install and setup
source /vagrant/scripts/install/docker.sh
source /vagrant/scripts/install/neovim.sh

# User level install and setup
cp -rs /vagrant/config/. /home/vagrant/
su -c "source /vagrant/scripts/setup/setup.sh" vagrant

