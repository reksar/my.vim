" Vim color file
" See: http://vimdoc.sourceforge.net/htmldoc/syntax.html
"
" Maintainer: reksarka@gmail.com
" Last Change: 01.10.2017
" Version: 1.4
" Description: Based on herokudoc-gvim color scheme from http://vimcolors.com
" Used Colors:
" 	#434E56 - normal background
" 	#AEAE9A - gray (normal text)
" 	#FFEA00 - yellow (type)
" 	#666600 - darkyellow (TODO background)
" 	#B5EE00 - green (variable)
" 	#FF9143 - orange (number, constant)
" 	#88BEEE - blue (function)
" 	#FFAAFF - pink (enumeration)
" 	#55FFFF - cyan (link)

let g:colors_name="herokudoc"

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

"--- Syntax ------------------------------------------------------------------
hi Normal 		guifg=#D9D9C0 guibg=#434E56 ctermfg=7
hi Comment  	guifg=#8F8F8F gui=ITALIC ctermfg=7 ctermbg=0
hi Constant		guifg=#FF9143 ctermfg=3
hi  String 		guifg=#FFFFFF ctermbg=1
hi  Character 	guifg=#DDDDDD guibg=#404040
"hi  Number
"hi  Boolean
"hi  Float
hi Identifier 	guifg=#B5EE00 ctermfg=2
hi  Function 	guifg=#88BEEE
hi Statement 	guifg=#FFFFFF gui=BOLD ctermfg=3
hi  Operator 	guifg=#FFFFFF gui=BOLD
hi  Keyword 	guifg=#FFFFFF gui=BOLD
"hi  Conditional
"hi  Repeat
"hi  Label
"hi  Exception
hi PreProc 		guifg=#FFFFFF gui=BOLD,ITALIC
"hi  Include
"hi  Define
"hi  Macro
"hi  PreCondit
hi Type			guifg=#FFEA00 gui=NONE ctermfg=4
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
hi LineNr   	guifg=#AEAE9A guibg=#3B454C ctermfg=4 ctermbg=0
hi ColorColumn 	guibg=#3B454C ctermbg=0
hi Statusline 	guifg=#FFFFFF guibg=#000000

"--- Menu --------------------------------------------------------------------
hi Pmenu		guifg=#333333 guibg=#CFBFAD
hi PmenuSel		guifg=#000000 guibg=#DDCCBB gui=BOLD

"--- Cursor indicators -------------------------------------------------------
hi CursorLineNr guifg=#AEAEAE guibg=#434E56 ctermfg=2 ctermbg=0 cterm=BOLD
hi CursorLine 	guibg=#3B454C
" Brackets pairs
hi MatchParen 	guifg=#55FFFF guibg=#444444 gui=BOLD,UNDERLINE

