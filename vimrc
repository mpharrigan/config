syntax on
filetype on
filetype plugin indent on
au BufRead,BufNewFile *.md set filetype=markdown

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
vmap <silent> k gk
vmap <silent> j gj
nmap <silent> k gk
nmap <silent> j gj
imap <silent> <Up> <C-o>gk
imap <silent> <Down> <C-o>gj
inoremap jj <Esc>

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set wrap lbr
set foldmethod=indent
set foldlevel=99
