" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using plugin manager.

call plug#begin(expand('$VIM/plugged'))

" Generic

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'rbgrouleff/bclose.vim'
Plug 'Raimondi/delimitMate'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'lyokha/vim-xkbswitch'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'rking/ag.vim'
" Plug 'sagarrakshe/toggle-bool'

" Git

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Syntax hightlighting & colors

Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'trusktr/seti.vim'
Plug 'myshov/vim-color-smycking'

" Completion & snippets

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim'

" JavaScript

Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier'

" TypeScript
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

" Integrations

Plug 'christoomey/vim-tmux-navigator'

" Other

Plug 'tpope/vim-markdown'
Plug 'mattn/emmet-vim'
Plug 'junegunn/goyo.vim'

" Initialize plugin system

call plug#end()
