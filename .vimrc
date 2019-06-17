" Basic Settings


" Bundles Manager
set rtp+=~/.nvim/bundle/vundle/
call vundle#begin()


" -- Bundles
"

" Bundle Manager
Bundle 'gmarik/vundle'
" Directory browser
Bundle 'scrooloose/nerdtree'
" Source Code browser 
Bundle 'majutsushi/tagbar' 
" Properly indent JavaScript Code 
Bundle 'JavaScript-Indent' 
" Improved indenting for PHP
Bundle 'vim-scripts/PHP-correct-Indenting'
" Plenty of color schemes
Bundle 'flazz/vim-colorschemes' 
" Easily switch between color schemes
Bundle 'ScrollColors' 
" Autosave
Bundle 'vim-scripts/vim-auto-save' 
" Better Status line
Bundle 'bling/vim-airline'
" Git Integration
Bundle 'tpope/vim-fugitive'
" Git Gutters
Bundle 'airblade/vim-gitgutter'
" Code Completion
Bundle 'Shougo/deoplete.nvim'
" Auto Close Brackets
Bundle 'Raimondi/delimitMate'
" Undolist viewer
Bundle 'sjl/gundo.vim'
" Better HTML editing
Bundle 'tpope/vim-surround'
" Nerd Commenting
Bundle 'scrooloose/nerdcommenter'
" Substitute highliting
Bundle 'osyo-manga/vim-over'
" Rust Syntax
Bundle 'rust-lang/rust.vim'
" Rust Racer
Bundle 'racer-rust/vim-racer'
" VIM Motion
Bundle 'easymotion/vim-easymotion'
" Terraform Highlighter
Bundle 'hashivim/vim-terraform'
" Calendar Window for orgmode
Bundle 'mattn/calendar-vim'
" Wiki for Vim
Bundle 'vimwiki/vimwiki'
" Task Warrior Plugin
Bundle 'blindFS/vim-taskwarrior'

call vundle#end()

" ------------------
" -- VIM Settings --
" ------------------
set nocompatible 
set fileformats=unix
syntax on
filetype plugin on
set autochdir
set noexpandtab
set shiftwidth=4
set tabstop=4
set number
set mouse=a

" Backup settings
set nobackup
set noswapfile

" Backspace properly
set backspace=indent,eol,start 

" Format tpl files as html 
au BufReadPost *.tpl set syntax=html
au BufReadPost *.tpl set filetype=html

" -- Leader Mapping
"
let mapleader = ","
let maplocalleader = "\\"

" --------------------------
" -- Plguin Configuration --
" --------------------------

" -- Airline Configuration
"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" -- Status line customization
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" -- NerdTree Configuration
"
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1 
let NERDTreeIgnore = ['\.DS_Store$', '.git$', 'Cargo.lock']
nnoremap nj :NERDTreeToggle<CR> 

" -- Minibuf Configuration
"
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" -- AutoSave Settings
"
let g:auto_save = 1

" -- Color Scheme
"
colorscheme symfony
" Remove the underline for the highlighted line. This should be placed here
" after the colorscheme selection to override its' settings.
set cul                                      
hi CursorLine term=bold cterm=bold guibg=Grey40

" -- Folding Settings
"
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

" -- deoplete Configuration
"
let g:deoplete#enable_at_startup = 1

" -- Rust Racer Configuration
"
set hidden
let g:racer_cmd = "/Users/omarabid/.cargo/bin/racer"
let g:racer_experimental_completer = 1

" -- Rust Settings
"  - Disable Rust Autosave as it conflicts with the autosave plugin
let g:rustfmt_autosave = 0
"  - Other
au FileType rust nmap <silent> <C-]> <Plug>(rust-def)
au FileType rust nmap <silent> <C-w><C-]> <Plug>(rust-def-vertical)
au FileType rust nmap <silent> <C-w>} <Plug>(rust-def-split)
au FileType rust nmap <silent> <C-k> <Plug>(rust-doc)

" -- Terraform Highlighting
"
let g:terraform_align=1

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
" Keymap for switching panels
map <silent> <SPACE>k :wincmd k<CR>
map <silent> <SPACE>j :wincmd j<CR>
map <silent> <SPACE>h :wincmd h<CR>
map <silent> <SPACE>l :wincmd l<CR>
" Keymap for TagBar
nnoremap nk :TagbarToggle<CR>
" Keymap for Syntax Checking
nmap <F6> :SyntasticCheck<CR>
nmap <F7> :Errors<CR>
" Keymap for modes switching
imap jj <Esc>
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
vmap cc <leader>ci
" Move between buffers
nmap <Tab> :bnext<CR>
" Autoformat document
nnoremap F gg=G''<CR>
" Call RustFmt formatter
autocmd FileType rust nnoremap<buffer> F :RustFmt<CR>
" close the current buffer 
map <space>x :bp\|bd #<cr>

" VimWiki Configuration
let g:vimwiki_list = [{'path': '~/vimwiki/'}]
let g:vimwiki_folding = 'list'
let g:vimwiki_list = [{'path': '~/vimwiki/html/', 'auto_export': 1}]

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
        noremap j j
        vnoremap j j
        noremap k k
        vnoremap k k
    else
        noremap j 20j
        vnoremap j 20j
        noremap k 20k
        vnoremap k 20k
    endif
endfunction
