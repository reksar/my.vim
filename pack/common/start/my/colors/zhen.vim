" Vim / NeoVim color file
" Name: Zhen
"
" The dark theme palette is inspired by
" https://arthive.com/utagawakuniyoshi/works/468167~Trigram_Zhen_Thunder_From_the_trigrams_of_the_Chinese_predictions

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'zhen'
let s:is_dark = (&background == 'dark')


" Stubs
let s:fg = ['fg', 'fg']
let s:bg = ['bg', 'bg']
let s:no = ['NONE', 'NONE']


" Color palette {{{
"
" Dark theme:
"   - shades of black and white
"   - blue
"   - red
"   - yellow
"   - brown

" Normal background.
let s:normbg = s:is_dark ? ['#292522', 235] : ['#eeeeee', 255]

" A bit different from normal background. Used to hover the normal background
" without changing the foreground. E.g. for visual selection.
let s:hoverbg = s:is_dark ? ['#3d3733', 235] : ['#dddddd', 255]

" Normal foreground: light or dark as opposed to normal background.
let s:norm = s:is_dark ? ['#e3d8ce', 188] : ['#080808', 232]

let s:comment = s:is_dark ? ['#9b8671', 138] : ['#808080', 244]
let s:const = s:is_dark ? ['#d6bf9c', 179] : ['#005f00', 22]
let s:type = s:is_dark ? ['#70b0b0', 111] : ['#005faf', 25]
let s:special = s:is_dark ? ['#c04939', 167] : ['#af5f00', 130]
let s:search = s:is_dark ? ['#f8b659', 167] : ['#af5f00', 130]
let s:searchbg = s:is_dark ? ['#000000', 167] : ['#af5f00', 130]
let s:ok = s:is_dark ? ['#b1b325', 148] : ['#005faf', 25]
let s:bound = s:is_dark ? ['#1b1a18', 233] : ['#e4e4e4', 254]
let s:nontxt = s:is_dark ? ['#585858', 240] : ['#a8a8a8', 248]

" Color palette }}}


" Base hightght {{{
"
" Apply the color palette to the base set of highlight groups.
for [name, style, fg, bg] in [
\
\  ['Normal', 'NONE', s:norm, s:normbg],
\  ['TabLineSel', 'NONE', s:bg, s:fg],
\  ['FoldColumn', 'bold', s:normbg, s:norm],
\
\  ['Comment', 'NONE', s:comment, s:bg],
\  ['Todo', 'inverse', s:comment, s:bg],
\  ['SpecialComment', 'bold', s:comment, s:bg],
\  ['StatusLine', 'NONE', s:bound, s:comment],
\
\  ['Constant', 'NONE', s:const, s:bg],
\  ['WarningMsg', 'bold', s:bg, s:const],
\
\  ['Type', 'NONE', s:type, s:bg],
\  ['SpecialChar', 'NONE', s:type, s:bg],
\  ['SuccessMsg', 'bold', s:bg, s:type],
\
\  ['Special', 'NONE', s:special, s:bg],
\  ['DiagnosticWarn', 'bold', s:special, s:bg],
\  ['DiffDelete', 'NONE', s:bg, s:special],
\  ['Error', 'bold,inverse', s:special, s:bg],
\  ['MatchParen', 'bold,underline,inverse', s:bg, s:special],
\
\  ['Question', 'bold', s:ok, s:bg],
\  ['StatusLineTerm', 'NONE', s:bg, s:ok],
\
\  ['CursorLine', 'NONE', s:no, s:bound],
\  ['CursorLineNr', 'bold', s:bound, s:nontxt],
\  ['NonText', 'NONE', s:nontxt, s:bg],
\  ['LineNr', 'NONE', s:nontxt, s:bound],
\  ['StatusLineNC', 'NONE', s:bg, s:nontxt],
\  ['Pmenu', 'NONE', s:const, s:nontxt],
\  ['PmenuSel', 'inverse', s:no, s:no],
\
\  ['Visual', 'NONE', s:no, s:hoverbg],
\  ['Whitespace', 'NONE', s:hoverbg, s:normbg],
\
\  ['Added', 'NONE', s:ok, s:bound],
\  ['Changed', 'NONE', s:type, s:bound],
\  ['Removed', 'NONE', s:special, s:bound],
\]
  exe 'hi '.name.' gui='.style.' cterm='.style
  \  .' guifg='.fg[0].' guibg='.bg[0].' ctermfg='.fg[1].' ctermbg='.bg[1]
endfor

" Base hightght }}}


" Extra hightghting {{{
"
" Extend the base highlight groups by linking with extra groups.

hi DiagnosticError guifg=#dd3f19 guibg=bg gui=bold
hi DiagnosticSignError guifg=#dd3f19 guibg=#1b1a18 gui=bold

hi! link ColorColumn CursorLine
hi! link Conditional Operator
hi! link Delimiter Special
hi! link DiffAdd Pmenu
hi! link DiffChange StatusLine
hi! link Directory Constant
hi! link ErrorMsg Error
hi! link Folded CursorLineNr
hi! link Function Normal
hi! link Identifier Normal
hi! link IncSearch Visual
hi! link Include Statement
hi! link MoreMsg Type
hi! link Operator Special
hi! link PmenuBar LineNr
hi! link PreProc Constant
hi! link Search Visual
hi! link SignColumn LineNr
hi! link SpecialKey Special
hi! link Statement Type
hi! link StatusLineTermNC StatusLineTerm
hi! link String Constant
hi! link TabLine StatusLine
hi! link TabLineFill StatusLineNC
hi! link Title Statement
hi! link WildMenu Todo
hi! link healthSuccess SuccessMsg

" -- NeoVim extra {{{
if has('nvim')

  " Instead of Vim, NeoVim does not overrides the background of highlight
  " groups with the background of the `CursorLine` group. That's why the text
  " under the CursorLine looks ugly. Here we disable this ugly highlighting,
  " leaving only the cursor line number.
  set cursorlineopt=number

  hi! link DiagnosticSignInfo SpecialChar
  hi! link FloatBorder Delimiter
  hi! link FloatTitle DiagnosticWarn
  hi! link NormalFloat Normal
  hi! link WinSeparator FloatBorder

  " -- -- Treesitter {{{
  hi! link @keyword.conditional.ternary Delimiter
  hi! link @type.vim Normal
  hi! link @variable Normal
  hi! link @variable.builtin Normal
  " -- -- Treesitter }}}

  " -- -- LazyVim {{{
  hi! link NoiceCmdlinePopupBorder WinSeparator
  hi! link NoiceCmdlinePopupTitle FloatTitle
  hi! link NoiceCmdlinePopupTitleCmdline NoiceCmdlinePopupTitle
  hi! link NoiceCmdlinePrompt Normal
  hi! link NoicePopupmenuMatch Comment
  hi! link SnacksDashboardDesc Normal
  hi! link SnacksDashboardFooter Comment
  hi! link SnacksDashboardHeader Normal
  hi! link SnacksDashboardIcon Normal
  hi! link SnacksDashboardKey Type
  hi! link SnacksDashboardSpecial Constant
  hi! link SnacksIndent Whitespace
  hi! link SnacksIndentScope NonText
  " -- -- LazyVim }}}

endif
" -- NeoVim extra }}}

" Extra hightghting }}}
