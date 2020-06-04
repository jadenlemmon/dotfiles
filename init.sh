#!/usr/bin/env bash

echo '\n Building Homebrew'
sudo chown -R $USER /usr/local
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle
brew cleanup

# https://www.stevenrombauts.be/2018/01/use-dnsmasq-instead-of-etc-hosts/
brew install dnsmasq