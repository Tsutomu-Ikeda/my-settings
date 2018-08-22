set number
set mouse=a

set clipboard+=unnamed,unnamedplus,autoselect
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

set laststatus=2

set backspace=indent,eol,start

set ttimeoutlen=10
set encoding=utf-8

" Enable Syntax Highlight
syntax on

" Setup Vundle
filetype plugin indent on    " required

source ~/.vim/keymap.vim
source ~/.vim/vundle.vim
source ~/.vim/settings.vim
