"=============================================================================
" What Is This: Add some conceal operator for your elm files
" File:         elm.vim (conceal enhancement)
" Author:       arcseldon
" Last Change:  2018-01-30
" Version:      1.0.1
" Require:
"   set nocompatible
"     somewhere on your .vimrc
"
"   Vim 7.3 or Vim compiled with conceal patch.
"   Use --with-features=big or huge in order to compile it in.
"
" Usage:
"   Drop this file in your
"       ~/.vim/after/syntax folder (Linux/MacOSX/BSD...)
"       ~/vimfiles/after/syntax folder (Windows)
"
"   For this script to work, you have to set the encoding
"   to utf-8 :set enc=utf-8
"
" Additional:
"     * if you want to avoid the loading, add the following
"       line in your .vimrc :
"        let g:no_elixir_conceal = 1
"  Changelog:
"   - 1.0.1  Update pipe operator symbol and add few extra operator overrides
"   - 1.0.0  Initial release - just override pipe operator
"
if exists('g:no_elm_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif
"
" if !has('conceal')
"     finish
" endif

syntax match exNiceOperator "|>" conceal cchar=▷
" syntax match exNiceOperator "<-" conceal cchar=←
syntax match exNiceOperator "->" conceal cchar=→
" syntax match exNiceOperator "==" conceal cchar=≡
" syntax match exNiceOperator "!=" conceal cchar=≢
" syntax match exNiceOperator "<=" conceal cchar=≤
" syntax match exNiceOperator ">=" conceal cchar=≥


hi link exNiceOperator Operator
hi! link Conceal Operator
setlocal conceallevel=2

