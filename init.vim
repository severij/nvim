" -----------------------------------------------------------------------------
"                                  Plugins
" -----------------------------------------------------------------------------

call plug#begin('~/.config/nvim/plugged')

" Install from GitHub first
Plug '~/.fzf'

Plug 'neomake/neomake'
" Plug 'Shougo/deoplete.nvim'
" Plug 'sirver/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/Vimchant'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'morhetz/gruvbox'
Plug 'donRaphaco/neotex', { 'for': 'tex' }

call plug#end()

"-------------------------------------------------------------------------------
"                             General settings
"-------------------------------------------------------------------------------

set ignorecase
set number relativenumber
set smartindent
set tabstop=8           
set softtabstop=4       
set shiftwidth=4
set expandtab           

let mapleader = ","
let g:deoplete#enable_at_startup = 1

highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.\+/

set bg=dark
let g:gruvbox_italic=1
colorscheme gruvbox

let g:neotex_enabled=1

call neomake#configure#automake('rw', 1000)

"-------------------------------------------------------------------------------
"                                 Mappings
"-------------------------------------------------------------------------------

" Windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k 
nnoremap <C-l> <C-w>l

" Buffers
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

" Fuzzy file finder
nnoremap <C-f> :FZF<CR>

" Escape terminal with Esc
tnoremap <Esc> <C-\><C-n>

" Fugitive
nnoremap <Leader>gs :Gstatus<CR>
" nnoremap <Leader>gdd :Gdiff<CR>
" nnoremap <Leader>gdg :diffget<CR>
" nnoremap <Leader>gdp :diffput<CR>
" nnoremap <Leader>gr :Gread<CR>
" nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gC :Gcommit<CR>
nnoremap <Leader>gp :Gpull<CR>
nnoremap <Leader>gP :Gpush<CR>
nnoremap <Leader>gb :Gbrowse<CR>
nnoremap <Leader>gc :Git checkout 



