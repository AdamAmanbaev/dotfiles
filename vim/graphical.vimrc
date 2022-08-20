" Add line numbers
set number

" Add relative line numbers in cmd-mode
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

" Custom status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set laststatus=2 " Always show status line

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
