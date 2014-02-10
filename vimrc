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


" pydiction configeration
filetype plugin on 
let g:pydiction_location = '/home/syntonym/.vim/bundle/pydiction/complete-dict'

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


