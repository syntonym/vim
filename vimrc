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

set autoindent

"activate filetypeplugins
filetype plugin indent on

" vim-airline
set laststatus=2

" ultisnips
let g:ultisnips_python_style = "google"


" custom mappings

let mapleader = "ö"

" latex
inoremap <C-j> {
inoremap <C-l> }
inoremap <c-k> \
inoremap <Nul> <Nop>

" ctags
map <c-l> <c-]>
map <c-h> <c-t>
"<c-i> is the same as tab und this breaks stuff
"look for some other mapping
"map <c-i> g]

map <leader>u :GundoToggle<CR>

"movement in tabs
noremap <Leader>h <C-w>h
noremap <Leader>j <C-w>j
noremap <Leader>k <C-w>k
noremap <Leader>l <C-w>l

"nerdtree
let NERDTreeQuitOnOpen = 1
noremap <Leader>f :NERDTree<CR>
