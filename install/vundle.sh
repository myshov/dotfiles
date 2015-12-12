#!/usr/bin/env bash

BUNDLE_DIR=~/.vim/bundle
SESSIONS_DIR=~/.vim/sessions

# Prepare folder for sessions
mkdir -p "$SESSIONS_DIR"

# Install/update Vundle
mkdir -p "$BUNDLE_DIR" && (git clone https://github.com/gmarik/vundle.git "$BUNDLE_DIR/vundle" || (cd "$BUNDLE_DIR/vundle" && git pull origin master))

# Install bundles
vim +PluginInstall +qall

# Compile YouCompleteMe
cd "$BUNDLE_DIR/YouCompleteMe" && python install.py

cd -
