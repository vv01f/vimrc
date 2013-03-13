" Vim color file -- codesweets
" Maintainer:   eri! 451 van Buffellow <hans.orter@gmx.de>
" Last Change:  2013 Jan 23

set background=dark
highlight clear
let g:colors_name="codesweets"

" basic highlight groups (:help highlight-groups) {{{

" text {{{

hi Normal        ctermfg=white       ctermbg=black       cterm=NONE

hi Folded        ctermfg=lightgray   ctermbg=black       cterm=underline

hi LineNr        ctermfg=246         ctermbg=NONE        cterm=NONE

hi Directory     ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi NonText       ctermfg=blue        ctermbg=NONE        cterm=NONE
hi SpecialKey    ctermfg=darkgray    ctermbg=NONE        cterm=NONE

hi SpellBad      ctermfg=white       ctermbg=darkred     cterm=NONE
hi SpellCap      ctermfg=white       ctermbg=darkblue    cterm=NONE
hi SpellLocal    ctermfg=black       ctermbg=cyan        cterm=NONE
hi SpellRare     ctermfg=white       ctermbg=darkmagenta cterm=NONE

hi DiffAdd       ctermfg=white       ctermbg=darkblue    cterm=NONE
hi DiffChange    ctermfg=black       ctermbg=darkmagenta cterm=NONE
hi DiffDelete    ctermfg=black       ctermbg=red         cterm=bold
hi DiffText      ctermfg=white       ctermbg=green       cterm=bold

" }}}
" borders / separators / menus {{{

hi FoldColumn    ctermfg=lightgray   ctermbg=darkgray    cterm=NONE
hi SignColumn    ctermfg=lightgray   ctermbg=darkgray    cterm=NONE

hi Pmenu         ctermfg=white       ctermbg=236         cterm=NONE
hi PmenuSel      ctermfg=white       ctermbg=24          cterm=NONE
hi PmenuSbar     ctermfg=black       ctermbg=black       cterm=NONE
hi PmenuThumb    ctermfg=gray        ctermbg=gray        cterm=NONE

hi StatusLine    ctermfg=white       ctermbg=238         cterm=NONE
"hi StatusLineNC  ctermfg=darkgray    ctermbg=white       cterm=NONE
hi WildMenu      ctermfg=22          ctermbg=154         cterm=bold
hi VertSplit     ctermfg=238         ctermbg=238         cterm=NONE

hi TabLine       ctermfg=253         ctermbg=8           cterm=NONE
hi TabLineFill   ctermfg=black       ctermbg=236         cterm=NONE
hi TabLineSel    ctermfg=white       ctermbg=black       cterm=NONE

" }}}
" cursor / dynamic / other {{{

hi ColorColumn   ctermfg=NONE        ctermbg=52          cterm=bold
hi CursorColumn  ctermfg=NONE        ctermbg=16          cterm=NONE
hi Cursor        ctermfg=black       ctermbg=white       cterm=NONE
hi CursorIM      ctermfg=black       ctermbg=white       cterm=reverse

hi CursorLine    ctermfg=NONE        ctermbg=233         cterm=NONE
hi CursorLineNr  ctermfg=154         ctermbg=238         cterm=bold

hi Visual        ctermfg=NONE        ctermbg=238         cterm=NONE

hi IncSearch     ctermfg=white       ctermbg=yellow      cterm=NONE
hi Search        ctermfg=white       ctermbg=64          cterm=NONE

hi MatchParen    ctermfg=white       ctermbg=blue        cterm=NONE

"hi VisualNOS

" }}}
" listings / messages {{{

hi ModeMsg       ctermfg=white       ctermbg=NONE        cterm=NONE
hi Title         ctermfg=red         ctermbg=NONE        cterm=bold
hi Question      ctermfg=green       ctermbg=NONE        cterm=NONE
hi MoreMsg       ctermfg=green       ctermbg=NONE        cterm=NONE

hi ErrorMsg      ctermfg=white       ctermbg=red         cterm=bold
hi WarningMsg    ctermfg=yellow      ctermbg=NONE        cterm=bold

" }}}

" }}}
" syntax highlighting groups (:help group-name) {{{

hi Boolean       ctermfg=red         ctermbg=NONE        cterm=bold

hi Comment       ctermfg=gray        ctermbg=NONE        cterm=NONE

hi Constant      ctermfg=red         ctermbg=NONE        cterm=NONE

hi Error         ctermfg=white       ctermbg=red         cterm=NONE

hi Function      ctermfg=yellow      ctermbg=NONE        cterm=NONE

hi Identifier    ctermfg=white       ctermbg=NONE        cterm=NONE

hi Ignore        ctermfg=darkgray    ctermbg=NONE        cterm=NONE

hi Number        ctermfg=magenta     ctermbg=NONE        cterm=NONE

hi Operator      ctermfg=87          ctermbg=NONE        cterm=NONE

hi PreProc       ctermfg=darkmagenta ctermbg=NONE        cterm=NONE

hi Special       ctermfg=lightgray   ctermbg=NONE        cterm=bold

hi SpecialChar   ctermfg=magenta     ctermbg=NONE        cterm=NONE

hi Statement     ctermfg=75          ctermbg=NONE        cterm=bold

hi Todo          ctermfg=black       ctermbg=yellow      cterm=bold

hi Type          ctermfg=green       ctermbg=NONE        cterm=NONE

hi Underlined    ctermfg=NONE        ctermbg=NONE        cterm=underline

" }}}

" vim: fdm=marker fdl=0
