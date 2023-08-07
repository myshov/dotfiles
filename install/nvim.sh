#!/usr/bin/env bash

# Link vim configs for neovim
mkdir -p ~/.config/nvim
# ln -sfv "$DOTFILES_DIR/vim/vimrc" ~/.vimrc
ln -sfv "$DOTFILES_DIR/nvim/init.vim" ~/.config/nvim/init.vim

# Download vim-plug and initialize autoload directory
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins
nvim +PlugInstall +qall

# Install dependencies for TypeScript support in coc-nvim
cd "$DOTFILES_DIR/nvim/plugged/coc.nvim"
npm install
nvim "+CocInstall coc-json coc-tsserver"
# FIXME: can't execute commands in sequence
# qall works right away and doesn't wait CocInstall command
# Command was taken from
# https://vi.stackexchange.com/questions/34693/how-to-run-multiple-commands-sequentially-in-nvim
# nvim --headless -c "CocInstall coc-json coc-tsserver" -c "qall"
cd ~
