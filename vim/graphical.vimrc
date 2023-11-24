" Enable syntax highlighting
syntax on
filetype on

" Add line numbers
set number

" Show current command-inputs
set showcmd

" Add relative line numbers in cmd-mode
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

" gitgutter sidebar
highlight! link SignColumn LineNr

" Do not use bells on errors
set noerrorbells
set novisualbell

" Smoother redrawing with no downside, apparently.
set ttyfast

" Show current position in file
set ruler

" Disable vim intro 
set shm+=I

" Show matching brackets when the cursor is over one 
set showmatch

" Change color of cursor in insert-mode and otherwise
if &term=~"xterm\\|rxvt"
   " use an purple cursor in insert mode
   let &t_SI="\<Esc>]12;white\x7"
   " use a orange cursor otherwise
   let &t_EI="\<Esc>]12;white\x7"
   silent !echo -ne "\033]12;red\007"
   " reset cursor when vim exits
   autocmd VimLeave * silent !echo -ne "\033]112\007"
   " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif

" set vim-rainbow
let g:rainbow_active=1

" remove statusline
autocmd BufRead,BufNewFile * set laststatus=0
set noshowmode 

" python highlighting
let g:python_version_2 = 1
let g:python_highlight_builtins = 1
let g:python_highlight_builtin_objs  = 1
let g:python_highlight_builtin_types = 1
let g:python_highlight_builtin_funcs = 1
let g:python_highlight_builtin_funcs_kwarg = 1
let g:python_highlight_exceptions = 1
let g:python_highlight_string_formatting = 1
let g:python_highlight_string_format = 1
let g:python_highlight_string_templates = 1
let g:python_highlight_indent_errors = 1
let g:python_highlight_doctests = 1
let g:python_highlight_func_calls = 1
let g:python_highlight_class_vars = 1
let g:python_highlight_operators = 1
let g:python_highlight_file_headers_as_comments = 1

" cpp highlighting
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

" dark background
set bg=dark

" cool line 
set cul
