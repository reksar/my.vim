if !exists("b:current_syntax") || b:current_syntax != "cpp"
  syn clear

  " NOTE: `runtime` has deviant behavior, so `source` is used here to apply
  " default C++ syntax.
  " NOTE: some default syntax will be clear and redefined below.
  source $VIMRUNTIME/syntax/cpp.vim
endif


syn clear cStorageClass
syn clear cStructure
syn clear cppStructure
syn clear cType
syn clear cppType
syn clear cppAccess
syn clear cppModifier


syntax clear
let b:current_syntax = "cpp"


" Start of line followed by spaces
syn match cppStart /^\s*/
    \ nextgroup=cppModifier,cppType

syn keyword cppModifier const static virtual
    \ contained
    \ nextgroup=cppModifier,cppType
    \ skipwhite

"                     type&*  >|
syn match cppType /\<\i\+[&*]*\ze\_s/
    \ contained
    \ nextgroup=cppFuncDef
    \ skipwhite
    \ skipempty


" Func Def: ------------------------------------------------------------------

"                         name::       func   (
syn match cppFuncDef /\<\(\i\+::\)\{,1}\i\+\ze(/
    \ contained
    \ contains=cppNameScope
    \ nextgroup=cppFuncDefArgs

"                         name::
syn match cppNameScope /\<\i\+::/
    \ contained

syn region cppFuncDefArgs start=/(/ end=/)/
    \ contained
    \ contains=cppFuncDefArg
    \ keepend
    \ nextgroup=cppMethodModifier,cppFuncBody
    \ skipwhite
    \ skipempty

syn match cppFuncDefArg /\(const\s\+\)\{,1}\<\i\+[&*]*\s\+\i\+/
    \ contained
    \ contains=cppFuncDefArgModifier,cppFuncDefArgType

syn keyword cppFuncDefArgModifier const
    \ contained

syn match cppFuncDefArgType /\<\i\+[&*]*\ze\s\+\</
    \ contained

syn keyword cppMethodModifier const
    \ contained
    \ nextgroup=cppFuncBody
    \ skipwhite
    \ skipempty

syn region cppFuncBody start=/{/ end=/}/
    \ contained
    \ keepend

" ------------------------------------------------------------------- Func Def


hi link cppModifier StorageClass
hi link cppMethodModifier StorageClass
hi link cppFuncDefArgModifier StorageClass
hi link cppType Type
hi link cppNameScope Type
hi link cppFuncDefArgType Type
hi link cppFuncDef Function
hi link cppFuncDefArg Identifier

hi link cppFuncBody Function
