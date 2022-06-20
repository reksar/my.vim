if exists("b:current_syntax") && b:current_syntax != "python"
  finish
endif

" Manually load default syntax first to override it.
syn clear
source $VIMRUNTIME/syntax/python.vim

syn keyword pythonConst None True False

syn region pythonBrackets matchgroup=pythonPunctuation start=/(/ end=/)/
  \ transparent fold
syn region pythonBrackets matchgroup=pythonPunctuation start=/\[/ end=/\]/
  \ transparent fold
syn region pythonBrackets matchgroup=pythonPunctuation start=/{/ end=/}/
  \ transparent fold containedin=pythonString

hi link pythonConst Constant
hi link pythonDecorator Special
hi link pythonPunctuation Special
