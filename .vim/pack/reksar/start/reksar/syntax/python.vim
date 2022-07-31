if exists("b:current_syntax") && b:current_syntax != "python"
  finish
endif

" Manually load default syntax first to override it.
syn clear
source $VIMRUNTIME/syntax/python.vim

syn keyword pythonConst None True False

syn keyword pythonStatement return yield as with continue break pass skipwhite
syn keyword pythonStatement assert exec skipwhite

syn keyword pythonDef def lambda nextgroup=pythonFunction skipwhite

syn keyword pythonType nonlocal skipwhite

syn region pythonBrackets matchgroup=pythonPunctuation start=/(/ end=/)/
  \ transparent fold
syn region pythonBrackets matchgroup=pythonPunctuation start=/\[/ end=/\]/
  \ transparent fold
syn region pythonBrackets matchgroup=pythonPunctuation start=/{/ end=/}/
  \ transparent fold containedin=pythonString

hi link pythonConst Constant
hi link pythonDecorator Special
hi link pythonDef Type
hi link pythonPunctuation Special
hi link pythonType Type
