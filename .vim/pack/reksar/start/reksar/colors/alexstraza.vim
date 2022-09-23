" Vim color file
" Name: Alexstraza
" See: 256-color palette - https://jonasjacek.github.io/colors

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

let g:colors_name="alexstraza"

hi Visual guibg=reverse gui=inverse

if s:is_dark

"[
  hi Normal
    \ guifg=#baae8f guibg=#21201d gui=NONE
    \ ctermfg=180 ctermbg=234 cterm=NONE

  hi Statement
    \ guifg=fg guibg=bg gui=bold
    \ ctermfg=fg ctermbg=bg cterm=bold

  hi TabLineSel
    \ guifg=bg guibg=fg gui=NONE
    \ ctermfg=bg ctermbg=fg cterm=NONE
"]

"[
  hi Comment
    \ guifg=#8a8a8a guibg=bg gui=NONE
    \ ctermfg=245 ctermbg=bg cterm=NONE

  hi SpecialComment
    \ guifg=#8a8a8a guibg=bg gui=bold
    \ ctermfg=245 ctermbg=bg cterm=bold

  hi WarningMsg
    \ guifg=bg guibg=#8a8a8a gui=bold
    \ ctermfg=bg ctermbg=245 cterm=bold

  hi StatusLine
    \ guifg=bg guibg=#8a8a8a gui=NONE
    \ ctermfg=bg ctermbg=245 cterm=NONE
"]

"[
  hi Constant
    \ guifg=#edcd98 guibg=bg gui=NONE
    \ ctermfg=179 ctermbg=bg cterm=NONE

  hi Todo
    \ guifg=bg guibg=#edcd98 gui=NONE
    \ ctermfg=bg ctermbg=179 cterm=NONE
"]

"[
  hi Type
    \ guifg=#687b6d guibg=bg gui=NONE
    \ ctermfg=65 ctermbg=bg cterm=NONE
"]

"[
  hi Special
    \ guifg=#a75b51 guibg=bg gui=NONE
    \ ctermfg=167 ctermbg=bg cterm=NONE

  hi Error
    \ guifg=bg guibg=#a75b51 gui=bold
    \ ctermfg=bg ctermbg=167 cterm=bold

  hi DiffDelete
    \ guifg=bg guibg=#a75b51 gui=NONE
    \ ctermfg=bg ctermbg=167 cterm=NONE
"]

"[
  hi CursorLine
    \ guifg=NONE guibg=#1b1a18 gui=NONE
    \ ctermfg=NONE ctermbg=233 cterm=NONE

  hi CursorLineNr
    \ guifg=#949494 guibg=#1b1a18 gui=bold
    \ ctermfg=246 ctermbg=233 cterm=bold

  hi LineNr
    \ guifg=#585858 guibg=#1b1a18 gui=NONE
    \ ctermfg=240 ctermbg=233 cterm=NONE

  hi StatusLineNC
    \ guifg=bg guibg=#585858 gui=NONE
    \ ctermfg=bg ctermbg=240 cterm=NONE

  hi NonText
    \ guifg=#585858 guibg=bg gui=NONE
    \ ctermfg=240 ctermbg=bg cterm=NONE

  hi MatchParen
    \ guifg=bg guibg=#a75b51 gui=bold,underline,inverse
    \ ctermfg=bg ctermbg=167 cterm=bold,underline,inverse
"]

"[
  hi SuccessMsg
    \ guifg=bg guibg=#687b6d gui=bold
    \ ctermfg=bg ctermbg=65 cterm=bold

  hi Pmenu
    \ guifg=bg guibg=#687b6d gui=NONE
    \ ctermfg=bg ctermbg=65 cterm=NONE

  hi PmenuSel
    \ guifg=#edcd98 guibg=#585858 gui=NONE
    \ ctermfg=179 ctermbg=240 cterm=NONE

  hi PmenuBar
    \ guifg=#585858 guibg=#1b1a18 gui=NONE
    \ ctermfg=240 ctermbg=233 cterm=NONE
"]

else " is light

"[
  hi Normal
    \ guifg=#080808 guibg=#eeeeee gui=NONE
    \ ctermfg=232 ctermbg=255 cterm=NONE

  hi Statement
    \ guifg=fg guibg=bg gui=bold
    \ ctermfg=fg ctermbg=bg cterm=bold

  hi TabLineSel
    \ guifg=bg guibg=fg gui=NONE
    \ ctermfg=bg ctermbg=fg cterm=NONE
"]

"[
  hi Comment
    \ guifg=#808080 guibg=bg gui=NONE
    \ ctermfg=244 ctermbg=bg cterm=NONE

  hi SpecialComment
    \ guifg=#808080 guibg=bg gui=bold
    \ ctermfg=244 ctermbg=bg cterm=bold

  hi WarningMsg
    \ guifg=bg guibg=#808080 gui=bold
    \ ctermfg=bg ctermbg=244 cterm=bold

  hi StatusLine
    \ guifg=bg guibg=#808080 gui=NONE
    \ ctermfg=bg ctermbg=244 cterm=NONE
"]

"[
  hi Constant
    \ guifg=#005f00 guibg=bg gui=NONE
    \ ctermfg=22 ctermbg=bg cterm=NONE

  hi Todo
    \ guifg=#808080 guibg=#ffff5f gui=NONE
    \ ctermfg=244 ctermbg=227 cterm=NONE
"]

"[
  hi Type
    \ guifg=#005faf guibg=bg gui=NONE
    \ ctermfg=25 ctermbg=bg cterm=NONE
"]

"[
  hi Special
    \ guifg=#af5f00 guibg=bg gui=NONE
    \ ctermfg=130 ctermbg=bg cterm=NONE

  hi Error
    \ guifg=bg guibg=#af5f00 gui=bold
    \ ctermfg=bg ctermbg=130 cterm=bold

  hi DiffDelete
    \ guifg=bg guibg=#af5f00 gui=NONE
    \ ctermfg=bg ctermbg=130 cterm=NONE
"]

"[
  hi CursorLine
    \ guifg=NONE guibg=#e4e4e4 gui=NONE
    \ ctermfg=NONE ctermbg=254 cterm=NONE

  hi CursorLineNr
    \ guifg=#808080 guibg=#e4e4e4 gui=bold
    \ ctermfg=244 ctermbg=254 cterm=bold

  hi LineNr
    \ guifg=#a8a8a8 guibg=#e4e4e4 gui=NONE
    \ ctermfg=248 ctermbg=254 cterm=NONE

  hi StatusLineNC
    \ guifg=bg guibg=#a8a8a8 gui=NONE
    \ ctermfg=bg ctermbg=248 cterm=NONE

  hi NonText
    \ guifg=#a8a8a8 guibg=bg gui=NONE
    \ ctermfg=248 ctermbg=bg cterm=NONE

  hi MatchParen
    \ guifg=bg guibg=#af5f00 gui=bold,underline,inverse
    \ ctermfg=bg ctermbg=130 cterm=bold,underline,inverse
"]

"[
  hi SuccessMsg
    \ guifg=bg guibg=#005faf gui=bold
    \ ctermfg=bg ctermbg=25 cterm=bold

  hi Pmenu
    \ guifg=bg guibg=#005faf gui=NONE
    \ ctermfg=bg ctermbg=25 cterm=NONE

  hi PmenuSel
    \ guifg=#005f00 guibg=#a8a8a8 gui=NONE
    \  ctermfg=22 ctermbg=248 cterm=NONE

  hi PmenuBar
    \ guifg=#a8a8a8 guibg=#e4e4e4 gui=NONE
    \ ctermfg=248 ctermbg=254 cterm=NONE
"]

endif

hi! link ColorColumn CursorLine
hi! link DiffAdd Pmenu
hi! link DiffChange StatusLine
hi! link Directory Constant
hi! link ErrorMsg Error
hi! link Folded StatusLineNC
hi! link Identifier Normal
hi! link Include Statement
hi! link IncSearch Visual
hi! link MoreMsg Type
hi! link PreProc Constant
hi! link Search Visual
hi! link SpecialKey Special
hi! link Question Type
hi! link TabLine StatusLine
hi! link TabLineFill StatusLineNC
hi! link Title Statement
hi! link WildMenu Todo

hi! link healthSuccess SuccessMsg
