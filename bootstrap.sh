#!/bin/sh

PROJECTS_DIR="${HOME}/Projects"
PROJECT_NAME="ansible-osx-developer"
PROJECT_DIR="${PROJECTS_DIR}/${PROJECT_NAME}"

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)";

brew doctor;
brew update && brew upgrade;

brew install ansible;

git clone https://github.com/pavel-v-chernykh/ansible-osx-developer.git "${PROJECT_DIR}";

cd "${PROJECT_DIR}" && ansible-playbook ./developer.yaml;

# curl -LSs https://raw.githubusercontent.com/pavel-v-chernykh/ansible-osx-developer/master/bootstrap.sh -o /tmp/boostrap.sh && sh /tmp/boostrap.sh
