#!/bin/sh

PROJECT_DIR=`mktemp -d "/tmp/ansible-osx-developer.XXXXXXXXXX"`

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor;
brew update && brew upgrade;

brew install ansible;

git clone --recursive https://github.com/pavel-v-chernykh/ansible-osx-developer.git "${PROJECT_DIR}";

cd "${PROJECT_DIR}" && ansible-playbook ./developer.yaml --user root --ask-sudo-pass
