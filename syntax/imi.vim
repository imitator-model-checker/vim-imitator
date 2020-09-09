" Vim Syntax for Imitator
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
syntax region imiComment start=/(\*/ end=/\*)/
syntax region imiUpdates start=/{/ end=/}/
syntax keyword imiConstant True False bad
syntax keyword imiVarType var clock discrete parameter constant
syntax keyword imiAutomaton automaton end
syntax keyword imiLocation loc init urgent accepting
syntax keyword imiInvariant invariant 
syntax keyword imiTransition when sync do goto synclabs
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

" Colours for these 
highlight imiConstant cterm=italic
highlight imiUpdates cterm=italic
highlight imiComment ctermfg=grey
" 214 is orange
highlight imiVarType ctermfg=214
highlight imiAutomaton cterm=bold ctermfg=black ctermbg=lightblue
highlight imiLocation cterm=bold ctermfg=yellow
highlight imiInvariant ctermfg=red
highlight imiTransition ctermfg=magenta
highlight imiOperator ctermfg=cyan
highlight imiPropertyKw cterm=bold ctermfg=yellow
highlight imiQuantifier cterm=bold ctermfg=yellow
highlight imiProperty ctermbg=green ctermfg=red
highlight imiPattern ctermfg=63

" set the current syntax
let b:current_syntax = "imitator"
