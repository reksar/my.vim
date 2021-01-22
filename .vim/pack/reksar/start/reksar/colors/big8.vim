" Vim color file
" Maintainer: reksarka <reksarka@gmail.com>
" Last Change: 22.01.2021
" Version: 0.8
" Description: Big 8 of terminal colors.

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif

let colors_name='big8'

" Syntax: --------------------------------------------------------------------
hi Normal 			ctermfg=Gray 				ctermbg=Black cterm=NONE
hi Keyword 			ctermfg=Gray 				ctermbg=Black cterm=BOLD
hi Comment 			ctermfg=DarkMagenta	ctermbg=Black cterm=ITALIC
hi Identifier		ctermfg=DarkGreen 	ctermbg=Black cterm=NONE
hi Label 				ctermfg=DarkGreen 	ctermbg=Black cterm=BOLD
hi Function 		ctermfg=DarkYellow 	ctermbg=Black cterm=NONE
hi Special			ctermfg=DarkYellow 	ctermbg=Black cterm=NONE
hi Type					ctermfg=DarkCyan 		ctermbg=Black cterm=NONE
hi Constant			ctermfg=DarkRed 		ctermbg=Black cterm=NONE
hi Number				ctermfg=DarkRed 		ctermbg=Black cterm=NONE
hi String				ctermfg=White 			ctermbg=Black cterm=NONE
hi Delimiter		ctermfg=Gray 				ctermbg=Black cterm=NONE
hi Statement  	ctermfg=Gray 				ctermbg=Black cterm=BOLD
hi PreProc  		ctermfg=Gray 				ctermbg=Black cterm=ITALIC
hi Define 			ctermfg=DarkYellow 	ctermbg=Black cterm=ITALIC


" Marked Text: ---------------------------------------------------------------
hi Search				ctermfg=Black 			ctermbg=DarkBlue cterm=NONE
hi IncSearch		cterm=Reverse
hi Todo					ctermfg=Yellow			ctermbg=Black	cterm=BOLD
hi Folded 			guifg=#FFFFFF 			guibg=#181714 gui=BOLD


" Menu: ----------------------------------------------------------------------

hi Pmenu				ctermfg=Black 			ctermbg=DarkBlue
hi PmenuSel			ctermfg=Red					ctermbg=DarkBlue
"hi PmenuSbar
"hi PmenuThumb


" Border Interface: ----------------------------------------------------------
hi NonText			guifg=#8B8BCD guibg=#1E1E1E gui=BOLD
hi LineNr				ctermfg=Gray 				ctermbg=Black cterm=NONE
hi ColorColumn 	ctermfg=Black				ctermbg=Magenta
hi Statusline 	guifg=#FFFFFF guibg=#000000
hi ErrorMsg			guibg=#CC0000


" Menu: ----------------------------------------------------------------------
hi Pmenu				guifg=#181714 guibg=#CFBFAD
hi PmenuSel			guifg=#000000 guibg=#DDCCBB gui=BOLD


" Cursor Indicators: ---------------------------------------------------------
hi CursorLineNr	ctermfg=Black 			ctermbg=Gray	cterm=BOLD
hi CursorLine												ctermbg=Black cterm=NONE

" Brackets pairs
hi MatchParen 	ctermfg=Black 			ctermbg=Gray 	cterm=BOLD,UNDERLINE

