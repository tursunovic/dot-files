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

call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'keith/swift.vim'

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'bluz71/vim-nightfly-colors'
call plug#end()

" Color scheme
colorscheme nightfly 
" colorscheme macvim 

" Clear background color
hi Normal guibg=NONE ctermbg=NONE

" Use thin cursor when in insert mode
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[3 q"
let &t_EI = "\<esc>[ q"

" Telescope
imap <C-BS> <C-W>
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

" Tree
:nnoremap <leader>n :NvimTreeToggle<CR>
map <D-J> :NERDTreeFind<CR>

" Blankline
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'

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


filetype plugin indent on 

" telescope {{{
lua <<EOF
require('telescope').setup({
  defaults = {
    layout_strategy = "vertical"
  },
  pickers = {
    find_files = {
      hidden = true
    }
  },
})
EOF
" }}}

" nvim-treesitter {{{
lua <<EOF
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
EOF
" }}}

