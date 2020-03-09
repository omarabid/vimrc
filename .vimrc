set shell=/bin/bash

" Basic Settings

" Bundles Manager
set rtp+=~/.nvim/bundle/vundle/
call vundle#begin()


" -- Bundles
"

" Bundle Manager
Bundle 'gmarik/vundle'
" Buffer browser
Bundle 'ap/vim-buftabline'
" Directory browser
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
" Git support for NerdTree
Bundle 'Xuyuanp/nerdtree-git-plugin'
" Better Status line
Bundle 'itchyny/lightline.vim'
" Git Integration
Bundle 'tpope/vim-fugitive'
" Git Gutters
Bundle 'airblade/vim-gitgutter'
" Git commits Browser
Bundle 'junegunn/gv.vim'
" Auto Close Brackets
Bundle 'Raimondi/delimitMate'
" Nerd Commenting
Bundle 'scrooloose/nerdcommenter'
" Substitute highliting
Bundle 'osyo-manga/vim-over'
" VIM Motion
Bundle 'easymotion/vim-easymotion'
" Wiki for Vim
Bundle 'vimwiki/vimwiki'
" Calendar
Bundle 'itchyny/calendar.vim'
" Markdown Support
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
" Undo Tree
Bundle 'mbbill/undotree'
" Properly mark indentation
Bundle 'thaerkh/vim-indentguides'
" Matchup Code
Bundle 'andymass/vim-matchup'
" Semantic language support
Bundle 'neoclide/coc.nvim', {'branch': 'release'}
" Rust Syntax
Bundle 'rust-lang/rust.vim'
" HTML/JS Syntax
Bundle 'maksimr/vim-jsbeautify'
" JSX/TypeScript highlighting
Bundle 'HerringtonDarkholme/yats.vim'
Bundle 'maxmellon/vim-jsx-pretty'

call vundle#end()

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


" Handle Clipboard Properly
" Source: https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim
noremap y "*y
noremap yy "*yy
noremap p "*p:w<CR>
noremap d d:w<CR>
noremap dd dd:w<CR>

" Format tpl files as html
au BufReadPost *.tpl set syntax=html
au BufReadPost *.tpl set filetype=html

" -- Leader Mapping
"
let mapleader = ","
let maplocalleader = "\\"

" -- Syntax Checking Toggle
"
nnoremap SS :setlocal spell! spelllang=en_us<CR>

" --------------------------
" -- Plguin Configuration --
" --------------------------

" -- Indentation highligting configuration
"
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'

" -- Lightline Configuration
"
let g:lightline = {
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'fugitive#head'
            \ },
            \ }

" -- Status line customization
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" -- NerdTree Configuration
"
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.DS_Store$', '.git$', 'Cargo.lock']
nnoremap nj :NERDTreeToggle<CR>

" Remove the underline for the highlighted line. This should be placed here
" after the colorscheme selection to override its' settings.
set cul
hi CursorLine term=bold cterm=bold guibg=Grey40

" -- Folding Settings
"
set foldmethod=indent
set foldlevelstart=1

let javaScript_fold=1         " JavaScript
let php_folding=1             " PHP
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script


" -- Rust Racer Configuration
"

let $RUST_SRC_PATH = systemlist("rustc --print sysroot")[0] . "/lib/rustlib/src/rust/src"

" -- Rust Settings
"  - Disable Rust Autosave as it conflicts with the autosave plugin
let g:rustfmt_autosave = 0
let g:rustfmt_command = "rustfmt +nightly"
let g:rustfmt_fail_silently = 0

"  - Other
"au FileType rust nmap <silent> <C-]> <Plug>(rust-def)
"au FileType rust nmap <silent> <C-w><C-]> <Plug>(rust-def-vertical)
"au FileType rust nmap <silent> <C-w>} <Plug>(rust-def-split)
"au FileType rust nmap <silent> <C-k> <Plug>(rust-doc)

set updatetime=3000

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" -----------------
" -- Key Mapping --
" -----------------

" Substitute highlighting
command S execute "OverCommandLine"

" Disable keyboard arrows
nnoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <down> <nop>

" Center screen while scrolling
nnoremap j jzz
nnoremap k kzz

" Keymap for switching panels
map <silent> <SPACE>k :wincmd k<CR>
map <silent> <SPACE>j :wincmd j<CR>
map <silent> <SPACE>h :wincmd h<CR>
map <silent> <SPACE>l :wincmd l<CR>

" Keymap for modes switching
imap jj <Esc>:w<CR>

" keymap for resizing split windows
map <left> :5winc ><CR>
map <right> :5winc <<CR>
map <down> :5winc +<CR>
map <up> :5winc -<CR>

" Selection Shortcuts
nnoremap B vit
nnoremap V vat
nnoremap W viw
nnoremap X vi(
nnoremap <expr> C 'vi' . (getline('.') =~ '"' ? '"'  : "'")

" Replace Function
vmap r "_dP
" Comment Block Toggle
vmap cc <leader>ci :w<CR>
" Move between buffers
nmap <Tab> :bnext<CR>

" Call RustFmt formatter
" TODO: move this from here
autocmd FileType rust nnoremap<buffer> F :RustFmt<CR>

" close the current buffer
map c :bp\|bd #<cr>

" Formatting
" Autoformat document
nnoremap F gg=G''<CR>

autocmd FileType javascript nnoremap F :call JsBeautify()<CR>
" for json
autocmd FileType json nnoremap F :call JsonBeautify()<CR>
" for jsx
autocmd FileType jsx nnoremap F :call JsxBeautify()<CR>
" for html
autocmd FileType html nnoremap F :call HtmlBeautify()<CR>
" for css or scss
autocmd FileType css nnoremap F :call CSSBeautify()<CR>

" VimWiki Configuration
let g:vimwiki_list = [{'path': '~/documents/personal/wiki/', 'path_html': '~/documents/personal/wiki/html/', 'auto_export': 1}]
let g:vimwiki_folding = 'list'

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

" Toggle between fast and slow move modes
" Source: https://stackoverflow.com/a/7898979
" This, probably, should move to a different file
map <Space><Space> :call ToggleFastMoveMode()<CR>
vmap <Space><Space> :call ToggleFastMoveMode()<CR>gv
let g:fastMoveMode = 0

" Fastmode function
function! ToggleFastMoveMode()
    let g:fastMoveMode = 1 - g:fastMoveMode
    if (g:fastMoveMode == 0)
        noremap j jzz
        noremap k kzz
        vnoremap j jzz
        vnoremap k kzz
    else
        noremap j 20j
        vnoremap j 20j
        noremap k 20k
        vnoremap k 20k
    endif
endfunction

" Toggle Vimwiki
nnoremap nw :call ToggleVimWikiMode()<CR>
vnoremap nw :call ToggleVimWikiMode()<CR>gv

let g:VimWikiMode = 0

function! ToggleVimWikiMode()
    let g:VimWikiMode = 1 - g:VimWikiMode
    if (g:VimWikiMode == 0)
        :close
    else
        :split wiki
        :resize +100
        :e ~/documents/personal/wiki/index.wiki
    endif
endfunction
