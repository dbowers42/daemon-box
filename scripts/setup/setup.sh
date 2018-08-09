#!/usr/bin/env bash

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins

source ~/.bash_profile

rbenv install -v 2.4.2
rbenv global 2.4.2

gem install bundler sinatra
