" Basic Settings
set nocompatible 
set fileformats=unix
syntax on

" Disable keyboard arrows
nnoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <down> <nop>

" Bundle Config Start
filetype off

" Bundles Manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree' 
Bundle 'majutsushi/tagbar' 
Bundle 'gregsexton/MatchTag'
Bundle 'JavaScript-Indent'
Bundle 'flazz/vim-colorschemes'
Bundle 'ScrollColors'

" Bundle Config End
filetype plugin indent on

" Open NerdTree
autocmd vimenter * NERDTree

" Minibuf Configuration
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" Keymap for TagBar
nmap <F8> :TagbarToggle<CR>

" Keymap for switching panels
map <silent> <C-K> :wincmd k<CR>
map <silent> <C-J> :wincmd j<CR>
map <silent> <C-H> :wincmd h<CR>
map <silent> <C-L> :wincmd l<CR>

" Color Scheme
set t_Co=256
colorscheme symfony

" Coding settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
set mouse=a

" Folding Settings
set foldmethod=indent
set foldlevelstart=1

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

" File Syntax Settings
au BufReadPost *.tpl set syntax=html
au BufReadPost *.tpl set filetype=html

" Backup settings
set nobackup
set noswapfile

" Highlight current line
set cul                                      
hi CursorLine term=none cterm=none ctermbg=0
