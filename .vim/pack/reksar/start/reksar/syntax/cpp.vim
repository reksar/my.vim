if !exists("b:current_syntax") || b:current_syntax != "cpp"
  syn clear

  " NOTE: `runtime` has deviant behavior, so `source` is used here to apply
  " default C++ syntax.
  " NOTE: some default syntax will be clear and redefined below.
  source $VIMRUNTIME/syntax/cpp.vim
endif


syn match cppTypeName contained "\i\+"

syn clear cppAccess
syn keyword cppAccess public protected private
    \ nextgroup=cppTypeName
    \ skipwhite

syn clear cStorageClass
syn keyword cStorageClass const auto static register volatile extern
    \ nextgroup=cppTypeName
    \ skipwhite

syn clear cStructure
syn keyword cStructure struct enum typedef union
    \ nextgroup=cppTypeName
    \ skipwhite

syn clear cppStructure
syn keyword cppStructure class typename template namespace
    \ nextgroup=cppTypeName
    \ skipwhite


"                      ^      name     {...}     ;$
syn match cppInstance "^\s\{-}\w\+\ze\({.*}\)\{-};$"

"                                |ends with , or ) or }
syn match cppArgs contained "\w\+\ze\s\{-}\(,\|)\|}\)"

"                  name | <- end of highlighting, \_ allows line breaks
syn match cppFunc "\w\+\ze(\_.\{-})"
    \ contains=cppArgs

" TODO: maybe make it contained and put to func and instance init.
syn match cppUniform "\(\w\|,\|(\)\s\{-}\zs{\_.\{-}}"
    \ contains=cppArgs


syn match cppNameScope "\w\+::"


hi link cppTypeName Type
hi link cppFunc Function
hi link cppNameScope Type
hi link cppInstance Identifier
hi link cppArgs Identifier

" NOTE: these syntax groups are defined in default c.vim and cpp.vim syntax 
" files and here we just change it highlighting.
hi link cStructure StorageClass
hi link cStorageClass StorageClass
hi link cppAccess	StorageClass
hi link cppStructure StorageClass
