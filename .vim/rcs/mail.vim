version 6.0
if &cp | set nocp | endif
map Q gq
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <F11> :call conque_term#exec_file()
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backup
set fileencodings=ucs-bom,utf-8,default,latin1
set history=50
set hlsearch
set incsearch
set laststatus=2
set mouse=a
set showcmd
set updatecount=10000
set filetype=mail
syntax on
colorscheme codesweets
hi Comment ctermfg=117
set number
set cursorline
" vim: set ft=vim :
