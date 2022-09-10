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

" Do not use bells on errors
set noerrorbells
set novisualbell

" Do not redraw screen while executing macros
set lazyredraw

" Show current position in file
set ruler

" Helper functions
" Return true if we are in pastemode
function! HasPaste () 
    if &paste
        return 'PASTE MODE '
    endif
    return ''
endfunction

" Disable vim intro 
set shm+=I

" Show matching brackets when the cursor is over one 
set showmatch

" Change color of cursor in insert-mode and otherwise
if &term =~ "xterm\\|rxvt"
    " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;brown\x7"
    " use a green cursor otherwise
    let &t_EI = "\<Esc>]12;blue\x7"
    silent !echo -ne "\033]12;green\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
    " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif

colorscheme nord
