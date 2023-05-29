call plug#begin()
Plug 'vim-python/python-syntax'
Plug 'petRUShka/vim-sage'
Plug 'bfrg/vim-cpp-modern'
Plug 'vim-airline/vim-airline'
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
Plug 'lervag/vimtex'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()
