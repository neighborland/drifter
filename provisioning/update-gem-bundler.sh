#!/bin/bash
set -e
source /usr/local/share/chruby/chruby.sh
chruby $1
gem update --system
gem install bundler
gem update bundler
