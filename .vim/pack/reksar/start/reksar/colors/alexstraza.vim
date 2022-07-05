" Vim color file
" Name: Alexstraza
" 256-color palette: https://jonasjacek.github.io/colors

highlight clear

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

  if has("gui_running")

    hi Normal guifg=#d7af87 guibg=#1c1c1c gui=none
    hi Statement guifg=#d7af87 guibg=#1c1c1c gui=bold

    hi Comment guifg=#8a8a8a guibg=#1c1c1c gui=none
    hi SpecialComment guifg=#8a8a8a guibg=#1c1c1c gui=bold

    hi Todo guifg=#1c1c1c guibg=#d7af5f gui=none

    hi Constant guifg=#d7af5f guibg=#1c1c1c gui=none

    hi Type guifg=#5f875f guibg=#1c1c1c gui=none

    hi Special guifg=#d75f5f guibg=#1c1c1c gui=none

    hi CursorLine guibg=#1c1c1c gui=none
    hi CursorLineNr guifg=#949494 guibg=#1c1c1c gui=bold
    hi LineNr guifg=#585858 guibg=#1c1c1c gui=none

  elseif &t_Co == 256

    hi Normal ctermfg=180 ctermbg=234 cterm=none
    hi Statement ctermfg=180 ctermbg=234 cterm=bold

    hi Comment ctermfg=245 ctermbg=234 cterm=none
    hi SpecialComment ctermfg=245 ctermbg=234 cterm=bold

    hi Todo ctermfg=234 ctermbg=179 cterm=none

    hi Constant ctermfg=179 ctermbg=234 cterm=none

    hi Type ctermfg=65 ctermbg=234 cterm=none

    hi Special ctermfg=167 ctermbg=234 cterm=none

    hi CursorLine ctermfg=none ctermbg=234 cterm=none
    hi CursorLineNr ctermfg=246 ctermbg=234 cterm=bold
    hi LineNr ctermfg=240 ctermbg=234 cterm=none

  else  " 8-bit color terminal

    hi Normal ctermfg=Grey ctermbg=Black cterm=none
    hi Comment ctermfg=DarkGrey ctermbg=Black cterm=none
    hi SpecialComment ctermfg=DarkGrey ctermbg=Black cterm=bold

  endif

else  " is light

  if has("gui_running")

    hi Normal guifg=#080808 guibg=#eeeeee gui=none
    hi Statement guifg=#080808 guibg=#eeeeee gui=bold

    hi Comment guifg=#808080 guibg=#eeeeee gui=none
    hi SpecialComment guifg=#808080 guibg=#eeeeee gui=bold

    hi Todo guifg=#808080 guibg=#ffff5f gui=none

    hi Constant guifg=#005f00 guibg=#eeeeee gui=none

    hi Type guifg=#005faf guibg=#eeeeee gui=none

    hi Special guifg=#af5f00 guibg=#eeeeee gui=none

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

    hi CursorLine ctermfg=none ctermbg=254 cterm=none
    hi CursorLineNr ctermfg=244 ctermbg=254 cterm=bold
    hi LineNr ctermfg=248 ctermbg=254 cterm=none

  else  " 8-bit color terminal
  endif
endif

hi! link ColorColumn CursorLine
hi! link Identifier Normal
hi! link PreProc Constant
