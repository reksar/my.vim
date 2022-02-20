" TODO: Vim Comment Title
set background=dark
hi clear
if exists('syntax_on')
	syntax reset
endif

let colors_name='lowcolor'

" Syntax: --------------------------------------------------------------------
hi Normal ctermfg=107 ctermbg=234 cterm=none
hi Normal guifg=#96925f guibg=#21201d gui=none
hi Keyword ctermfg=223 ctermbg=234 cterm=italic
hi Keyword guifg=#aa8060 guibg=#21201d gui=none
hi Statement ctermfg=Gray ctermbg=Black cterm=bold
hi Statement guifg=#baae8f guibg=#21201d gui=bold
hi PreProc ctermfg=Gray ctermbg=Black cterm=italic
hi PreProc guifg=#baae8f guibg=#21201d gui=italic
hi Identifier ctermfg=223 ctermbg=234 cterm=none
hi Identifier guifg=#baae8f guibg=#21201d gui=none
hi Label ctermfg=223 ctermbg=234 cterm=bold
hi Label guifg=#baae8f guibg=#21201d gui=bold
hi Function ctermfg=223 ctermbg=234 cterm=none
hi Function guifg=#baae8f guibg=#21201d gui=none
hi String ctermfg=186 ctermbg=234 cterm=none
hi String guifg=#edcd98 guibg=#21201d gui=none
hi Comment ctermfg=246 ctermbg=234 cterm=italic
hi Comment guifg=#777777 guibg=#21201d gui=italic
hi Special ctermfg=246 ctermbg=234 cterm=bold
hi Special guifg=#777777 guibg=#21201d gui=bold
hi Delimiter ctermfg=Gray ctermbg=Black cterm=none
hi Delimiter guifg=#aa8060 guibg=#21201d gui=none
hi Constant ctermfg=186 ctermbg=234 cterm=none
hi Constant guifg=#edcd98 guibg=#21201d gui=none
hi Number ctermfg=186 ctermbg=234 cterm=none
hi Number guifg=#edcd98 guibg=#21201d gui=none
hi Type ctermfg=DarkCyan 		ctermbg=Black cterm=NONE
hi Type guifg=#ccc281 guibg=#21201d gui=none




hi Define guifg=#7dadae guibg=#21201d
hi Operator guifg=#baae8f guibg=#21201d gui=bold
hi Exception guifg=#baae8f guibg=#21201d gui=bold
hi Include guifg=#baae8f gui=italic
hi Macro guifg=#baae8f gui=italic
hi PreCondit guifg=#baae8f gui=italic
hi SpecialComment guifg=#777777 guibg=#21201d gui=bold
hi SpecialChar guifg=#d08f48 guibg=#21201d
hi Tag guifg=#d08f48 guibg=#21201d
hi Debug guifg=#d08f48 guibg=#21201d
hi StorageClass guifg=#7dadae guibg=#21201d gui=none
hi Structure guifg=#7dadae guibg=#21201d gui=none
hi Typedef guifg=#7dadae guibg=#21201d gui=none
hi Ignore guifg=#777777


" Marked Text: ---------------------------------------------------------------
hi Search guifg=#ffcc00 guibg=#21201d gui=inverse
hi IncSearch guifg=#b5ee00 guibg=#21201d gui=inverse
hi Visual guibg=#111111 gui=reverse
hi Folded guifg=#baae8f guibg=#21201d gui=bold
hi Todo guifg=#afaf3f guibg=#21201d gui=inverse
hi Error guifg=#d35d41 guibg=#21201d gui=inverse

" Border Interface: ----------------------------------------------------------
hi NonText			guifg=#8B8BCD guibg=#1E1E1E gui=bold
hi NonText      guifg=#8b8bcd guibg=#292929 gui=bold
hi LineNr				ctermfg=Gray 				ctermbg=Black cterm=none
hi LineNr       guifg=#9a8b7b guibg=#292929 gui=none
hi ColorColumn 	ctermfg=Black				ctermbg=Magenta
hi ColorColumn  guibg=#292929
hi Statusline 	guifg=#FFFFFF guibg=#000000
hi Statusline   guifg=#ebdbb2 guibg=#000000
hi ErrorMsg guifg=#111111 guibg=#d35d41 gui=bold

" Menu: ----------------------------------------------------------------------
hi Pmenu guifg=#333333 guibg=#cfbfad
hi PmenuSel guifg=#111111 guibg=#baae8f gui=bold

" Cursor Indicators: ---------------------------------------------------------
hi Cursor guifg=#111111 guibg=#75eba0
hi CursorLine guibg=#111111
hi CursorLineNr guifg=#baae8f guibg=#21201d

" Brackets: ------------------------------------------------------------------
hi MatchParen guifg=#55FFFF guibg=#111111 gui=bold,underline

