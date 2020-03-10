#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# install Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#link vimrc
ln -sf "$DIR/vimrc" ~/.vimrc

#initialize Plug
vim -c PlugInstall -c q -c q


