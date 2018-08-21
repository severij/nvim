call plug#begin('~/.vim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-fugitive'
Plug 'fenetikm/falcon'
Plug 'hecal3/vim-leader-guide'
Plug 'lambdalisue/suda.vim'

call plug#end()

" General settings
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

" Escape terminal with Esc
tnoremap <Esc> <C-\><C-n>

" Theme settings
let g:falcon_background = 1
let g:falcon_inactive = 1
let g:falcon_lightline = 1
let g:lightline = { 'colorscheme': 'falcon' }

set termguicolors
colorscheme falcon



let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ }

let g:deoplete#enable_at_startup = 1

let mapleader = " "

"nnoremap <leader>r :call LanguageClient#textDocument_rename()<cr>
"nnoremap <leader>i :call LanguageClient#textDocument_hover()<cr>
"nnoremap <leader>f :call LanguageClient#textDocument_formatting()<cr>

imap <C-j> <Plug>(neosnippet_expand_or_jump)
smap <C-j> <Plug>(neosnippet_expand_or_jump)
xmap <C-j> <Plug>(neosnippet_expand_target)

call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')

nmap <leader>a <Plug>(EasyAlign)
xmap <leader>a <Plug>(EasyAlign)

" File related mappings
nmap <leader>ff :Denite file/rec<cr>

" Window related mappings
nmap <leader>wd :conf q<cr>
nmap <leader>ws :sp<cr>
nmap <leader>wv :vsp<cr>

" Buffer related mappings
nmap <leader>bb :Denite buffer<cr>
nmap <leader>bd :conf bd<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bp :bprevious<cr>

" Git
nmap <leader>gs :Gstatus<cr>

" Terminal
nmap <leader>t :terminal<cr>

let g:lmap = {}
let g:lmap.a = ['EasyAlign', 'Align']
let g:lmap.b = {'name': 'buffers'}
let g:lmap.b.b = ['Denite buffer', 'list buffers']
let g:lmap.b.d = ['bd', 'delete buffer']
let g:lmap.b.n = ['bn', 'next buffer']
let g:lmap.b.p = ['bprevious', 'previous buffer']
let g:lmap.f = {'name': 'files'}
let g:lmap.f.f = ['Denite file/rec', 'find file']
let g:lmap.g = {'name': 'git'}
let g:lmap.t = ['terminal', 'terminal']

let g:lmap.w = {'name': 'windows'}
let g:lmap.w.d = ['conf q', 'kill window']
let g:lmap.w.s = ['sp', 'horizontal split']
let g:lmap.w.v = ['vsp', 'vertical split']


call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
