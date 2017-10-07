" Vim color file
" Based On: http://vimdoc.sourceforge.net/htmldoc/syntax.html
" Maintainer: reksarka@gmail.com
" Last Change: 07.10.2017
" Version: 0.1
" Description: Dark warm colorscheme.
" Used Colors:
" 	#CFBFAD - sand (normal)
" 	#333333 - dark-warm (normal background)
" 	#4B6666 - obsidian (comment)
" 	#AFAF3F - yellowgreen (identifier)
"	#FFCA57 - yellow (function)
"	#AF6925 - brown (type)
"
" 	#FF5050 - red (operator) - backup
" 	#AEAE9A - gray (normal text) - backup

let g:colors_name="ascetic"

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

"--- Syntax ------------------------------------------------------------------
hi Normal 		guifg=#CFBFAD guibg=#333333
hi Comment  	guifg=#4B6666 gui=ITALIC
hi Constant		guifg=#FFFFFF
"hi  String
"hi  Character
"hi  Number
"hi  Boolean
"hi  Float
hi Identifier 	guifg=#AFAF3F
hi  Function 	guifg=#FFCA57
hi Statement 	guifg=#CFBFAD gui=BOLD
hi  Operator 	guifg=#FF5050
hi  Keyword 	guifg=#CFBFAD gui=BOLD
hi  Label		guifg=#B5EE00 gui=BOLD
"hi  Conditional
"hi  Repeat
"hi  Exception
hi PreProc 		guifg=#CFBFAD gui=BOLD,ITALIC
"hi  Include
"hi  Define
"hi  Macro
"hi  PreCondit
hi Type			guifg=#AF6925
hi  StorageClass guifg=#FFFFFF gui=BOLD
"hi  Structure
"hi  Typedef
hi Special		guifg=#88BEEE gui=ITALIC
hi  Delimiter	guifg=#FFFFFF gui=BOLD
"hi  SpecialChar
"hi  Tag
"hi  SpecialComment
"hi  Debug
"hi Underlined
"hi Ignore
"hi Error

"--- Marked Text -------------------------------------------------------------
hi Search 		guifg=#000000 guibg=#20CC20
hi  IncSearch 	guifg=#000000 guibg=Green	gui=NONE
hi Visual 		guibg=#555555
hi Todo 		guifg=#D9D9C0 guibg=#666600	
hi Folded 		guifg=#FFFFFF guibg=#333333 gui=BOLD

"--- Border Interface --------------------------------------------------------
hi NonText		guifg=#8B8BCD guibg=#2E2E2E
hi LineNr   	guifg=#AEAE9A guibg=#3B454C
hi ColorColumn 	guibg=#3B454C ctermbg=0
hi Statusline 	guifg=#FFFFFF guibg=#000000

"--- Menu --------------------------------------------------------------------
hi Pmenu		guifg=#333333 guibg=#CFBFAD
hi PmenuSel		guifg=#000000 guibg=#DDCCBB gui=BOLD

"--- Cursor indicators -------------------------------------------------------
hi CursorLineNr guifg=#AEAEAE guibg=#434E56
hi CursorLine 	guibg=#3B454C
" Brackets pairs
hi MatchParen 	guifg=#55FFFF guibg=#444444 gui=BOLD,UNDERLINE

