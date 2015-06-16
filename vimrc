set shell=/bin/sh
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-surround'
Plugin 'justinmk/vim-sneak'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-vinegar'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/SimpylFold'
call vundle#end()
filetype plugin indent on
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
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

set backspace=2

" ultisnips
let g:ultisnips_python_style = "google"

" vim-jedi
let g:jedi#use_tabs_not_buffers = 0


" custom mappings

let mapleader = "ö"

let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
noremap <F8> :TagbarToggle<cr>

" map esc so it's easier on windows. Quite good on linux too
inoremap jf <esc>

" latex
inoremap <C-j> {
inoremap <C-l> }
inoremap <c-k> \
inoremap <Nul> <Nop>

" 1 for async, but needs vim server mode
let g:LatexBox_latexmk_async=0
noremap <leader>ll :Latexmk<cr>:LatexmkClean<cr>

" ctags
map <c-l> <c-]>
map <c-h> <c-t>
"<c-i> is the same as tab und this breaks stuff
"look for some other mapping
"map <c-i> g]

map <leader>u :GundoToggle<CR>

"movement buffers
noremap <leader>f :bnext<CR>
noremap <leader>d :bprevious<CR>

"movement in tabs
noremap <Leader>h <C-w>h
noremap <Leader>j <C-w>j
noremap <Leader>k <C-w>k
noremap <Leader>l <C-w>l

"copy to clipbord
vnoremap <Leader>c :w !xclip -selection clipboard<CR><CR>

"vim-dispatch
noremap <leader>b :Dispatch<cr>
noremap <leader>B :Dispatch!<cr>

" UltiSnips

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"
let g:UltiSnipsEditSplit="vertical"

" CtrlP

noremap <leader>t :CtrlPBuffer<CR>
noremap <leader>T :CtrlPMixed<CR>

" When editing a file, always jump to the last known cursor position

autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"vim sneak Sneak
let g:sneak#streak=1
