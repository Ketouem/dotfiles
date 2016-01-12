" ---- Vundle configuration ----
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vundle plugins
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'ekalinin/Dockerfile.vim'

call vundle#end()
" ------------------------------

syntax on
filetype plugin indent on

set number
set ruler
highlight ColorColumn ctermbg=7
set colorcolumn=80

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * NERDTree | wincmd p

map <C-n> :NERDTreeToggle<CR>

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
