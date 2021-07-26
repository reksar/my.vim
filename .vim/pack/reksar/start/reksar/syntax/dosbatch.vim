" Vim syntax file

if !exists("b:current_syntax") || b:current_syntax != "dosbatch"
  finish
endif

syn keyword dosbatchCommentKeyword rem
syn keyword dosbatchRepeat in do

hi link dosbatchCommentKeyword SpecialComment
hi link dosbatchImplicit Statement
hi link dosbatchSpecialChar Constant
hi link dosbatchSwitch Function

