syntax on

set noerrorbells
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
set laststatus=2
set complete+=kspell
set noswapfile
set nobackup

highlight Comment ctermfg=yellow
set nocompatible
filetype off

" FZF
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-b> :Buffer<CR>
nnoremap <silent> <C-d> :Rg<CR>

" Buffers
map <silent> <tab> :bn<CR>
map <silent> <S-tab> :bp<CR>

" Nerd tree
:nnoremap <leader>n :NERDTreeToggle<CR>
map <D-J> :NERDTreeFind<CR>
map gj :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1

" Vimwiki
let g:vimwiki_listsyms = '✗○◐●✓'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'preservim/nerdtree'
Plugin 'vimwiki/vimwiki'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'elzr/vim-json'
call vundle#end()  
filetype plugin indent on 
