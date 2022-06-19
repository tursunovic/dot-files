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

" Stuff
set guifont=Fira\ Code\ Medium:h15
set backspace=indent,eol,start  " more powerful backspacing
set autoindent

" Beginning of line
map <S-H> <ESC>^

" Use thin cursor when in insert mode
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[3 q"
let &t_EI = "\<esc>[ q"

" Up/down for wrapped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

nnoremap <silent> <C-g> :Files!<CR>
nnoremap <silent> <C-f> :GFiles!<CR>
nnoremap <silent> <C-b> :Buffer<CR>
nnoremap <silent> <C-d> :Rg!<CR>
vnoremap <silent> <C-c> :'<,'> !pbcopy<CR> u
imap <C-BS> <C-W>

" FZF horizontal
let g:fzf_preview_window = 'up:60%'

set clipboard=exclude:.*

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

" Functions
function! FormatJSON() abort
  silent ! clear
  silent %!  python3 -m json.tool
endfunction

command! Format :call FormatJSON()

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'preservim/nerdtree'
Plugin 'vimwiki/vimwiki'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'posva/vim-vue'
Plugin 'scrooloose/vim-slumlord'
Plugin 'aklt/plantuml-syntax'
Plugin 'godlygeek/tabular'
call vundle#end()  
filetype plugin indent on 
