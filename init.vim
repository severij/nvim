"          
"             ██████ ▓█████ ██▒   █▓▓█████  ██▀███   ██▓ ▄▄▄██▀▀▀
"           ▒██    ▒ ▓█   ▀▓██░   █▒▓█   ▀ ▓██ ▒ ██▒▓██▒   ▒██   
"           ░ ▓██▄   ▒███   ▓██  █▒░▒███   ▓██ ░▄█ ▒▒██▒   ░██   
"             ▒   ██▒▒▓█  ▄  ▒██ █░░▒▓█  ▄ ▒██▀▀█▄  ░██░▓██▄██▓  
"           ▒██████▒▒░▒████▒  ▒▀█░  ░▒████▒░██▓ ▒██▒░██░ ▓███▒   
"           ▒ ▒▓▒ ▒ ░░░ ▒░ ░  ░ ▐░  ░░ ▒░ ░░ ▒▓ ░▒▓░░▓   ▒▓▒▒░   
"           ░ ░▒  ░ ░ ░ ░  ░  ░ ░░   ░ ░  ░  ░▒ ░ ▒░ ▒ ░ ▒ ░▒░   
"           ░  ░  ░     ░       ░░     ░     ░░   ░  ▒ ░ ░ ░ ░   
"                 ░     ░  ░     ░     ░  ░   ░      ░   ░   ░   
"                               ░                                
"
"-------------------------------------------------------------------------------
"                             General Settings
"-------------------------------------------------------------------------------

set nobackup
set noswapfile

set ignorecase

set number relativenumber
set smartindent
set tabstop=8           
set softtabstop=4       
set shiftwidth=4
set expandtab           

let g:ale_linters = {
\   'python': ['pylint'],
\}


highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.\+/

"-------------------------------------------------------------------------------
"                                 Mappings
"-------------------------------------------------------------------------------

nnoremap <C-h> <C-w>h " Move to the window on the left
nnoremap <C-j> <C-w>j " Move to the window below
nnoremap <C-k> <C-w>k " Move to the window above
nnoremap <C-l> <C-w>l " Move to the window on the right

nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

nnoremap <Space> /
nnoremap <C-Space> ?
nnoremap <C-q> :q<cr>

nnoremap <S-k> 080lBhxi<cr><esc>

nnoremap <C-f> :FZF<CR>
tnoremap <Esc> <C-\><C-n>

function MakeNode()
    let content = input('New node: ')
    let contentWidth = strchars(content)
    execute "normal! i┏━\e" . contentWidth . "i━\ei━┓\r\e"
    execute "normal! i┃ " . content . " ┃\e"
endfunction

" -----------------------------------------------------------------------------
"                                  Plugins
" -----------------------------------------------------------------------------
"
"  ┏━━━━━━━━┓
"  ┃ Jeejee ┃

call plug#begin('~/.config/nvim/plugged')

Plug 'w0rp/ale'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug '~/.fzf' " You have to install this from GitHub beforehand
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/Vimchant'

call plug#end()
