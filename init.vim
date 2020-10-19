language en_US.UTF-8
set shell=/bin/bash

" Basic Settings

" Bundles Manager
set rtp+=~/.nvim/bundle/vundle/
call vundle#begin()


" -- Bundles
"

" Bundle Manager
Bundle 'gmarik/vundle'

" ===========
"   Styling
" ===========
" Color Scheme
Bundle 'morhetz/gruvbox'
" Buffer browser
Bundle 'ap/vim-buftabline'
" Directory browser
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
" Better Status line
Bundle 'itchyny/lightline.vim'
" Welcome Screen
Bundle 'mhinz/vim-startify'
" Vim-Clap
Bundle 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

" ===================
"   Git integration
" ===================

" Git Integration
Bundle 'tpope/vim-fugitive'
" Git Gutters
Bundle 'airblade/vim-gitgutter'
" Git commits Browser
Bundle 'junegunn/gv.vim'
" Git support for NerdTree
Bundle 'Xuyuanp/nerdtree-git-plugin'

" =======================
"   Text manipulation
" =======================

"fzf plugin
Bundle 'junegunn/fzf.vim'
" Automatically set paste mode
Bundle 'roxma/vim-paste-easy'

" Auto Close Brackets
Bundle 'Raimondi/delimitMate'
" Nerd Commenting
Bundle 'scrooloose/nerdcommenter'
" VIM Motion
Bundle 'easymotion/vim-easymotion'
" Wiki for Vim
Bundle 'vimwiki/vimwiki'
" Calendar
Bundle 'itchyny/calendar.vim'
" Undo Tree
Bundle 'mbbill/undotree'
" Properly mark indentation
Bundle 'thaerkh/vim-indentguides'
" Matchup Code
Bundle 'andymass/vim-matchup'
" Buffer Explorer
Bundle 'vim-scripts/bufexplorer.zip'

" Syntactic language support
Bundle 'maksimr/vim-jsbeautify'
" HTML/JS Syntax
Bundle 'rust-lang/rust.vim' 
" Rust Syntax
Bundle 'neoclide/coc.nvim', {'branch': 'release'} 
" Semantic language support
Bundle 'posva/vim-vue' 
" Vue.js Syntax
Bundle 'HerringtonDarkholme/yats.vim' 
" JSX/TypeScript highlighting
Bundle 'maxmellon/vim-jsx-pretty'
Bundle 'hashivim/vim-terraform' 
" Terraform Highlighting
Bundle 'ap/vim-css-color' 
" CSS colors
Bundle 'godlygeek/tabular' 
" Markdown Support
Bundle 'plasticboy/vim-markdown'

call vundle#end()
