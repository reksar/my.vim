" Vim syntax file
" Language:	JavaScript
" Maintainer:	Claudio Fleiner <claudio@fleiner.com>
" Updaters:	Scott Shattuck <ss@technicalpursuit.com>
" 		Kevin Locke
" 		REKSAR DSV <reksarka@gmail.com>
" URL:		http://www.fleiner.com/vim/syntax/javascript.vim
" Description: 	During modifying this file, it tested on `jquery-3.2.1.js`.
" 		All syntax bindings, that begins with `syntax` instead of 
" 		`syn`, were changed or added by REKSAR.
" Last Change:	07.10.2017

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
" tuning parameters:
" unlet js_fold

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'javascript'
elseif exists("b:current_syntax") && b:current_syntax == "javascript"
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

" Drop fold if it set but vim doesn't support it.
if version < 600 && exists("js_fold")
  unlet js_fold
endif


syn keyword jsCommentTodo      TODO FIXME XXX TBD contained
syn match   jsLineComment      "\/\/.*" contains=@Spell,jsCommentTodo
syn match   jsCommentSkip      "^[ \t]*\*\($\|[ \t]\+\)"
syn region  jsComment	       start="/\*"  end="\*/" contains=@Spell,jsCommentTodo
syn match   jsSpecial	       "\\\d\d\d\|\\."
syn region  jsStringD	       start=+"+  skip=+\\\\\|\\"+  end=+"\|$+	contains=jsSpecial,@htmlPreproc
syn region  jsStringS	       start=+'+  skip=+\\\\\|\\'+  end=+'\|$+	contains=jsSpecial,@htmlPreproc

syn match   jsSpecialCharacter "'\\.'"
syn region  jsRegexpString     start=+/[^/*]+me=e-1 skip=+\\\\\|\\/+ end=+/[gim]\{0,2\}\s*$+ end=+/[gim]\{0,2\}\s*[;.,)\]}]+me=e-1 contains=@htmlPreproc oneline

syn keyword jsConditional	if else switch
syn keyword jsRepeat		while for do in
syn keyword jsBranch		break continue
syn keyword jsOperator		new delete instanceof typeof
syn keyword jsType		Array Boolean Date Function Number Object String RegExp
syn keyword jsStatement		return with
syn keyword jsBoolean		true false
syn keyword jsNull		null undefined
syn keyword jsException		try catch finally throw
syn keyword jsGlobal		self top parent
syn keyword jsDeprecated	escape unescape
syn keyword jsReserved		abstract boolean byte char class const debugger double enum export extends final float goto implements import int interface long native package private protected public short static super synchronized throws transient volatile 

syntax keyword jsLabel		case default let this window
syntax keyword jsMessage	alert confirm prompt status log
syntax keyword jsMember		document event location arguments var
syntax keyword jsFunctionKey 	function

syntax match jsNumber 		"-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>" containedin=ALLBUT,jsComment,jsLineComment
syntax match jsParens 		"[()]" containedin=ALLBUT,jsComment,jsLineComment
syntax match jsDelimiter	"[\.,;:]" containedin=ALLBUT,jsComment,jsLineComment
syntax match jsOperator 	"[\*+\-<>!?=|&%]" containedin=ALLBUT,jsComment,jsLineComment
syntax match jsOperator		"\/\(\*\|\/\)\@!" containedin=ALLBUT,jsComment,jsLineComment
syntax match jsIdentifier 	"\w\+\ze\s*\(in\|\/\|,\|)\|\]\|\[\|=\|;\|:\|+\|\-\|\*\|>\|<\||\|&\|?\|!\|%\)"
syntax match jsIdentifier 	"\w\+\ze\."
syntax match jsFunctionCall 	"\w\+\ze\s*("

if exists("js_fold")
    syn match	jsFunction	"\<function\>"
    syn region	jsFunctionFold	start="\<function\>.*[^};]$" end="^\z1}.*$" transparent fold keepend

    syn sync match jsSync	grouphere jsFunctionFold "\<function\>"
    syn sync match jsSync	grouphere NONE "^}"

    setlocal foldmethod=syntax
    setlocal foldtext=getline(v:foldstart)
else
    syntax match jsBraces "[{}\[\]]" containedin=ALLBUT,jsComment,jsLineComment
endif

syn sync fromstart
syn sync maxlines=100

if main_syntax == "javascript"
  syn sync ccomment jsComment
endif

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_javascript_syn_inits")
  if version < 508
    let did_javascript_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  " by REKSAR
  HiLink jsIdentifier 		Identifier
  HiLink jsOperator 		Keyword
  HiLink jsFunctionCall 	Function
  HiLink jsFunctionKey 		Type
  HiLink jsDelimiter		Delimiter
  HiLink jsParens		Delimiter
  HiLink jsBraces		Delimiter

  HiLink jsComment		Comment
  HiLink jsLineComment		Comment
  HiLink jsCommentTodo		Todo
  HiLink jsSpecial		Special
  HiLink jsStringS		String
  HiLink jsStringD		String
  HiLink jsCharacter		Character
  HiLink jsSpecialCharacter	jsSpecial
  HiLink jsNumber		Constant
  HiLink jsConditional		Conditional
  HiLink jsRepeat		Repeat
  HiLink jsBranch		Conditional
  HiLink jsType			Type
  HiLink jsStatement		Statement
  HiLink jsFunction		Type
  HiLink jsError		Error
  HiLink javaScrParenError	jsError
  HiLink jsNull			Type
  HiLink jsBoolean		Boolean
  HiLink jsRegexpString		String
  HiLink jsLabel		Label
  HiLink jsException		Exception
  HiLink jsMessage		Keyword
  HiLink jsGlobal		Keyword
  HiLink jsMember		Keyword
  HiLink jsDeprecated		Exception 
  HiLink jsReserved		Keyword
  HiLink jsDebug		Debug

  delcommand HiLink
endif

let b:current_syntax = "javascript"
if main_syntax == 'javascript'
  unlet main_syntax
endif
let &cpo = s:cpo_save
unlet s:cpo_save

" vim: ts=8
