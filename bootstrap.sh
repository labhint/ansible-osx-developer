#!/bin/sh

PROJECT_DIR=`mktemp -d "/tmp/ansible-osx-developer.XXXXXX"`

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)";

brew doctor;
brew update && brew upgrade;

brew install ansible;

git clone https://github.com/pavel-v-chernykh/ansible-osx-developer.git "${PROJECT_DIR}";

cd "${PROJECT_DIR}" && ansible-playbook ./developer.yaml;

# curl -LSs https://raw.githubusercontent.com/pavel-v-chernykh/ansible-osx-developer/master/bootstrap.sh -o /tmp/bootstrap.sh && sh /tmp/bootstrap.sh
