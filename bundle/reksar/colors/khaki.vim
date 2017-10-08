" Vim color file
" Documentation: http://vimdoc.sourceforge.net/htmldoc/syntax.html
" Based On: http://vimcolors.com/452/moonshine_minimal/light
" Maintainer: reksarka@gmail.com
" Last Change: 08.10.2017
" Version: 1.0
" Description: Dark-warm colorscheme.
" Main Colors:
" 	#CFBFAD - white-sand (normal)
" 	#333333 - dark-warm (normal background)
" 	#777777 - gray (comment)
" 	#AFAF3F - khaki (identifier)
"	#FFCA57 - light-yellow (function)
"	#C5772C - orange-brown (constant)
" 	#AF875F - ligth-brown (type)
" 	#B5EE00 - yellowgreen (reserved)

let g:colors_name="khaki"

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

" Syntax: --------------------------------------------------------------------
hi Normal 		guifg=#CFBFAD guibg=#333333
hi Keyword		gui=BOLD
hi Comment  	guifg=#777777 gui=ITALIC
hi Identifier 	guifg=#AFAF3F
hi Label		guifg=#AFAF3F gui=BOLD
hi Function 	guifg=#FFCA57
hi Special		guifg=#FFCA57 gui=ITALIC
hi Type			guifg=#AF875F gui=BOLD
hi Constant		guifg=#C5772C
hi String		guifg=#FFFFFF
hi Statement 	guifg=#CFBFAD gui=BOLD
hi PreProc 		guifg=#CFBFAD gui=ITALIC
hi Delimiter	guifg=#CFBFAD

" Marked Text: ---------------------------------------------------------------
hi Search 		guifg=#000000 guibg=#FFCC00
hi IncSearch 	guifg=#000000 guibg=#B5EE00	gui=NONE
hi Visual 		guibg=#202020
hi Todo 		guifg=#D9D9C0 guibg=#666600	
hi Folded 		guifg=#FFFFFF guibg=#333333 gui=BOLD

" Border Interface: ----------------------------------------------------------
hi NonText		guifg=#8B8BCD guibg=#2E2E2E
hi LineNr   	guifg=#9A8B7B guibg=#292929
hi ColorColumn 	guibg=#292929
hi Statusline 	guifg=#FFFFFF guibg=#000000
hi ErrorMsg		guibg=#CC0000

" Menu: ----------------------------------------------------------------------
hi Pmenu		guifg=#333333 guibg=#CFBFAD
hi PmenuSel		guifg=#000000 guibg=#DDCCBB gui=BOLD

" Cursor Indicators: ---------------------------------------------------------
hi CursorLineNr guifg=#CFBFAD guibg=#333333
hi CursorLine 	guibg=#292929
" Brackets pairs
hi MatchParen 	guifg=#55FFFF guibg=#444444 gui=BOLD,UNDERLINE
