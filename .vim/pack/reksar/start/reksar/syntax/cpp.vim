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

syn clear cBlock
syn clear cParen
syn clear cCppParen
syn clear cCppBracket
syn clear cParenError
syn clear cErrInParen

syntax clear
let b:current_syntax = "cpp"


syn match cppTypeName /\<\i\+\>/
    \ contained


"                     type                 name        ({;=
syn match cppType /\<\i\+\>[&*]*\ze\_s\+\<\i\+\>\s\{-}[({;=]/
    \ contained


" Function Call: -------------------------------------------------------------

" Here arg is a \<\i\+\> word, that may be followed by \{,1} parens (\_.\{-}).
" Also, an arg may be a {} with amount \{-} of any chars \_. inside.
"
" Start of line till                >|     func(         arg      (       )       or           arg       (       )         {       }           ,          arg      (       )           {       }       or {       }             );
syn match cppFuncCallEntry /^\s\{-}\ze\<\i\+\>(\(\_s\{-}\<\i\+\>\((\_.\{-})\)\{,1}\|\(\_s\{-}\(\<\i\+\>\((\_.\{-})\)\{,1}\|{\_.\{-}}\)\(\_s\{-},\_s\{-}\(\<\i\+\>\((\_.\{-})\)\{,1}\)\|{\_.\{-}}\)\{-}\)\|{\_.\{-}}\)\{-}\_s\{-});/
    \ nextgroup=cppFuncCall

" func(
"                        func  >| (
syn match cppFuncCall /\<\i\+\>\ze(/
    \ contained
    \ nextgroup=cppFuncCallArgs

syn region cppFuncCallArgs start=/(/ end=/)/
    \ contained
    \ contains=cppFuncCall,cppFuncCallArg
    \ nextgroup=cppFuncCallArgSeparator

syn keyword cppFuncCallArgSeparator ,
    \ contained
    \ nextgroup=cppFuncCall,cppFuncCallArg
    \ skipwhite
    \ skipempty

" arg ,
" arg )
" arg }
"                           arg    >|       ,)}
syn match cppFuncCallArg /\<\i\+\>\ze\s\{-}[,)}]/
    \ contained
    \ nextgroup=cppFuncCallArgSeparator

" ----------------------------------------------------------------------------


" Function Def: --------------------------------------------------------------

"                               (  modifiers )      type              func  ( args  )      const            =   0       ;
syn match cppFuncDefEntry /^\s*\(\<\i\+\>\s*\)\{-}\<\i\+\>[&*]*\_s\+\<\i\+\>(\_.\{-})\(\_s*const\)\{,1}\(\s*=\s*0\)\{,1};/
    \ contains=cppModifier,cppFuncDef

" type func(args)
" type& func(args)
" type* func(args)
" type** func(args)
syn match cppFuncDef /\<\i\+\>[&*]*\_s\+\<\i\+\>(\_.\{-})/
    \ contained
    \ contains=cppType,cppFuncDefArgs

syn region cppFuncDefArgs start=/(/ end=/)/
    \ contained
    \ contains=cppArgType
    \ keepend

"                         const                type               name
syn match cppArgType /\(\<const\>\s\+\)\{,1}\<\i\+\>[&*]*\(\_s\+\<\i\+\>\)\{,1}/
    \ contained
    \ contains=cppModifier,cppFuncDefArg

"            end of word |<           name           ,=)
syn match cppFuncDefArg /\i\_s\+\zs\<\i\+\>\ze\s\{-}[,=)]/
    \ contained

syn keyword cppModifier const static virtual
    \ contained

" ----------------------------------------------------------------------------



" name::
syn match cppNameScope /\<\i\+\>\ze::/
    \ contains=cppTypeName


syn keyword cppStructure struct class typename template namespace
    \ nextgroup=cppTypeName
    \ skipwhite


syn keyword cppAccess public private protected 
    \ nextgroup=cppAccessDef,cppTypeName
    \ skipwhite

syn keyword cppAccessDef :
    \ contained


syn match cppVar /^\s\{-}\(\<\i\+\>\s\{-}\)\{-}\<\i\+\>[&*]*\_s\{-}\<\i\+\>\ze\s\{-}[{;=]/
    \ contains=cppModifier,cppType


hi link cppStructure StorageClass
hi link cppModifier StorageClass
hi link cppAccess StorageClass
hi link cppTypeName Type
hi link cppType Type
hi link cppArgType Type
hi link cppFuncCall Function
hi link cppFuncDef Function
hi link cppFuncCallArg Identifier
hi link cppFuncDefArg Identifier
hi link cppVar Identifier
