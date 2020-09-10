" ftplugin/imi.vim

if exists("b:did_ftplugin")
  finish
endif

" Comment string
setlocal commentstring=(*%s*)

" Indentation space instead of tabs
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

let b:did_ftplugin=1
