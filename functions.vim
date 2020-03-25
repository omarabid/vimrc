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
