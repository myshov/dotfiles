" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :PluginInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +PluginClean! +PluginInstall +qall
" Filetype off is required by vundle

filetype off

set rtp+=$HOME/.vim/bundle/vundle/
call vundle#begin("$HOME/.vim/bundle")

" let Vundle manage Vundle (required)

Plugin 'gmarik/vundle'

" Generic

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'lyokha/vim-xkbswitch'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'rking/ag.vim'
Plugin 'sagarrakshe/toggle-bool'

" Git

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Syntax hightlighting & colors

Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'trusktr/seti.vim'
Plugin 'myshov/vim-color-smycking'

" Completion & snippets

" Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" JavaScript

Plugin 'pangloss/vim-javascript'
" Plugin 'marijnh/tern_for_vim'
Plugin 'moll/vim-node'
Plugin 'mxw/vim-jsx'
Plugin 'prettier/vim-prettier'

" Integrations

Plugin 'christoomey/vim-tmux-navigator'

" Other

Plugin 'tpope/vim-markdown'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/goyo.vim'

call vundle#end()

"Filetype plugin indent on is required by vundle
filetype plugin indent on
