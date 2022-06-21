" Vim color file
" Name: ul - universal lowcolor
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

let g:colors_name = "ul"

if s:is_dark
  if has("gui_running")

    hi Normal guifg=#ffd7af guibg=#1c1c1c gui=none
    hi Statement guifg=#ffd7af guibg=#1c1c1c gui=bold

    hi Comment guifg=#949494 guibg=#1c1c1c gui=italic
    hi SpecialComment guifg=#949494 guibg=#1c1c1c gui=italic,bold

    hi Constant guifg=#d7af5f guibg=#1c1c1c gui=none
    hi PreProc guifg=#d7af5f guibg=#1c1c1c gui=none

    hi Type guifg=#afd700 guibg=#1c1c1c gui=none

    hi Special guifg=#ff8700 guibg=#1c1c1c gui=none

    hi CursorLine guibg=#121212 gui=none
    hi CursorLineNr guifg=#949494 guibg=#121212 gui=bold
    hi LineNr guifg=#585858 guibg=#121212 gui=none

  elseif &t_Co == 256

    hi Normal ctermfg=223 ctermbg=234 cterm=none
    hi Statement ctermfg=223 ctermbg=234 cterm=bold

    hi Comment ctermfg=246 ctermbg=234 cterm=italic
    hi SpecialComment ctermfg=246 ctermbg=234 cterm=italic,bold

    hi Constant ctermfg=179 ctermbg=234 cterm=none
    hi PreProc ctermfg=179 ctermbg=234 cterm=none

    hi Type ctermfg=148 ctermbg=234 cterm=none

    hi Special ctermfg=208 ctermbg=234 cterm=none

    hi CursorLine ctermfg=none ctermbg=233 cterm=none
    hi CursorLineNr ctermfg=246 ctermbg=233 cterm=bold
    hi LineNr ctermfg=240 ctermbg=233 cterm=none

  else
    hi Normal ctermfg=Grey ctermbg=Black cterm=none
    hi Comment ctermfg=DarkGrey ctermbg=Black cterm=italic
    hi SpecialComment ctermfg=DarkGrey ctermbg=Black cterm=italic,bold
  endif
else
  if has("gui_running")

    hi Normal guifg=#080808 guibg=#eeeeee gui=none
    hi Statement guifg=#080808 guibg=#eeeeee gui=bold

    hi Comment guifg=#808080 guibg=#eeeeee gui=italic
    hi SpecialComment guifg=#808080 guibg=#eeeeee gui=italic,bold

    hi Constant guifg=#005f00 guibg=#eeeeee gui=none
    hi PreProc guifg=#005f00 guibg=#eeeeee gui=none

    hi Type guifg=#005faf guibg=#eeeeee gui=none

    hi Special guifg=#af5f00 guibg=#eeeeee gui=none

    hi CursorLine guibg=#e4e4e4 gui=none
    hi CursorLineNr guifg=#808080 guibg=#e4e4e4 cterm=bold
    hi LineNr guifg=#a8a8a8 guibg=#e4e4e4 cterm=none

  elseif &t_Co == 256

    hi Normal ctermfg=232 ctermbg=255 cterm=none
    hi Statement ctermfg=232 ctermbg=255 cterm=bold

    hi Comment ctermfg=244 ctermbg=255 cterm=italic
    hi SpecialComment ctermfg=244 ctermbg=255 cterm=italic,bold

    hi Constant ctermfg=22 ctermbg=255 cterm=none
    hi PreProc ctermfg=22 ctermbg=255 cterm=none

    hi Type ctermfg=25 ctermbg=255 cterm=none

    hi Special ctermfg=130 ctermbg=255 cterm=none

    hi CursorLine ctermfg=none ctermbg=254 cterm=none
    hi CursorLineNr ctermfg=244 ctermbg=254 cterm=bold
    hi LineNr ctermfg=248 ctermbg=254 cterm=none
  else
  endif
endif
hi! link ColorColumn CursorLine
hi! link Identifier Normal
