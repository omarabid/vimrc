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
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'

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
nmap <silent> <F1> :wincmd k<CR>

" Coding settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
set mouse=a

" Backup settings
set nobackup
set noswapfile

" Highlight current line
set cul                                      
hi CursorLine term=none cterm=none ctermbg=7
