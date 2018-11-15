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
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-commentary'

call plug#end()

"------------------------------------------------------------------------------
"                              General Settings
"------------------------------------------------------------------------------

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

au TermOpen * setlocal nonumber norelativenumber bufhidden=hide

let mapleader = " "

set termguicolors
colorscheme falcon

let g:python3_host_prog = "/usr/bin/python3"

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

"------------------------------------------------------------------------------
"                                  Mappings
"------------------------------------------------------------------------------

" Terminal
tnoremap <Esc> <C-\><C-n>
nnoremap <silent> <c-s>s     :terminal<cr>i
nnoremap <silent> <c-s><c-s> :terminal<cr>i
nnoremap <silent> <c-s>h     <c-w>v:terminal<cr>i
nnoremap <silent> <c-s><c-h> <c-w>v:terminal<cr>i
nnoremap <silent> <c-s>j     <c-w>s<c-w>j:terminal<cr>i
nnoremap <silent> <c-s><c-j> <c-w>s<c-w>j:terminal<cr>i
nnoremap <silent> <c-s>k     <c-w>s:terminal<cr>i
nnoremap <silent> <c-s><c-k> <c-w>s:terminal<cr>i
nnoremap <silent> <c-s>l     <c-w>v<c-w>l:terminal<cr>i
nnoremap <silent> <c-s><c-l> <c-w>v<c-w>l:terminal<cr>i
tnoremap <silent> <c-s>h     <c-\><c-n><c-w>v:terminal<cr>i
tnoremap <silent> <c-s><c-h> <c-\><c-n><c-w>v:terminal<cr>i
tnoremap <silent> <c-s>j     <c-\><c-n><c-w>s<c-w>j:terminal<cr>i
tnoremap <silent> <c-s><c-j> <c-\><c-n><c-w>s<c-w>j:terminal<cr>i
tnoremap <silent> <c-s>k     <c-\><c-n><c-w>s:terminal<cr>i
tnoremap <silent> <c-s><c-k> <c-\><c-n><c-w>s:terminal<cr>i
tnoremap <silent> <c-s>l     <c-\><c-n><c-w>v<c-w>l:terminal<cr>i
tnoremap <silent> <c-s><c-l> <c-\><c-n><c-w>v<c-w>l:terminal<cr>i

" Windows
nnoremap <silent> <c-w>d     :q<cr>
nnoremap <silent> <c-w><c-d> :q<cr>

" Buffers
nnoremap <silent> <c-b>n     :ene<cr>
nnoremap <silent> <c-b><c-n> :ene<cr>
nnoremap <silent> <c-b>d     :bd<cr>
nnoremap <silent> <c-b><c-d> :bd<cr>
nnoremap <silent> <c-b>b     :bn<cr>
nnoremap <silent> <c-b><c-b> :bn<cr>
nnoremap <silent> <c-b>B     :bp<cr>
nnoremap <silent> <c-b>o     :%bd<cr><c-o>
nnoremap <silent> <c-b><c-o> :%bd<cr><c-o>

" Tabs
nnoremap <silent> <c-t>n     :tabe<cr>
nnoremap <silent> <c-t><c-n> :tabe<cr>
nnoremap <silent> <c-t>d     :tabc<cr>
nnoremap <silent> <c-t><c-d> :tabc<cr>
nnoremap <silent> <c-t>t     :tabn<cr>
nnoremap <silent> <c-t><c-t> :tabn<cr>
nnoremap <silent> <c-t>T     :tabp<cr>
nnoremap <silent> <c-t>o     :tabo<cr>
nnoremap <silent> <c-t><c-o> :tabo<cr>
nnoremap <silent> <c-t>h     :tabm -<cr>
nnoremap <silent> <c-t><c-h> :tabm -<cr>
nnoremap <silent> <c-t>l     :tabm +<cr>
nnoremap <silent> <c-t><c-l> :tabm +<cr>
nnoremap <silent> <c-t>g     :tabs<cr>:tabn call getchar()<cr>


nnoremap <c-b>l     :BLines<cr>
nnoremap <c-b><c-l> :BLines<cr>

nnoremap <silent> <c-f> :Files<cr>


nnoremap <leader>r :call LanguageClient#textDocument_rename()<cr>
nnoremap <leader>i :call LanguageClient#textDocument_hover()<cr>
nnoremap <leader>f :call LanguageClient#textDocument_formatting()<cr>

imap <C-j> <Plug>(neosnippet_expand_or_jump)
smap <C-j> <Plug>(neosnippet_expand_or_jump)
xmap <C-j> <Plug>(neosnippet_expand_target)

nmap <leader>a <Plug>(EasyAlign)
xmap <leader>a <Plug>(EasyAlign)
