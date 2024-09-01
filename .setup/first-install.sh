#!/bin/bash

# Stop executing on error
set -e

shopt -s expand_aliases

GIT_REPO_URL=git@github.com:diego09310/dotfiles.git
BASE_FOLDER=$HOME
DOTFILES_FOLDER=.dotfiles
DOTFILES_PATH=$BASE_FOLDER/$DOTFILES_FOLDER

# For styling
bold=$(tput bold)
normal=$(tput sgr0)


cd $BASE_FOLDER
echo "$DOTFILES_FOLDER" >> .gitignore

git init --bare $DOTFILES_PATH
alias gitdf="/usr/bin/git --git-dir=$DOTFILES_PATH --work-tree=$HOME"
gitdf config --local status.showUntrackedFiles no

echo "All set, remember to add ${bold}alias gitdf=\"/usr/bin/git --git-dir=$DOTFILES_PATH --work-tree=\$HOME\"${normal} to your console rc or aliases file"

