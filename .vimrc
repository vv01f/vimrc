if &term == "xterm-256color" || &term == "rxvt-unicode-256color" || &term == "screen-256color"
" ------------------------------------------------------------------------------
" Basics
" ------------------------------------------------------------------------------
" Be IMproved
set nocompatible
" encode with uft-8
set encoding=utf-8
" enable 256 colors
set t_Co=256
" Enable pathogen bundle loader
call pathogen#infect()

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles
"Bundle 'Valloric/YouCompleteMe'

" Recognize file types / set indent mode
filetype plugin indent on
" Share OS clipboard
set clipboard=unnamed
" Allow mouse usage in terminal vim
set mouse=a
" Always show status line
set laststatus=2
" Syntastic highlight
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" PowerLine
let g:Powerline_symbols = 'fancy'
" Per project vimrc
set exrc
" Source vimrc files after editing
autocmd bufwritepost .vimrc source <afile>
" Indention
set autoindent
" Automatically safe files when switchin between them / leaving vim
set autowriteall
autocmd FocusLost * silent! :wa
autocmd TabLeave * silent! :wa
" Do not create swap files, we're using git after all
set nobackup
set nowritebackup
set noswapfile
" Enable vim to remember undo chains between sessions (vim 7.3)
if v:version >= 703
  set undofile
endif
" Disable folding
set nofoldenable
" Configure snipmate dir
let g:snippets_dir="~/.vim/snippets"
" Setup syntastic filetypes
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['javascript', 'php'],
                           \ 'passive_filetypes': ['puppet'] }
"open file at last position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" ------------------------------------------------------------------------------
" Styling
" ------------------------------------------------------------------------------
" Syntax highlighting
syntax on

" Color Scheme
colorscheme codesweets

" Show Line numbers
set number

" Show Tabline when needed
set showtabline=1

" Visual line marking 80 characters (vim 7.3)
if v:version >= 703
  set colorcolumn=80
endif

" Text-mate style display of invisible characters (tab/newline)
set listchars=tab:‣\ 
set list

" Wildmenu
set wildmenu

highlight NonText guifg=#222222
highlight SpecialKey guifg=#222222 guibg=NONE

" show wrapped lines
set showbreak=▸\ 

" Highlight active line
set cursorline

" Highlight search results
set hlsearch
hi Search gui=bold

" toggle CursorLineNr hightting
autocmd InsertEnter * hi CursorLineNr ctermbg=23  ctermfg=231
autocmd InsertLeave * hi CursorLineNr ctermbg=238 ctermfg=154

" Gundo to the right
let g:gundo_right=1

" ------------------------------------------------------------------------------
" Tabs vs. Spaces
" ------------------------------------------------------------------------------
" Spaces instead of tabs
set expandtab
" 4 spaces for each tab
set tabstop=4
" 4 spaces for indention::
set shiftwidth=4

" ------------------------------------------------------------------------------
" Key bindings
" ------------------------------------------------------------------------------
" Make , the leader key
let mapleader = ","

" Nerd Tree (toggle)
nnoremap <Leader>n :NERDTreeToggle<CR>
" Nerd Tree (reveal current file)
nnoremap <Leader>f :NERDTree<CR>:NERDTreeClose<cr>:NERDTreeFind<CR>
" Nerd Tree @ Projects
nnoremap <Leader><Leader>p :NERDTreeFromBookmark Projects<CR>
" Tagbar toggle
nmap <F8> :TagbarToggle<CR>

" Move between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Navigation
inoremap jj <Esc>
inoremap kk <Esc>

" Edit user .vimrc
nmap <Leader>v :e ~/.vimrc<CR>
" Edit project .vimrc
map <Leader>V :e .vimrc<CR>

" Toggle Spellcheck
nmap <Leader>sd :set spell! spelllang=de<CR>
nmap <Leader>se :set spell! spelllang=en<CR>

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Copy path to current buffer into clipboard
nnoremap <leader><space> :!echo -n % \| pbcopy<CR><CR>

" Show current file as HTML (to paste into Keynote)
nmap <Leader>h :TOhtml<CR>:w<cr>:!open %<CR>:q<CR>

" Mapping for gundo
nnoremap <F5> :GundoToggle<CR>

" ------------------------------------------------------------------------------
" File type specifics *
" ------------------------------------------------------------------------------
" Execute current file with node.js
autocmd BufEnter *.js nmap <Leader><Leader> :w<CR>:!node %:p<CR>
" Execute current file with coffee-script node.js
autocmd BufEnter *.coffee nmap <Leader><Leader> :w<CR>:!~/local/bin/coffee %:p<CR>
" start new *.c with a template
autocmd BufNewFile *.c 0r ~/.vim/skeleton.c

" Recognise file by extension
autocmd BufEnter *.ctp set filetype=php
autocmd BufEnter *.less set filetype=less
autocmd BufEnter *.ds set filetype=javascript
autocmd BufEnter *.json set filetype=javascript
autocmd BufEnter *.isml set filetype=html
autocmd BufEnter *.ejs set filetype=html

" Magic to make ledger work
au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger
"------------------------------------------------------------------------------
"Alternativ RC for more flex
"------------------------------------------------------------------------------
else
    source ~/.vim/rcs/default.vim
endif
