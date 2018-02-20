set autoread
set nobackup
set noswapfile
set ruler
set incsearch

syntax enable
syntax on

set path=**

set number relativenumber
set colorcolumn=80
set autoindent 
set smartindent
set tabstop=8           
set softtabstop=4       
set shiftwidth=4
set expandtab           
set smarttab
set wildmenu

let g:ale_linters = {
\   'python': ['pylint'],
\}

call plug#begin('~/.config/nvim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'w0rp/ale'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'


call plug#end()
