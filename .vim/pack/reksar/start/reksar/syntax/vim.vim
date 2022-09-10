if exists("b:current_syntax") && b:current_syntax != "vim"
  finish
endif

" Manually load default syntax first to override it.
syn clear
source $VIMRUNTIME/syntax/vim.vim

syn keyword vimBranching endif finish

hi link vimBranching Statement
hi link vimCommand Keyword
hi link vimCommentTitle SpecialComment
hi link vimGroup Identifier
hi link vimHiAttrib Constant
hi link vimNotFunc Statement
hi link vimOper Normal
