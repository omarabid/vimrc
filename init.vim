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
" Vue.js Syntax
Bundle 'posva/vim-vue'
" JSX/TypeScript highlighting
Bundle 'HerringtonDarkholme/yats.vim'
Bundle 'maxmellon/vim-jsx-pretty'
" Terraform Highlighting
Bundle 'hashivim/vim-terraform'
" CSS colors
Bundle 'ap/vim-css-color'

call vundle#end()
