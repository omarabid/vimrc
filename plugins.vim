" --------------------------
" -- Plguin Configuration --
" --------------------------

" -- Indentation highligting configuration
"
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'

" -- Startify configuratuin
"
let g:startify_custom_header = [
            \ '',
            \ '',
            \ '',
            \ '--- Things appear simple at first ---',
            \ '',
            \ '',
            \ '',
            \ ]

" -- Lightline Configuration
"
let g:lightline = {
            \ 'colorscheme': 'gruvbox',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'fugitive#head'
            \ },
            \ }


" -- NerdTree Configuration
"
" autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.DS_Store$', '.git$', 'Cargo.lock']
nnoremap nj :NERDTreeToggle<CR>

" -- Git Functionalities
"
"
nnoremap ng :GV<CR>

" NerdTree git styles
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'*',
                \ 'Staged'    :'+',
                \ 'Untracked' :'o',
                \ 'Renamed'   :'R',
                \ 'Unmerged'  :'=',
                \ 'Deleted'   :'x',
                \ 'Dirty'     :'X',
                \ 'Ignored'   :'I',
                \ 'Clean'     :'C',
                \ 'Unknown'   :'?',
                \ }

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

" Call RustFmt formatter
" TODO: move this from here
autocmd BufRead,BufNewFile *.vue setfiletype html
autocmd FileType rust nnoremap<buffer> F :RustFmt<CR>

autocmd FileType javascript nnoremap F :call JsBeautify()<CR>
" for json
autocmd FileType json nnoremap F :call JsonBeautify()<CR>
" for jsx
autocmd FileType jsx nnoremap F :call JsxBeautify()<CR>
" for html
autocmd FileType html nnoremap F :call HtmlBeautify()<CR>
" for css or scss
autocmd FileType css nnoremap F :call CSSBeautify()<CR>
autocmd FileType scss nnoremap F :call CSSBeautify()<CR>
autocmd FileType sass nnoremap F :call CSSBeautify()<CR>

" VimWiki Configuration
let g:vimwiki_list = [{'path': '~/documents/personal/wiki/', 'path_html': '~/documents/personal/wiki/html/', 'auto_export': 1}]
let g:vimwiki_folding = 'list'

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
