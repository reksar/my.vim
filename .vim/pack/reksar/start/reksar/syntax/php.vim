if exists("b:current_syntax") && b:current_syntax != "php"
  finish
endif

syn keyword phpOperator new clone contained
