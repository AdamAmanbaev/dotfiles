" Curly bracket indentation mappings without recursion (insert-mode)
inoremap { {}<Left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {{ {
inoremap {} {}

" Quit insert mode with "jk"
imap jk <ESC>

" Select all with "Ctrl + a"
map <C-a> <ESC>ggVG<CR>

" Compilation of cpp-files using build.zsh and vim-errormarker
set makeprg=build.zsh\ %:r
autocmd filetype cpp nnoremap <F9> :w <bar> Make <CR> 
autocmd filetype cpp nnoremap <F10> :vertical terminal ++shell ++cols=60 ./%:r<CR>
autocmd filetype cpp nnoremap <F12> :!./%:r<CR>

" Comment current line in normal-mode
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $

" Use , as leader
let mapleader=","
let g:mapleader=","

" Use Ctrl+L to clear highlighting
map <C-l> :noh<cr>

" Tab handling
" ,te for open new tab in current directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
" ,tx for close tab
map <leader>tx :tabclose<cr>
" ,tn for next tab
map <leader>tn :tabnext<cr>
" ,tp for last tab
map <leader>tp :tabprevious<cr>
