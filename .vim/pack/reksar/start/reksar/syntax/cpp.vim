if !exists("b:current_syntax") || b:current_syntax != "cpp"
  syn clear

  " NOTE: `runtime` has deviant behavior, so `source` is used here to apply
  " default C++ syntax.
  source $VIMRUNTIME/syntax/cpp.vim
endif

syn match cppStructureDef "\(class\|struct\)\s\+\w\+"

syn match cppStructureInnerAccess "\(public\|protected\|private\)\s\{-}:"

syn match cppInherit "\(public\|protected\|private\)\s\+\w\+"

syn match cppTypeMatch contained
  \ "\(static\|register\|auto\|volatile\|extern\|const\)\s\+\w\+"

syn match cppDeclaration "\<\w\+\(\*\|&\)*$"

"                      ^      name     {...}     ;$
syn match cppInstance "^\s\{-}\w\+\ze\({.*}\)\{-};$"

"                                |ends with , or ) or }
syn match cppArgs contained "\w\+\ze\s\{-}\(,\|)\|}\)"

"                      name | <- end of highlighting, \_ allows line breaks
syn match cppFunc "\w\+\ze(\_.\{-})"
    \ contains=cppArgs

" TODO: maybe make it contained and put to func and instance init.
syn match cppUniform "\(\w\|,\|(\)\s\{-}\zs{\_.\{-}}"
    \ contains=cppArgs

syn match cppNameScope "\w\+::"

hi link cppStructureDef Type
hi link cppInherit Type
hi link cppFunc Function
hi link cppNameScope Type
hi link cppTypeMatch Type
hi link cppDeclaration Type
hi link cppInstance Identifier
hi link cppArgs Identifier

" NOTE: these syntax groups are defined in default c.vim and cpp.vim syntax 
" files and here we just change it highlighting.
hi link cStructure StorageClass
hi link cStorageClass StorageClass
hi link cppModifier StorageClass
hi link cppAccess	StorageClass
hi link cppStructure StorageClass
