" -----------------
" -- Key Mapping --
" -----------------

" -- Leader Mapping
"
let mapleader = ","
let maplocalleader = "\\"

" Handle Clipboard Properly
" Source: https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim
noremap y "+y
noremap yy "+yy
noremap p "+p:w<CR>
noremap d d:w<CR>
noremap dd dd:w<CR>

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

" close the current buffer
map c :bp\|bd #<cr>

" close split window
map x :close<cr>

" Formatting
" Autoformat document
nnoremap F gg=G''<CR>

inoremap <Esc>q {
inoremap <Esc>w }
inoremap <Esc>a [
inoremap <Esc>s ]
inoremap <Esc>z "

inoremap *q {
inoremap *w }
inoremap *a [
inoremap *s ]
inoremap *z "
inoremap *x |
