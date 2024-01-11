" Vim config file
" version: 01.11.2024
" author: exxidius

syntax on
filetype plugin indent on 
set nocompatible

" leader
let mapleader=" "

" tab
set tabstop=2
set shiftwidth=2
set expandtab

" numbering
set number
set relativenumber
set showmatch

" searching
set hlsearch
set ignorecase
set smartcase
set incsearch
nnoremap <leader>r :let @/=''<cr>

" working directory
set autochdir

" status line
set laststatus=2

" whitespace
set listchars=tab:▸\ ,space:·
nnoremap <leader>l :set list!<CR>

" explore
nnoremap <leader>e :Explore<CR>
nnoremap <leader>re :Rex<CR>

" mouse
set mouse=a

" windows
set splitbelow
set splitright
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <leader>v <C-w>v
nnoremap <leader>s <C-w>s
nnoremap <leader>f :only<CR>

" buffers
nnoremap <leader><space> :buffers<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>o :e 
nnoremap <leader>n :enew<CR>
nnoremap <leader>s :b 

" set line on input cursor
autocmd InsertEnter,InsertLeave * set cul!

" ruler and line end marker
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set ruler

set ttyfast

