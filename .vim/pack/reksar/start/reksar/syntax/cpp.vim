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

syn keyword cppModifier contained static const virtual


" Struct Declaration: --------------------------------------------------------

syn keyword cppStructure
  \ struct class enum namespace
  \ public private protected
    \ nextgroup=cppStructName
    \ skipwhite

syn match cppStructName contained "\<\i\+\>"

" ----------------------------------------------------------------------------


" Instance Declaration: ------------------------------------------------------
" int i;
" static int i;
" const int i = 0;
"
" static TypeName
"   instance_name{i};

syn match cppInstance contained "\<\i\+\>\ze\s\{-}[;={]"

"                                    type   (& or *)*    cppInstance
syn match cppTypeInstance contained "\<\i\+\>[&*]*\_s\{-}\<\i\+\>\ze\s\{-}[;={]"
    \ contains=cppInstance

"                                   cppModifier      cppTypeInstance
syn match cppInstanceDecl "^\s\{-}\(\<\i\+\>\s\{-}\)*\<\i\+\>[&*]*\_s\{-}\<\i\+\>\ze\s\{-}[;={]"
    \ contains=cppModifier,cppTypeInstance

" ----------------------------------------------------------------------------


" Instance Declaration: ------------------------------------------------------
" virtual const string&
"   foo()
"
" virtual const string&
"   foo()
"     const;
"
" virtual const string&
"   foo()
"     const = 0;

syn match cppFunc contained "\<\i\+\>(\_.\{-})"

syn match cppTypeFunc contained "\<\i\+\>[&*]*\_s\{-}\<\i\+\>(\_.\{-})"
    \ contains=cppFunc

syn match cppFuncDecl "^\s\{-}\(\<\i\+\>\s\{-}\)*\<\i\+\>[&*]*\_s\{-}\<\i\+\>(\_.\{-})\_s\{-}\(const\|const = 0\)\{,1};"
    \ contains=cppModifier,cppTypeFunc

" ----------------------------------------------------------------------------


hi link cppModifier StorageClass
hi link cppType Type
hi link cppInstance Identifier
hi link cppNameScope Type
hi link cppStructure StorageClass
hi link cppStructName Type
hi link cppTypeFunc Type
hi link cppFunc Function
hi link cppTypeInstance Type
