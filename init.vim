
call plug#begin('~/.config/nvim/plugged')

Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'justinmk/vim-sneak'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/Vimchant'
Plug 'w0rp/ale'

call plug#end()

set number
set ignorecase
set smartindent
set tabstop=8           
set softtabstop=4       
set shiftwidth=4
set expandtab           

let g:sneak#label = 1
let g:sneak#s_next = 1
let g:sneak#use_ic_scs = 1
let g:sneak#target_labels = "ghfjdkslHGJFKDLSyturiebvncmx"

let g:neotex_enabled=1

" Escape terminal with Esc
tnoremap <Esc> <C-\><C-n>

" Controlling buffers
nnoremap <C-b>j :bn<cr>
nnoremap <C-b>k :bp<cr>
nnoremap <C-b><C-j> :bn<cr>
nnoremap <C-b><C-j> :bp<cr>

" Controlling tabs
nnoremap <C-t>n :tabnew<cr>
nnoremap <C-t>c :tabclose<cr>
nnoremap <C-t>l :tabnext<cr>
nnoremap <C-t>h :tabprevious<cr>
nnoremap <C-t><C-n> :tabnew<cr>
nnoremap <C-t><C-c> :tabclose<cr>
nnoremap <C-t><C-l> :tabnext<cr>
nnoremap <C-t><C-h> :tabprevious<cr>

