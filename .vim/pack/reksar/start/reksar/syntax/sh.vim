if exists("b:current_syntax")
\ && b:current_syntax != "sh"
\ && b:current_syntax != "bash"
\ && b:current_syntax != "posix"
\ && b:current_syntax != "ksh"
  finish
endif

" Manually load default syntax first to override it.
syn clear
source $VIMRUNTIME/syntax/sh.vim

syn keyword shLocal local containedin=shSetList

" /> && /<
" /> || /<
syn match shCtrlOperator "\>\s*[&|]\{2}\s*\<"

syn region shCommandSubBQ matchgroup=shCommandSubBounds
  \ start="`" skip="\\\\\|\\." end="`"
  \ contains=shBQComment,@shCommandSubList

hi link shCommandSub Normal
hi link shCommandSubBounds Special
hi link shCtrlOperator Keyword
hi link shLocal Type
hi link shOption Constant
hi link shString Constant
