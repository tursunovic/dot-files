syntax on
set t_Co=256
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set smartcase
set incsearch
set ignorecase
set ruler
set clipboard=unnamed
highlight Comment ctermfg=yellow

" For simple todo's
call plug#begin('~/.vim/plugged')
Plug 'vitalk/vim-simple-todo'
call plug#end()
