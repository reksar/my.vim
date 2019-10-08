" Vim color file
" Documentation: http://vimdoc.sourceforge.net/htmldoc/syntax.html
" Based On: http://vimcolors.com/452/moonshine_minimal/light
" Maintainer: reksarka@gmail.com
" Last Change: 12.10.2017
" Version: 1.1
" Description: Khaki colorscheme. Dark-warm colors are not harmful for eyes.

let g:colors_name="khaki"
set background=dark

hi clear
if exists("syntax_on")
	syntax reset
endif


" Syntax: --------------------------------------------------------------------

hi Normal 		guifg=#CFBFAD guibg=#333333 gui=NONE
hi Normal 		ctermfg=Gray ctermbg=Black cterm=NONE

hi Keyword		guifg=#CFBFAD guibg=#333333 gui=BOLD
hi Keyword		ctermfg=DarkCyan ctermbg=Black cterm=NONE

hi Comment  	guifg=#777777 guibg=#333333 gui=ITALIC
hi Comment  	ctermfg=DarkGray ctermbg=Black cterm=ITALIC,BOLD

hi Identifier 	guifg=#AFAF3F guibg=#333333 gui=NONE
hi Identifier 	ctermfg=Gray ctermbg=Black cterm=NONE

hi Label		guifg=#AFAF3F guibg=#333333 gui=BOLD
hi Label 		ctermfg=DarkRed ctermbg=Black cterm=NONE

hi Function 	guifg=#FFCA57 guibg=#333333 gui=NONE
hi Function 	ctermfg=Brown ctermbg=Black cterm=NONE

hi Special		guifg=#FFCA57 guibg=#333333
hi Special		ctermfg=Brown ctermbg=Black

hi Type			guifg=#AF875F guibg=#333333 gui=BOLD
hi Type			ctermfg=DarkGreen ctermbg=Black cterm=NONE

hi Constant		guifg=#C5772C guibg=#333333 gui=NONE
hi Constant		ctermfg=DarkRed ctermbg=Black cterm=BOLD

hi String		guifg=#FFFFFF guibg=#333333 gui=NONE
hi String		ctermfg=White ctermbg=Black cterm=ITALIC

hi Delimiter	guifg=#CFBFAD guibg=#333333 gui=NONE

hi Statement 	guifg=#CFBFAD guibg=#333333 gui=BOLD
hi Statement  	ctermfg=DarkBlue ctermbg=Black cterm=BOLD

hi PreProc 		guifg=#CFBFAD gui=ITALIC
hi PreProc  	ctermfg=Gray ctermbg=Black cterm=ITALIC

hi Define 		guifg=#FFCA57 guibg=#333333 gui=ITALIC
hi Define 		ctermfg=Brown ctermbg=Black cterm=ITALIC


" Marked Text: ---------------------------------------------------------------

hi Search 		guifg=#000000 guibg=#FFCC00
hi Search		ctermfg=Black ctermbg=DarkBlue cterm=NONE

hi IncSearch 	guifg=#000000 guibg=#B5EE00	gui=NONE
hi IncSearch	cterm=Reverse

hi Visual 		guibg=#202020
hi Todo 		guifg=#D9D9C0 guibg=#666600	
hi Folded 		guifg=#FFFFFF guibg=#333333 gui=BOLD


" Border Interface: ----------------------------------------------------------

hi NonText		guifg=#8B8BCD guibg=#292929 gui=BOLD

hi LineNr   	guifg=#9A8B7B guibg=#292929 gui=NONE
hi LineNr		ctermfg=Gray ctermbg=Black cterm=NONE

hi ColorColumn 	guibg=#292929
hi ColorColumn 	ctermbg=Brown

hi Statusline 	guifg=#FFFFFF guibg=#000000
hi ErrorMsg		guibg=#CC0000


" Menu: ----------------------------------------------------------------------

hi Pmenu		guifg=#333333 guibg=#CFBFAD
hi PmenuSel		guifg=#000000 guibg=#DDCCBB gui=BOLD


" Cursor Indicators: ---------------------------------------------------------

hi CursorLineNr guifg=#CFBFAD guibg=#333333
hi CursorLineNr	ctermfg=White ctermbg=Black cterm=BOLD,UNDERLINE

hi CursorLine 	guibg=#292929
hi CursorLine	ctermbg=Black cterm=NONE

" Brackets pairs
hi MatchParen 	guifg=#55FFFF guibg=#444444 gui=BOLD,UNDERLINE
