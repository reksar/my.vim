" Vim color file
" Name: Alexstraza
" 256-color palette: https://jonasjacek.github.io/colors

hi clear

let s:is_dark=(&background == "dark")

if s:is_dark
  set background=dark
else
  set background=light
endif

if version > 580
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "alexstraza"

if s:is_dark

  if (has("gui_running") || &termguicolors)

    hi Normal guifg=#baae8f guibg=#21201d gui=none
    hi Statement guifg=#baae8f guibg=#21201d gui=bold

    hi Comment guifg=#8a8a8a guibg=#21201d gui=none
    hi SpecialComment guifg=#8a8a8a guibg=#21201d gui=bold

    hi Todo guifg=#21201d guibg=#edcd98 gui=none

    hi Constant guifg=#edcd98 guibg=#21201d gui=none

    hi Type guifg=#687b6d guibg=#21201d gui=none

    hi Special guifg=#a75b51 guibg=#21201d gui=none

    hi Error guifg=#21201d guibg=#a75b51 gui=none

    hi CursorLine guibg=#1b1a18 gui=none
    hi CursorLineNr guifg=#949494 guibg=#1b1a18 gui=bold
    hi LineNr guifg=#585858 guibg=#1b1a18 gui=none

    hi MatchParen guifg=#21201d guibg=#a75b51 gui=bold,underline,inverse

  elseif &t_Co == 256

    hi Normal ctermfg=180 ctermbg=234 cterm=none
    hi Statement ctermfg=180 ctermbg=234 cterm=bold

    hi Comment ctermfg=245 ctermbg=234 cterm=none
    hi SpecialComment ctermfg=245 ctermbg=234 cterm=bold

    hi Todo ctermfg=234 ctermbg=179 cterm=none

    hi Constant ctermfg=179 ctermbg=234 cterm=none

    hi Type ctermfg=65 ctermbg=234 cterm=none

    hi Special ctermfg=167 ctermbg=234 cterm=none

    hi Error ctermfg=234 ctermbg=167 cterm=none

    hi CursorLine ctermfg=none ctermbg=233 cterm=none
    hi CursorLineNr ctermfg=246 ctermbg=233 cterm=bold
    hi LineNr ctermfg=240 ctermbg=233 cterm=none

    hi MatchParen ctermfg=234 ctermbg=167 cterm=bold,underline,inverse

  else  " 8-bit color terminal

    hi Normal ctermfg=Grey ctermbg=Black cterm=none
    hi Comment ctermfg=DarkGrey ctermbg=Black cterm=none
    hi SpecialComment ctermfg=DarkGrey ctermbg=Black cterm=bold

  endif

else  " is light

  if (has("gui_running") || &termguicolors)

    hi Normal guifg=#080808 guibg=#eeeeee gui=none
    hi Statement guifg=#080808 guibg=#eeeeee gui=bold

    hi Comment guifg=#808080 guibg=#eeeeee gui=none
    hi SpecialComment guifg=#808080 guibg=#eeeeee gui=bold

    hi Todo guifg=#808080 guibg=#ffff5f gui=none

    hi Constant guifg=#005f00 guibg=#eeeeee gui=none

    hi Type guifg=#005faf guibg=#eeeeee gui=none

    hi Special guifg=#af5f00 guibg=#eeeeee gui=none

    hi Error guifg=#eeeeee guibg=#af5f00 gui=none

    hi CursorLine guibg=#e4e4e4 gui=none
    hi CursorLineNr guifg=#808080 guibg=#e4e4e4 cterm=bold
    hi LineNr guifg=#a8a8a8 guibg=#e4e4e4 cterm=none

  elseif &t_Co == 256

    hi Normal ctermfg=232 ctermbg=255 cterm=none
    hi Statement ctermfg=232 ctermbg=255 cterm=bold

    hi Comment ctermfg=244 ctermbg=255 cterm=none
    hi SpecialComment ctermfg=244 ctermbg=255 cterm=bold

    hi Todo ctermfg=244 ctermbg=227 cterm=none

    hi Constant ctermfg=22 ctermbg=255 cterm=none

    hi Type ctermfg=25 ctermbg=255 cterm=none

    hi Special ctermfg=130 ctermbg=255 cterm=none

    hi Error ctermfg=255 ctermbg=130 cterm=none

    hi CursorLine ctermfg=none ctermbg=254 cterm=none
    hi CursorLineNr ctermfg=244 ctermbg=254 cterm=bold
    hi LineNr ctermfg=248 ctermbg=254 cterm=none

  else  " 8-bit color terminal
  endif
endif

hi! link ColorColumn CursorLine
hi! link Directory Constant
hi! link Identifier Normal
hi! link Include Statement
hi! link PreProc Constant
hi! link Question Type
hi! link Title Statement
