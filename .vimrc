" Basic Settings
set nocompatible 
set fileformats=unix
syntax on
filetype off

" Bundles Manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
"
" Bundle Manager
Bundle 'gmarik/vundle'
" Directory browser
Bundle 'scrooloose/nerdtree'
" Source Code browser 
Bundle 'majutsushi/tagbar' 
" Match HTML Tags
Bundle 'gregsexton/MatchTag'
" Properly indent JavaScript Code 
Bundle 'JavaScript-Indent' 
" Plenty of color schemes
Bundle 'flazz/vim-colorschemes' 
" Easily switch between color schemes
Bundle 'ScrollColors' 
" Autosave
Bundle 'vim-scripts/vim-auto-save' 
" Syntax Checking
Bundle 'scrooloose/syntastic' 
" Better Status line
Bundle 'bling/vim-airline'
" Git Integration
Bundle 'tpope/vim-fugitive'

" Syntastic Configuration
"
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" Syntax Checkers
let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_html_checkers = ['w3']
let g:syntastic_php_checkers = ['phpcs']

" Bundle Config End
filetype plugin indent on

" Open NerdTree
autocmd vimenter * NERDTree

" Minibuf Configuration
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" AutoSave Settings
let g:auto_save = 1

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
" tpl -> html
au BufReadPost *.tpl set syntax=html
au BufReadPost *.tpl set filetype=html

" Backup settings
set nobackup
set noswapfile

" Highlight current line
set cul                                      
hi CursorLine term=none cterm=none ctermbg=0

" Key Shortcuts
"
"

" Disable keyboard arrows
nnoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <down> <nop>

" Keymap for switching panels
map <silent> <C-K> :wincmd k<CR>
map <silent> <C-J> :wincmd j<CR>
map <silent> <C-H> :wincmd h<CR>
map <silent> <C-L> :wincmd l<CR>

" Keymap for TagBar
nmap <F8> :TagbarToggle<CR>

" Keymap for Syntax Checking
nmap <F6> :SyntasticCheck<CR>
nmap <F7> :Errors<CR>

" Keymap for modes switching
imap jj <Esc>
