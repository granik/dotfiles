set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'michalbachowski/vim-wombat256mod'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

if has("gui_running")
	set guioptions-=T  		" remove toolbar
	set guioptions-=r  		" remove right-hand scroll bar
	set guioptions-=L  		" remove left-hand scroll bar
	set guifont=Consolas:h11:cANSI  " set font
    colorscheme gruvbox
else
    colorscheme wombat256mod
endif

set t_Co=256

" UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set ttyfast

" use indentation of previous line
set autoindent

set smartindent
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
set softtabstop=4

set backspace=indent,eol,start

set nowrap
set textwidth=120

syntax on

" turn line numbers on
set number

" highlight matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" always show statusbar
set laststatus=2

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

" omnicomplete
autocmd FileType python setlocal completeopt-=preview

" completion popup height
set pumheight=10

let mapleader = ","

" shortcuts for faster tabbing
noremap <F1> :tabprevious<CR>
noremap <F2> :tabnext<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <tab> %
vnoremap <tab> %

" code block indenting without losing visual selection
" vnoremap < <gv
" vnoremap > >gv

" select last paste
nnoremap <leader>v `[v`]

set ignorecase   " case-insensitive searching
set smartcase    " case-insensitive only when all letters are lower-case
set cursorline   " cursor-line highlighting

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" vim-airline
set laststatus=2
