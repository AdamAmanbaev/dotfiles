" Enable plugins based on filetype
filetype plugin on
filetype indent on

" Enable syntax highlighting
syntax enable

" Enable mouse
set mouse=a

" Use spaces instead of tabs
set expandtab

" Make tabs be 4 spaces
set shiftwidth=4
set tabstop=2

" Indentation
set autoindent " Use indentation from last line
set smartindent " Automatically add indendation after e.g. { 
set cindent " Use C-indentation

" Namespaces and visibility labels should not increase indentation
set cino=N-sg0

" Use unix line endings by default
set fileformats=unix,dos,mac

" Disable backups and swaps 
set nobackup 
set noswapfile
set nowritebackup

" Persistent undos 
try 
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

" Highlights the word under the cursor
noremap <silent> & :let @/ = "\\<<c-r><c-w>\\>"<cr>:set hlsearch<cr>

" Increase the edit history 
set history=1000

" Reload files when changed outside
set autoread

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Insert template to contest-files [1, 2, 3, ...]A.cpp
autocmd BufNewFile *A.cpp 0r $HOME/Code/contest/library/template.cpp

" Insert long template to contest-files [1, 2, 3, ...]B.cpp
autocmd BufNewFile *B.cpp 0r $HOME/Code/contest/library/longtemplate.cpp

" Clipboard configuration (yank->clip.exe)
let s:clip = '/mnt/c/Windows/System32/clip.exe' 
if executable(s:clip) 
	augroup WSLYank
		autocmd!
		autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
	augroup END
endif

" Latex settings
autocmd fileType tex:NoMatchParen
autocmd fileType tex:set tw=110

" Vimtex configuration with SumatraPDF 
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance @pdf' 
let g:vimtex_view_general_option_latexmk = '-reuse-instance' 
let g:tex_flavor = 'latex'
let g:vimtex_motion_matchparen = 0
let g:vimtex_fold_manual = 1
let g:vimtex_matchparen_enabled = 0

" Pathogen 'runtime'-manager
execute pathogen#infect()

" Latex numbering
au BufNewFile,BufRead *.tex
			\ set nocursorline |
			\ set nornu |
			\ set number |
			\ let g:loaded_matchparen=1 |
