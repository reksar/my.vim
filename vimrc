" Common: {{{
set nocompatible  " with Vi
set noswapfile

language messages C.UTF-8
set langmenu=C.UTF-8

set encoding=utf-8
set fileencodings=utf-8,latin1,cp1251,cp866
set backspace=indent,eol,start

filetype plugin indent on
syntax on

let &clipboard = has('win32') ? 'unnamed' : 'unnamedplus'

set termguicolors
set background=dark
set mouse=a

set path+=**

" See `:help complete`.
" Exclude included files from searching for completion.
set complete-=i
" Exclude tags from searching for completion.
set complete-=t

" On `set wrap` wraps words, not symbols.
set linebreak

" The default is `shellcmdflag=-c`, but you can make the shell interactive with
" `shellcmdflag=-ic`. But the interactive shell has some disadvantages. So
" this is the alternative solution for non-interactive Vim shell.
" Requires `shopt -s expand_aliases` in the specified file.
let $BASH_ENV = '~/.bash_aliases'
" }}}

" Statusbar: {{{
set ls=2
set statusline=%F%m%r%h%w\ [%L\ %{&ff}
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}]\ [%l:%c\ %p%%]
" }}}

" GUI: {{{
if has('gui_running')
  colorscheme zhen
  " Window size
  set lines=35 columns=90
  " Hide toolbar (button panel)
  set guioptions-=T

  if has('gui_win32')
  " GUI Windows: {{{
    set guifont=InputMonoCondensed\ Light:h15
  " }}}
  else
  " GUI Linux: {{{
    set guifont=DejaVu\ Sans\ Mono\ 11
  " }}}
  endif
" }}}
else
  " TUI: {{{
  if has('win32')
    " Neovim Qt has not 'gui_running'.
    set guifont=Input\ Mono\ Condensed:h15
  endif

  if !(has('termguicolors') && &termguicolors) && &t_Co != 256
  " Terminal Low Color: ------------------------------------------------------
    colorscheme zhen
  else
  " Terminal High Color: -----------------------------------------------------
    colorscheme zhen
  endif
endif
" }}}

" Interface: {{{
set number  " Show line numbers
set ruler  " Show cursor position in a status bar
set nowrap  " Do not break the lines
set colorcolumn=80  " May be rewritten in File Types section below
set showcmd
set foldmethod=marker
set guicursor=a:blinkwait700-blinkon600-blinkoff400  " Cursor blinking speed
set guitablabel=%t  " Show file name only
set guioptions+=b  " Show horizontal scroll
let g:netrw_banner=0
let g:netrw_list_style=3
let g:netrw_browse_split=3  " Open file in new tab
let g:netrw_winsize=23
let g:netrw_ignorenetrc=1
" }}}

" Highlighting: {{{
set cursorline
set incsearch
set hlsearch
" }}}

" Text Formatting: {{{
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
"set spell spelllang=ru  " Orphography check
"set omnifunc=syntaxcomplete#Complete  " Enable omni completion
" }}}

" Key Bindings: {{{

" Save on `Ctrl+S`
map <C-s> :w<CR>

" Del word on `Ctrl+Backspace`
imap <C-BS> <C-W>

" Del word on `Ctrl+Del`
imap <C-Del> <C-O>dw

" Reset Search highlight on `Enter`
nnoremap <CR> :nohlsearch<CR><CR>

" Switch line relative/absolute numbers on `Alt+N`
nnoremap <A-n> :set invrelativenumber<CR>

" `:let cmd = '<a shell cmd>'`, then you can run a `cmd` on `Alt+R`.
nnoremap <A-r> :exe '!'.cmd<CR>
" This is the same, but when the `Alt` is redirected via another console app.
" The `^[` is the control char: put with `Ctrl+V`, `Esc`.
nnoremap r :exe '!'.cmd<CR>

" Navigation between splitted windows
" Ctrl + <direction key>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" }}}

" File Types: {{{
for i in [
\ 'vim',
\ 'lua',
\ 'xml',
\ 'html',
\ 'json',
\ 'yaml',
\ 'sh',
\ 'cpp',
\ 'dosbatch',
\ 'javascript',
\]
  exe 'autocmd FileType '.i.' set tabstop=2'
  exe 'autocmd FileType '.i.' set shiftwidth=2'
endfor
" }}}
