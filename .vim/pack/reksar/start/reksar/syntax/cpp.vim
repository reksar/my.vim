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


syn match cppNameScope "\<\i\+\>\ze::"


" Start of line till         word
syn match cppSOL "^\s\{-}\ze\<\i\+\>"
    \ nextgroup=cppStructure,cppModifier,cppType,cppExceptions,cStatement


" Struct Declaration: --------------------------------------------------------

syn keyword cppStructure contained
  \ struct class enum namespace
  \ public private protected
    \ nextgroup=cppStructName
    \ skipwhite

syn match cppStructName contained "\<\i\+\>"

" ----------------------------------------------------------------------------


" Statement Type: ------------------------------------------------------------

syn keyword cppModifier contained static const virtual
    \ nextgroup=cppModifier,cppType
    \ skipwhite

" int
" int&
" int**
"
" skipempty allows line breaks before nextgroup
syn match cppType contained "\<\i\+\>[&*]*"
    \ nextgroup=cppVar,cppFuncDecl
    \ skipwhite
    \ skipempty

" ----------------------------------------------------------------------------


" Variable: ------------------------------------------------------------------
" var;
" var =
" var{
syn match cppVar contained "\<\i\+\>\ze\s\{-}[;={]"

" ----------------------------------------------------------------------------


" Function Declaration: ------------------------------------------------------

" foo(
syn match cppFuncDecl contained "\<\i\+\>\ze("
    \ nextgroup=cppFuncDeclArgs
    \ skipempty

syn match cppFuncDeclArgs contained "()"

" ----------------------------------------------------------------------------


hi link cppModifier StorageClass
hi link cppType Type
hi link cppInstance Identifier
hi link cppNameScope Type
hi link cppStructure StorageClass
hi link cppStructName Type
hi link cppTypeFunc Type
hi link cppFuncDecl Function
hi link cppTypeInstance Type
hi link cppVar Identifier
