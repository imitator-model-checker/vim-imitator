" Vim indentation for Imitator
"
" Author: Laure Petrucci
" Created: 2018/02/28
" Last modified:
"

" Look if indent file has already been loaded
if exists("b:did_indent")
	finish
endif

setlocal indentexpr=ImiIndent()

function! ImiIndent()
	let line=getline(v:lnum)
	let previousNum=prevnonblank(v:lnum - 1)
	let previous=getline(previousNum)

	if previous =~ "automaton"
		return indent(previousNum) + &tabstop
	endif
endfunction

let b:did_indent=1
