execute pathogen#infect()

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

inoremap jj <Esc>

syntax on
filetype on
filetype plugin indent on

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

au BufRead,BufNewFile *.md set filetype=markdown

set wrap lbr
vmap <silent> k gk
vmap <silent> j gj
nmap <silent> k gk
nmap <silent> j gj
imap <silent> <Up> <C-o>gk
imap <silent> <Down> <C-o>gj

if exists('+colorcolumn')
    set cc=80
endif

set modeline
set modelines=5

" Deal with overzealous defaults from sherlock's /etc/vimrc
set textwidth=0
set background=light
