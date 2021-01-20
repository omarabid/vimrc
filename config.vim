" ------------------
" -- VIM Settings --
" ------------------
set nocompatible
set fileformats=unix
set hidden
syntax on
filetype plugin indent on
set autochdir
set autoread " when a file has been detected to have been changed, read it again
au FocusGained,BufEnter * :checktime " autoreload on focus
set ttyfast
set number
set mouse=a

set tabstop=4     " Size of a hard tabstop (ts).
set shiftwidth=4  " Size of an indentation (sw).
set expandtab     " Always uses tabs instead of space characters (noet).
set autoindent    " Copy indent from current line when starting a new line (ai).
set noshowmode    " Not needed as Lightline replaces this functionality

set encoding=utf-8
set timeoutlen=300
set scrolloff=2

set relativenumber
set number
set colorcolumn=80

" Backup settings
set nobackup
set noswapfile

" Gui Settings
set nofoldenable
set ttyfast
set lazyredraw

" Color Schemes
set termguicolors
set t_Co=256
set bg=dark    " Setting dark mode

set guifont=MesloLGS\ NF:h15 " Set Font for GUI editors
colorscheme gruvbox
autocmd vimenter * colorscheme gruvbox

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
" Format scss files as css
au BufReadPost,BufRead,BufNewFile *.scss set filetype=css
