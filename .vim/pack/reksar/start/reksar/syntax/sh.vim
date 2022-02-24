if exists("b:current_syntax") && b:current_syntax != "sh"
  finish
endif

hi link shShellVariables Identifier
