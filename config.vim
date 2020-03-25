" ------------------
" -- VIM Settings --
" ------------------
set nocompatible
set fileformats=unix
set hidden
syntax on
filetype plugin indent on
set autochdir
set ttyfast
set number
set mouse=a

set tabstop=4     " Size of a hard tabstop (ts).
set shiftwidth=4  " Size of an indentation (sw).
set expandtab   " Always uses tabs instead of space characters (noet).
set autoindent    " Copy indent from current line when starting a new line (ai).

set encoding=utf-8
set timeoutlen=300
set scrolloff=2

set relativenumber
set number
set colorcolumn=80
set tw=80

" Backup settings
set nobackup
set noswapfile

" Set Undo File
set undofile
" Undo File Location
" TODO This directory must be created manually
set undodir=~/.vimundo/

" Backspace properly
set backspace=indent,eol,start

" Format tpl files as html
au BufReadPost *.tpl set syntax=html
au BufReadPost *.tpl set filetype=html
