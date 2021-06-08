" TODO: Vim Comment Title
set background=dark
hi clear
if exists('syntax_on')
	syntax reset
endif

let colors_name='motley'

" Syntax: --------------------------------------------------------------------
hi Normal guifg=#baae8f guibg=#21201d gui=none
hi Keyword guifg=#baae8f guibg=#21201d gui=bold
hi Statement guifg=#baae8f guibg=#21201d gui=bold
hi Operator guifg=#baae8f guibg=#21201d gui=bold
hi Exception guifg=#baae8f guibg=#21201d gui=bold
hi PreProc guifg=#baae8f gui=italic
hi Include guifg=#baae8f gui=italic
hi Macro guifg=#baae8f gui=italic
hi PreCondit guifg=#baae8f gui=italic
hi Define guifg=#d08f48 guibg=#21201d gui=italic
hi Identifier	guifg=#afaf3f guibg=#21201d gui=none
hi Function guifg=#afaf3f guibg=#21201d gui=none
hi Label guifg=#afaf3f guibg=#21201d gui=bold
hi String guifg=#ebdbb2 guibg=#21201d gui=none
hi Comment guifg=#777777 guibg=#21201d gui=italic
hi SpecialComment guifg=#777777 guibg=#21201d gui=bold
hi SpecialChar guifg=#d08f48 guibg=#21201d
hi Special guifg=#d08f48 guibg=#21201d
hi Tag guifg=#d08f48 guibg=#21201d
hi Delimiter guifg=#d08f48 guibg=#21201d
hi Debug guifg=#d08f48 guibg=#21201d
hi Constant guifg=#d35d41 guibg=#21201d gui=none
hi Number guifg=#d35d41 guibg=#21201d gui=none
hi Type guifg=#7dadae guibg=#21201d gui=none
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
hi NonText guifg=#8b8bcd guibg=#292929 gui=bold
hi LineNr guifg=#9a8b7b guibg=#292929 gui=none
hi ColorColumn guibg=#292929
hi Statusline guifg=#ebdbb2 guibg=#000000
hi ErrorMsg guifg=#111111 guibg=#d35d41

" Menu: ----------------------------------------------------------------------
hi Pmenu guifg=#333333 guibg=#cfbfad
hi PmenuSel guifg=#111111 guibg=#baae8f gui=bold

" Cursor Indicators: ---------------------------------------------------------
hi Cursor guifg=#111111 guibg=#75eba0
hi CursorLine guibg=#111111
hi CursorLineNr guifg=#baae8f guibg=#21201d

" Brackets: ------------------------------------------------------------------
hi MatchParen guifg=#55FFFF guibg=#111111 gui=bold,underline

