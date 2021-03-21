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
set relativenumber
set rnu

highlight Comment ctermfg=yellow

" Plugins
set nocompatible
filetype off

" Vimwiki
let g:vimwiki_list = [{'syntax': 'markdown'}]
let g:vimwiki_global_ext = 0
let g:vimwiki_listsyms = '✗○◐●✓'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vimwiki/vimwiki'
call vundle#end()  
filetype plugin indent on 
