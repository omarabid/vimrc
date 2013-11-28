" Basic Settings
set nocompatible 
set fileformats=unix
syntax on
filetype off

" Bundles Manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" -- Bundles
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
" Properly indent PHP Code
Bundle 'vim-scripts/PHP-correct-Indenting'
" Properly indent PHP/HTML Code
Bundle 'vim-scripts/php.vim-html-enhanced'
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
" Bufferline
Bundle 'bling/vim-bufferline'
" Undolist viewer
Bundle 'sjl/gundo.vim'
" Better HTML editing
Bundle 'tpope/vim-surround'

let g:bufferline_echo = 0 

" -- Syntastic Configuration
"
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_ormat = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
" Status line customization
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" Syntax Checkers
let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_html_checkers = ['w3']
let g:syntastic_php_checkers = ['phpcs']
let g:syntastic_php_phpcs_args = ""

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

" Indentation Settings
set noexpandtab
set shiftwidth=4
set tabstop=4

" Coding settings
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

" Backup settings
set nobackup
set noswapfile

" Highlight current line
set cul                                      
hi CursorLine term=none cterm=none ctermbg=0

" Backspace properly
set backspace=indent,eol,start 

" Replace Function
vmap r "_dP

" -- Key Shortcuts
"

" Disable keyboard arrows
nnoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <down> <nop>

" Keymap for switching panels
map <silent> <SPACE>k :wincmd k<CR>
map <silent> <SPACE>j :wincmd j<CR>
map <silent> <SPACE>h :wincmd h<CR>
map <silent> <SPACE>l :wincmd l<CR>

" Keymap for TagBar
nmap <F8> :TagbarToggle<CR>

" Keymap for Syntax Checking
nmap <F6> :SyntasticCheck<CR>
nmap <F7> :Errors<CR>

" Keymap for modes switching
imap jj <Esc>

" Selection Shortcuts
nnoremap B vit
nnoremap V vat

" -- File Syntax Settings
"

" tpl -> html
au BufReadPost *.tpl set syntax=html
au BufReadPost *.tpl set filetype=html
