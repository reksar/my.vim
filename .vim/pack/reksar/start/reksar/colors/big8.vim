" Vim color file
" Maintainer: REKSAR SVD <reksarka@gmail.com>
" Last Change: 15.11.2020
" Version: 0.6
" Description: Big 8 (bit) colors for customized terminal.

set background=dark
hi clear
if exists('syntax_on')
	syntax reset
endif

let colors_name='big8'

" Syntax: --------------------------------------------------------------------

hi Normal 		guifg=#CFBFAD guibg=#181714 gui=NONE
hi Normal 		ctermfg=Gray ctermbg=Black cterm=NONE

hi Keyword		guifg=#CFBFAD guibg=#181714 gui=BOLD
hi Keyword		ctermfg=Gray ctermbg=Black cterm=BOLD

hi Comment  	guifg=#8A8A8A guibg=#181714 gui=ITALIC
hi Comment  	ctermfg=DarkMagenta ctermbg=Black cterm=ITALIC

hi Identifier 	guifg=#AFA54B guibg=#181714 gui=NONE
hi Identifier 	ctermfg=DarkGreen ctermbg=Black cterm=NONE

hi Label		guifg=#AFA54B guibg=#181714 gui=BOLD
hi Label 		ctermfg=DarkGreen ctermbg=Black cterm=BOLD

hi Function 	guifg=#DC964B guibg=#181714 gui=NONE
hi Function 	ctermfg=DarkYellow ctermbg=Black cterm=NONE

hi Special		guifg=#E9B152 guibg=#181714
hi Special		ctermfg=DarkYellow ctermbg=Black

hi Type			guifg=#7AA085 guibg=#181714 gui=NONE
hi Type			ctermfg=DarkCyan ctermbg=Black cterm=NONE

hi Constant		guifg=#DF6143 guibg=#181714 gui=NONE
hi Constant		ctermfg=DarkRed ctermbg=Black cterm=NONE

hi Number		guifg=#DF6143 guibg=#181714 gui=NONE
hi Number		ctermfg=DarkRed ctermbg=Black cterm=NONE

hi String		guifg=#FFFFFF guibg=#181714 gui=NONE
hi String		ctermfg=White ctermbg=Black cterm=NONE

hi Delimiter	guifg=#CFBFAD guibg=#181714 gui=NONE
hi Delimiter	ctermfg=Gray ctermbg=Black cterm=NONE

hi Statement 	guifg=#CFBFAD guibg=#181714 gui=BOLD
hi Statement  	ctermfg=Gray ctermbg=Black cterm=BOLD

hi PreProc 		guifg=#CFBFAD gui=ITALIC
hi PreProc  	ctermfg=Gray ctermbg=Black cterm=ITALIC

hi Define 		guifg=#E9B152 guibg=#181714 gui=ITALIC
hi Define 		ctermfg=DarkYellow ctermbg=Black cterm=ITALIC


" Marked Text: ---------------------------------------------------------------

hi Search 		guifg=#000000 guibg=#FFCC00
hi Search		ctermfg=Black ctermbg=DarkBlue cterm=NONE

hi IncSearch 	guifg=#000000 guibg=#B5EE00	gui=NONE
hi IncSearch	cterm=Reverse

hi Visual 		guibg=#202020
hi Todo 		guifg=#D9D9C0 guibg=#666600	
hi Folded 		guifg=#FFFFFF guibg=#181714 gui=BOLD


" Menu: ----------------------------------------------------------------------

hi Pmenu		ctermfg=Black 	ctermbg=DarkBlue
hi PmenuSel		ctermfg=Red		ctermbg=DarkBlue
"hi PmenuSbar
"hi PmenuThumb


" Border Interface: ----------------------------------------------------------

hi NonText		guifg=#8B8BCD guibg=#1E1E1E gui=BOLD

hi LineNr   	guifg=#9A8B7B guibg=#1E1E1E gui=NONE
hi LineNr		ctermfg=Gray ctermbg=Black cterm=NONE

hi ColorColumn 	guibg=#1E1E1E
hi ColorColumn 	ctermfg=Black	ctermbg=Magenta

hi Statusline 	guifg=#FFFFFF guibg=#000000
hi ErrorMsg		guibg=#CC0000


" Menu: ----------------------------------------------------------------------

hi Pmenu		guifg=#181714 guibg=#CFBFAD
hi PmenuSel		guifg=#000000 guibg=#DDCCBB gui=BOLD


" Cursor Indicators: ---------------------------------------------------------

hi CursorLineNr guifg=#CFBFAD guibg=#181714
hi CursorLineNr	ctermfg=Black ctermbg=Gray cterm=BOLD

hi CursorLine 	guibg=#1E1E1E
hi CursorLine	ctermbg=Black cterm=NONE

" Brackets pairs
hi MatchParen 	guifg=#55FFFF guibg=#444444 gui=BOLD,UNDERLINE
hi MatchParen 	ctermfg=Black ctermbg=Gray cterm=BOLD,UNDERLINE
