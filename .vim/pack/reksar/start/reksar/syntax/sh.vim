if exists("b:current_syntax") && b:current_syntax != "sh"
  finish
endif

hi link shCommandSub Type
hi link shShellVariables Type
hi link shString Constant
hi link shOption Constant
