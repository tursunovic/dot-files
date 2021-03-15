syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green

call plug#begin('~/.vim/plugged')
Plug 'vitalk/vim-simple-todo'
call plug#end()

vmap '' :w !pbcopy<CR><CR>
