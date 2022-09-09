#!/usr/bin/env bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins
vim +PluginInstall +qall
