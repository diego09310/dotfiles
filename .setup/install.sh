#!/bin/bash

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

git clone --bare $GIT_REPO_URL $DOTFILES_PATH
alias gitdf "/usr/bin/git --git-dir=$DOTFILES_PATH --work-tree=$HOME"

config checkout
if [ $? = 0 ]; then
    echo "Checked out config.";
else
    echo "Backing up pre-existing dot files in folder $(pwd)/.config-backup/";
    mkdir -p .config-backup
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no

echo "All set, remember to add ${bold}alias gitdf=\"/usr/bin/git --git-dir=$DOTFILES_PATH --work-tree=\$HOME\"${normal} to your console rc or aliases file"

