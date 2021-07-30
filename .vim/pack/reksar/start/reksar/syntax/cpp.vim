if !exists("b:current_syntax") || b:current_syntax != "cpp"
  syn clear
  source $VIMRUNTIME/syntax/cpp.vim
endif

" Redefine these default groups from $VIMRUNTIME/syntax, but make it contained.
syn clear cStructure
syn keyword	cStructure contained struct union enum typedef
syn clear cppStructure
syn keyword cppStructure contained class typename template namespace
syn clear cppAccess
syn keyword cppAccess contained public protected private
syn clear cStorageClass
syn keyword	cStorageClass contained	static register auto volatile extern const

syn match cppStructureDef "\(class\|struct\)\s\+\w\+"
    \ contains=cppStructure,cStructure

syn match cppStructureInnerAccess "\(public\|protected\|private\)\s\{-}:"
    \ contains=cppAccess

syn match cppInherit "\(public\|protected\|private\)\s\+\w\+"
    \ contains=cppAccess

syn match cppTypeMatch contained
  \ "\(static\|register\|auto\|volatile\|extern\|const\)\s\+\w\+"
    \ contains=cStorageClass

syn match cppDeclaration "\<\w\+\(\*\|&\)*$"

"                      ^      name     {...}     ;$
syn match cppInstance "^\s\{-}\w\+\ze\({.*}\)\{-};$"
    \ contains=cStorageClass

"                                        |ends with , or )
syn match cppFuncArgs contained "\w\+\ze\s\{-}\(,\|)\)"

"                      name | <- end of highlighting, \_ allows line breaks
syn match cppFunc "\w\+\ze(\_.\{-})"
    \ contains=cppFuncArgs

syn match cppNameScope "\w\+::"

hi link cppModifier StorageClass
hi link cppAccess	StorageClass
hi link cppStructure StorageClass
hi link cStructure StorageClass
hi link cppStructureDef Type
hi link cppInherit Type
hi link cppFunc Function
hi link cppNameScope Type
hi link cppTypeMatch Type
hi link cppDeclaration Type
hi link cppInstance Identifier
hi link cppFuncArgs Identifier
