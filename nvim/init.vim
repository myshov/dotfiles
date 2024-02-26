" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc
set nocompatible

" Load plugins

if filereadable(expand('$NVIMCONFIGS/plugins.vim'))
  source $NVIMCONFIGS/plugins.vim
endif


" General

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set laststatus=2                "Always display the status line
set hidden                      "Hide buffer instead of closing it
set pastetoggle=<F2>            "Paste without being smart

" Swap file and backups

set noswapfile
set nobackup
set nowb
au FocusLost * :wa

" Persistent undo

if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" Indentation

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Enable loading the plugin/indent files for specific file types

filetype plugin indent on

" Wrapping

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" Folding

set nofoldenable                "don't fold by default
set foldmethod=syntax           "fold based on syntax

" Search

set hlsearch
set incsearch
set ignorecase
set showmatch
set smartcase

" Terminal

set termencoding=utf-8

" Colors

syntax enable
set cursorline
set background=dark
" Workaround a problem with solarized and vim-gitgutter.
" https://github.com/airblade/vim-gitgutter/issues/696
autocmd ColorScheme * highlight! link SignColumn LineNr
highlight clear SignColumn
colorscheme solarized

" Scrolling

set scrolloff=4
set sidescrolloff=15
set sidescroll=1

" Completion

set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=list:longest
set wildignore=*.o,*.so,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.svg
set wildignore+=*.zip
set wildignore+=*.swp,*.pyc,*.bak,*.class,*.orig
set wildignore+=.git,.hg,.bzr,.svn


" Bindings

" Greping with silver searcher word under cursor
nnoremap <leader>k :silent grep! "\b\s?<C-R><C-W>\b"<CR>:cw<CR>:redr!<CR>

" Fix syntax highlighting issues
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

" Run node or browser on F5
autocmd BufRead,Bufenter *.js map <F5> :w<Esc>:!node %<CR>
autocmd BufRead,Bufenter *.html map <F5> :exe ':silent !open -a /Applications/Firefox.app %'<CR>:redr!<CR>

" Write with sudo
cmap wi! %!sudo tee > /dev/null %

" Turn off search highlight
nnoremap <leader>a :noh<CR>

" Prettier
nmap <Leader>p :exe ':silent !npx prettier --write %'<CR>

" The Silver Searcher
" List of ignored in ~/.agignore
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor\ --hidden
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" NERDTree

nmap <F7> :NERDTreeToggle<cr>
nmap <leader>f :NERDTreeFind<cr>


" Snippets

" UltiSnips completion function that tries to expand a snippet. If there's no
" snippet for expanding, it checks for completion window and if it's
" shown, selects first element. If there's no completion window it tries to
" jump to next placeholder. If there's no placeholder it just returns TAB key

"function! g:UltiSnips_Complete()
    "call UltiSnips#ExpandSnippet()
    "if g:ulti_expand_res == 0
        "if pumvisible()
            "return "\<C-n>"
        "else
            "call UltiSnips#JumpForwards()
            "if g:ulti_jump_forwards_res == 0
               "return "\<TAB>"
            "endif
        "endif
    "endif
    "return ""
"endfunction

"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"


" Air-line

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"
"" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Airline theme
let g:airline_theme='solarized'


" Bclose

map <leader>d :Bclose<CR>

nmap <leader>ln :let @" = join([expand("%"), line(".")], ":")<cr>
nmap <leader>lpn :let @" = join([expand("%:p"), line(".")], ":")<cr>
nmap <F10> :CtrlPBuffer<CR>
nmap <F9> :e project.txt<CR>
nmap <F8> <leader>ln
map gf gF

" DelimitMate

let delimitMate_expand_cr = 1


" Bufferegator

nnoremap <leader>h :BuffergatorMruCyclePrev<CR>
nnoremap <leader>j :BuffergatorMruCycleNext<CR>


" Syntastic

let g:syntastic_mode_map = {
\ "mode": "active",
\ "active_filetypes": ["c", "cpp", "java", "javascript", "python", "ruby", "typescript"],
\ "passive_filetypes": [] }


let g:syntastic_javascript_checkers = ['eslint']


" Languages related stuff

" Include path for C programs

set path+=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/

" Code folding for JavaScript

let javaScript_fold=1
autocmd BufEnter *.js :normal zR\<Enter\>   "fix initial fold closing


" TypeScript
" let g:tsuquyomi_disable_quickfix = 1
" let g:syntastic_typescript_checkers = ['tsuquyomi', 'eslint'] " You shouldn't use 'tsc' checker.
" autocmd FileType typescript nmap <buffer> <Leader>t : \ <C-u>echo tsuquyomi#hint()<CR>

" Attention! To avoid automatic selecting of the first item in the list
" you have to add `suggest.noselect: true` to coc config via :CocConfig

" To make the completion work like builtin completion without configuration,
inoremap <silent><expr> <C-n> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
inoremap <silent><expr> <C-p> coc#pum#visible() ? coc#pum#prev(1) : "\<C-p>"
inoremap <silent><expr> <down> coc#pum#visible() ? coc#pum#next(0) : "\<down>"
inoremap <silent><expr> <up> coc#pum#visible() ? coc#pum#prev(0) : "\<up>"
inoremap <silent><expr> <PageDown> coc#pum#visible() ? coc#pum#scroll(1) : "\<PageDown>"
inoremap <silent><expr> <PageUp> coc#pum#visible() ? coc#pum#scroll(0) : "\<PageUp>"

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" use <tab> and <shift-tab> for trigger completion and navigate
" to the next and previous complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <S-Tab>
      \ coc#pum#visible() ? coc#pum#prev(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Fix of unreadable floating windows in coc-vim
autocmd VimEnter,ColorScheme * hi! link CocFloating CocHintFloat

" Integrations

" Proper mouse support inside screen and tmux

set mouse+=a
if !has('nvim')
  set ttymouse=xterm2
endif

" lit element css support
let g:htl_css_templates = 1
