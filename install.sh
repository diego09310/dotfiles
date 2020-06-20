#!/usr/bin/env bash

working_dir=`pwd`
pushd ~

ln -s ${working_dir}/.vimrc .
ln -s ${working_dir}/.vim .
#ln -s dotfiles/.tmux.conf .

mkdir -p .config/nvim

cat > ~/.config/nvim/init.vim <<EOF
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
EOF

popd
