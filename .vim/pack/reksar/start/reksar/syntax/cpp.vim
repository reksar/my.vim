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


" Function Call: -------------------------------------------------------------

" Here arg is a \<\i\+\> word, that may be followed by \{,1} parens (\_.\{-}).
" Also, an arg may be a {} with amount \{-} of any chars \_. inside.
"
" Start of line till                >|     func(         arg      (       )       or           arg       (       )         {       }           ,          arg      (       )           {       }       or {       }             );
syn match cppFuncCallEntry /^\s\{-}\ze\<\i\+\>(\(\_s\{-}\<\i\+\>\((\_.\{-})\)\{,1}\|\(\_s\{-}\(\<\i\+\>\((\_.\{-})\)\{,1}\|{\_.\{-}}\)\(\_s\{-},\_s\{-}\(\<\i\+\>\((\_.\{-})\)\{,1}\)\|{\_.\{-}}\)\{-}\)\|{\_.\{-}}\)\{-}\_s\{-});/
    \ nextgroup=cppFuncCall

" func(
"                                 func   >| (
syn match cppFuncCall contained /\<\i\+\>\ze(/
    \ nextgroup=cppFuncCallArgs

syn region cppFuncCallArgs contained start=/(/ end=/)/
    \ contains=cppFuncCall,cppFuncCallArg
    \ nextgroup=cppFuncCallArgSeparator

syn keyword cppFuncCallArgSeparator contained ,
    \ nextgroup=cppFuncCall,cppFuncCallArg
    \ skipwhite
    \ skipempty

" arg ,
" arg )
" arg }
"                                   arg      >|       ,)}
syn match cppFuncCallArg contained /\<\i\+\>\ze\s\{-}[,)}]/
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
syn match cppFuncDef contained /\<\i\+\>[&*]*\_s\+\<\i\+\>(\_.\{-})/
    \ contains=cppFuncType,cppFuncDefArgs

syn match cppFuncType contained /\<\i\+\>[&*]*\ze\_s\+\<\i\+\>(/

syn region cppFuncDefArgs contained start=/(/ end=/)/
    \ contains=cppArgType
    \ keepend

syn match cppArgType contained /\(\<const\>\s\+\)\{,1}\<\i\+\>[&*]*\(\_s\+\<\i\+\>\)\{,1}/
    \ contains=cppModifier,cppFuncDefArg

syn match cppFuncDefArg contained /\i\_s\+\zs\<\i\+\>\ze\s\{-}[,=)]/

syn keyword cppModifier contained const static virtual
  \ public private protected

" ----------------------------------------------------------------------------


" name::
syn match cppNameScope /\<\i\+\>\ze::/


hi link cppModifier StorageClass
hi link cppNameScope Type
hi link cppFuncType Type
hi link cppArgType Type
hi link cppFuncCall Function
hi link cppFuncDef Function
hi link cppFuncCallArg Identifier
hi link cppFuncDefArg Identifier
