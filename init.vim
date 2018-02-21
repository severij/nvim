set autoread
set nobackup
set noswapfile
set ruler
set incsearch

filetype plugin on
syntax enable
syntax on

highlight Folded ctermbg=236
highlight FoldColumn ctermbg=236
highlight ColorColumn ctermbg=236

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



" Mappings
nnoremap <Leader>f :FZF<CR>
tnoremap <Esc> <C-\><C-n>

call plug#begin('~/.config/nvim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'w0rp/ale'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug '~/.fzf' " You have to install this from GitHub beforehand
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/Vimchant'

call plug#end()
