#!/bin/sh

PROJECTS_DIR="${HOME}/Projects"

PROJECT_NAME="ansible-osx-developer"
PROJECT_DIR="${PROJECTS_DIR}/${PROJECT_NAME}"

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)";

brew doctor;
brew update && brew upgrade;

brew install ansible;

mkdir "${PROJECTS_DIR}";
git clone https://github.com/pavel-v-chernykh/ansible-osx-developer.git "${PROJECT_DIR}";
cd "${PROJECT_DIR}";

ansible-playbook ./provision/developer.yaml;
