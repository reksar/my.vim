if !exists("b:current_syntax") || b:current_syntax != "cpp"
  syn clear

  " NOTE: `runtime` has deviant behavior, so `source` is used here to apply
  " default C++ syntax.
  " NOTE: some default syntax will be clear and redefined below.
  source $VIMRUNTIME/syntax/cpp.vim
endif


syn clear cStorageClass
syn clear cStructure
syn clear cType
syn clear cppType
syn clear cppStructure
syn clear cppAccess
syn clear cppModifier

syn clear cBlock
syn clear cParen
syn clear cCppParen
syn clear cCppBracket
syn clear cParenError
syn clear cErrInParen

syntax clear
let b:current_syntax = "cpp"


" Start of line till                >|     foo(
syn match cppFuncCallEntry /^\s\{-}\ze\<\i\+\>(\(\i\|,\|(\|)\|\_s\)\{-});/
    \ nextgroup=cppFuncCall

" foo(
syn match cppFuncCall contained /\<\i\+\>\ze(/
    \ nextgroup=cppFuncCallArgs

syn region cppFuncCallArgs contained start=/(/ end=/)/
    \ contains=cppFuncCall,cppFuncCallArg
    \ nextgroup=cppArgSeparator

syn keyword cppArgSeparator contained ,
    \ nextgroup=cppFuncCall,cppFuncCallArg
    \ skipwhite
    \ skipempty

" arg,
" arg)
" arg ,
" arg )
syn match cppFuncCallArg contained /\<\i\+\>\ze\s\{-}[,)]/
    \ nextgroup=cppArgSeparator


" name::
syn match cppNameScope /\<\i\+\>\ze::/


hi link cppNameScope Type
hi link cppFuncCall Function
hi link cppFuncCallArg Identifier
