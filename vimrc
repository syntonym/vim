" pathogen 
source ~/.vim/bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" encoding
set encoding=utf-8
set fileencoding=utf-8

" colortheme solarized
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
syntax on
set background=dark
colorscheme solarized

" linenumbers
set number

let mapleader = "ö"
map <Leader>h <C-w>h
map <Leader>j <C-w>j
map <Leader>k <C-w>k
map <Leader>l <C-w>l
map <Leader>f :NERDTree<CR>

let NERDTreeQuitOnOpen = 1

" pydiction configeration
filetype plugin on 
let g:pydiction_location = '/home/syntonym/.vim/bundle/pydiction/complete-dict'

" vim-airline
set laststatus=2

set autoindent

"
" custom mappings
"
" latex
imap <C-j> {
imap <C-l> }
imap <c-k> \
imap <Nul> <Nop>

" ctags
map <c-l> <c-]>
map <c-h> <c-t>
map <c-i> g]

map <leader>u :GundoToggle<CR>


