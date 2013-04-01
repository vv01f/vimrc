" Be IMproved
set nocompatible
" encode with utf-8
set encoding=utf-8
" Share OS clipboard
set clipboard=unnamed
" Allow mouse
set mouse=a
" Always show status line
set laststatus=2
set autoindent

syntax on
colorscheme 16color
if v:version >= 703
    set colorcolumn=80
endif
set number
set listchars=tab:>\ 
set list

set wildmenu
hi wildmenu ctermfg=2 ctermbg=10
hi StatusLine ctermfg=0 ctermbg=2
hi StatusLineNC ctermfg=0 ctermbg=white

set expandtab
set tabstop=4
set shiftwidth=4

let mapleader = ","
