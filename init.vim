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
let $LANG='en_US.UTF-8'

set backspace=indent,eol,start
set autoindent
set lazyredraw lz

" Use thin cursor when in insert mode
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[3 q"
let &t_EI = "\<esc>[ q"

" More intuitive way to move cursor
map <up> gk
map <down> gj
imap <up> <C-[> <up>i
imap <down> <C-[> <down>i

" Search text & files
nnoremap <silent> <C-g> :Files<CR>
nnoremap <silent> <C-f> :GFiles<CR>
nnoremap <silent> <C-b> :Buffer<CR>
nnoremap <silent> <C-d> :Rg<CR>
imap <C-BS> <C-W>

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Indent
let g:indentLine_char = '⦙'

" Nerd tree
:nnoremap <leader>n :NERDTreeToggle<CR>
map <D-J> :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1

" Vimwiki
let g:vimwiki_listsyms = '✗○◐●✓'
hi VimwikiLink term=bold ctermfg=blue guifg=blue gui=bold
hi VimwikiHeader1 term=bold ctermfg=blue guifg=blue gui=bold
hi VimwikiHeader2 term=bold ctermfg=blue guifg=blue gui=bold
hi VimwikiHeader3 term=bold ctermfg=blue guifg=blue gui=bold
hi VimwikiHeader4 term=bold ctermfg=blue guifg=blue gui=bold
hi VimwikiHeader5 term=bold ctermfg=blue guifg=blue gui=bold
hi VimwikiHeader6 term=bold ctermfg=blue guifg=blue gui=bold
hi VimwikiPre term=bold ctermfg=green guifg=green gui=bold
autocmd FileType wiki nnoremap <silent> <C-f> :Files<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'preservim/nerdtree'
Plugin 'vimwiki/vimwiki'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'elzr/vim-json'
Plugin 'keith/swift.vim'
call vundle#end()  

" init.vim
call plug#begin('~/.vim/plugged')
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

filetype plugin indent on 
