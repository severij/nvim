"==============================================================================
"                                  Plugins
"==============================================================================

call plug#begin('~/.vim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'fenetikm/falcon'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'justinmk/vim-sneak'

call plug#end()

"==============================================================================
"                              General Settings
"==============================================================================

set relativenumber
set ignorecase
set smartindent
set tabstop=8           
set softtabstop=4       
set shiftwidth=4
set expandtab
set incsearch
set hlsearch
set path+=**
set wildmenu

let mapleader = " "

set termguicolors
colorscheme falcon

"==============================================================================
"                               Plugin Settings
"==============================================================================

" Theme settings
let g:falcon_background = 1
let g:falcon_inactive = 1
let g:falcon_lightline = 1
let g:lightline = { 'colorscheme': 'falcon' }

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ }

let g:deoplete#enable_at_startup = 1

let g:sneak#label = 1

"==============================================================================
"                                  Mappings
"==============================================================================

" Escape terminal with Esc
tnoremap <Esc> <C-\><C-n>

nnoremap <silent> <c-f> :Files<cr>

nnoremap <silent> <c-b>d     :bd<cr>
nnoremap <silent> <c-b><c-d> :bd<cr>
nnoremap <silent> <c-b>b     :bn<cr>
nnoremap <silent> <c-b><c-b> :bn<cr>
nnoremap <silent> <c-b>l     :BLines<cr>
nnoremap <silent> <c-b><c-l> :BLines<cr>

nnoremap <leader>r :call LanguageClient#textDocument_rename()<cr>
nnoremap <leader>i :call LanguageClient#textDocument_hover()<cr>
nnoremap <leader>f :call LanguageClient#textDocument_formatting()<cr>

imap <C-j> <Plug>(neosnippet_expand_or_jump)
smap <C-j> <Plug>(neosnippet_expand_or_jump)
xmap <C-j> <Plug>(neosnippet_expand_target)

nmap <leader>a <Plug>(EasyAlign)
xmap <leader>a <Plug>(EasyAlign)

" Git
nnoremap <silent> <leader>gs :Gtatus<cr>
nnoremap <silent> <leader>gc :Gcommit<cr>
nnoremap <silent> <leader>gl :Glog<cr>
nnoremap <silent> <leader>gp :Gpull<cr>
nnoremap <silent> <leader>gP :Gpush<cr>

" Terminal
nmap <leader>t :terminal<cr>

