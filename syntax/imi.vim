" Vim syntax for Imitator
"
" Author: Laure Petrucci
" Created: 2018/02/27
" Last modified: 2020/09/07
"

" Check if a syntax has already been defined
if exists("b:current_syntax")
	finish
endif

" Define Imitator keywords
syntax region imiUpdates matchgroup=None start=/{/ end=/}/
syntax keyword imiConstant True False bad
syntax keyword imiVarType var clock discrete parameter constant
syntax keyword imiAutomaton automaton  nextgroup=imiIdentifier skipwhite
syntax keyword imiAutomaton end
syntax keyword imiLocation init urgent accepting
syntax keyword imiLocation loc nextgroup=imiIdentifier skipwhite
syntax keyword imiTransition when sync do goto synclabs
syntax keyword imiInvariant invariant while wait
syntax match imiIdentifier '\i\+' contained

" Define property keywords
syntax keyword imiPropertyKw property
syntax match imiQuantifier "#synth"
syntax match imiQuantifier "#witness"
syntax match imiQuantifier "#exhibit"
syntax keyword imiProperty AF AGnot EFpmin EFpmax EFtmin inf_cycle
syntax keyword imiProperty inf_cycle_through NZ_inf_cycle_check
syntax keyword imiProperty NZ_inf_cycle_transform deadlockfree IM IMconvex
syntax keyword imiProperty IMK IMunion PRP BCcover BCshuffle BCrandom
syntax keyword imiProperty BCrandomseq PRPC
syntax match imiPattern "has happened"
syntax match imiPattern "is in"
syntax match imiPattern "is not in"
syntax keyword imiPattern everytime once before within eventually next
syntax keyword imiPattern sequence always

" Operators
syntax match imiOperator "\v\<\="
syntax match imiOperator "\v\<"
syntax match imiOperator "\v\>\="
syntax match imiOperator "\v\>"
syntax match imiOperator "\v\="
syntax match imiOperator "\v\:\="
syntax match imiOperator "\v\+"
syntax match imiOperator "\v\-"
syntax match imiOperator "\v\*"
syntax match imiOperator "\v\/"
syntax match imiOperator "\v\&"

" Comments
syntax match imiComment '--.*'
syntax region imiComment start=/(\*/ end=/\*)/

" Colours for imitator keywords
highlight default link imiIdentifier Identifier
highlight default link imiConstant Constant
highlight default link imiVarType Type
highlight default link imiOperator Operator
highlight default link imiAutomaton Special
highlight default link imiUpdates Underlined
highlight default link imiLocation Keyword
highlight default link imiTransition Conditional
highlight default link imiInvariant Repeat

" Colours for property keywords
highlight default link imiPropertyKw Special
highlight default link imiQuantifier Macro
highlight default link imiProperty Function
highlight default link imiPattern Keyword

" Colours for comments
highlight default link imiComment Comment

" set the current syntax
let b:current_syntax = "imitator"
