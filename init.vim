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

highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)

" Escape terminal with Esc
tnoremap <Esc> <C-\><C-n>

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ }

let g:deoplete#enable_at_startup = 1

nnoremap <leader>r :call LanguageClient#textDocument_rename()<cr>
nnoremap <leader>i :call LanguageClient#textDocument_hover()<cr>
nnoremap <leader>f :call LanguageClient#textDocument_formatting()<cr>

imap <C-j>     <Plug>(neosnippet_expand_or_jump)
smap <C-j>     <Plug>(neosnippet_expand_or_jump)
xmap <C-j>     <Plug>(neosnippet_expand_target)

xmap <leader>a <Plug>(EasyAlign)
nmap <leader>a <Plug>(EasyAlign)

call plug#begin('~/.vim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

call plug#end()
