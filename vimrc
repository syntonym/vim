source ~/.vim/bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
syntax on
colorscheme distinguished

filetype plugin on 
let g:pydiction_location = '/home/syntonym/.vim/bundle/pydiction/complete-dict'

imap <C-j> {
imap <C-l> }
imap <c-k> \
imap <Nul> <Nop>

map <c-l> <c-]>
map <c-h> <c-t>
map <c-i> g]

set encoding=utf-8
set fileencoding=utf-8
