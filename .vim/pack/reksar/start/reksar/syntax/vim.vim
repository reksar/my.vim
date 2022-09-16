if exists("b:current_syntax") && b:current_syntax != "vim"
  finish
endif

" Manually load default syntax first to override it.
syn clear
source $VIMRUNTIME/syntax/vim.vim

syn keyword vimBranching endif finish

syn match vimScope /\<[abglstvw]:\ze\h/
  \ containedin=vimFBVar,vimFuncVar,vimFunc,vimVar

hi link vimBranching Statement
hi link vimCommand Keyword
hi link vimCommentTitle SpecialComment
hi link vimFBVar Type
hi link vimFuncSID Type
hi link vimFTOption Keyword
hi link vimGroup Identifier
hi link vimHiAttrib Constant
hi link vimNotFunc Statement
hi link vimOper Normal
hi link vimScope Type
hi link vimSynOption Type
hi link vimSynType Keyword
