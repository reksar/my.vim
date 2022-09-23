set nocompatible  " with Vi
set noswapfile

language messages en_US.UTF-8
set langmenu=en_US.UTF-8

set encoding=utf-8
set fileencodings=utf-8,latin1,cp1251,cp866
set backspace=indent,eol,start

filetype plugin indent on
syntax on

if has('win32')
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif

set termguicolors
set background=dark

" Statusbar: -----------------------------------------------------------------
set ls=2
set statusline=%F%m%r%h%w\ [%L\ %{&ff}
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}]\ [%l:%c\ %p%%]

" GUI: -----------------------------------------------------------------------
if has('gui_running')
  colorscheme alexstraza
  " Window size
  set lines=35 columns=90
  " Hide toolbar (button panel)
  set guioptions-=T

  if has('gui_win32')
  " GUI Windows: -------------------------------------------------------------
    set guifont=Consolas:h14
  else
  " GUI Linux: ---------------------------------------------------------------
    set guifont=DejaVu\ Sans\ Mono\ 11
  endif
else
  " Terminal: ----------------------------------------------------------------
  if has('win32')
    " Neovim Qt has not 'gui_running'.
    set guifont=Cascadia\ Mono\ Light:h15
  endif

  if !(has('termguicolors') && &termguicolors) && &t_Co != 256
  " Terminal Low Color: ------------------------------------------------------
    colorscheme alexstraza
  else
  " Terminal High Color: -----------------------------------------------------
    colorscheme alexstraza
  endif
endif

" Highlighting: --------------------------------------------------------------
set cursorline
set incsearch
set hlsearch

" Interface: -----------------------------------------------------------------
set number  " Show line numbers
set ruler  " Show cursor position in a status bar
set nowrap  " Do not break the lines
set colorcolumn=80  " May be rewritten in File Types section below
set showcmd
set guicursor=a:blinkwait700-blinkon600-blinkoff400  " Cursor blinking speed
set guitablabel=%t  " Show file name only
set guioptions+=b  " Show horizontal scroll
let g:netrw_banner=0
let g:netrw_list_style=3
let g:netrw_browse_split=3  " Open file in new tab
let g:netrw_winsize=23
let g:netrw_ignorenetrc=1

" Formatting Text: -----------------------------------------------------------
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent

"set spell spelllang=ru  " Orphography check
"set omnifunc=syntaxcomplete#Complete  " Enable omni completion

" Key Bindings: --------------------------------------------------------------

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

" Navigation between splitted windows
" Ctrl + <direction key>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" File Types: ----------------------------------------------------------------

autocmd FileType cpp set tabstop=2
autocmd FileType cpp set shiftwidth=2

autocmd FileType sh set tabstop=2
autocmd FileType sh set shiftwidth=2

autocmd FileType vim set tabstop=2
autocmd FileType vim set shiftwidth=2

autocmd FileType yaml set tabstop=2
autocmd FileType yaml set shiftwidth=2

autocmd FileType json set tabstop=2
autocmd FileType json set shiftwidth=2

autocmd FileType xml set tabstop=2
autocmd FileType xml set shiftwidth=2

autocmd FileType html set tabstop=2
autocmd FileType html set shiftwidth=2

autocmd FileType dosbatch set tabstop=2
autocmd FileType dosbatch set shiftwidth=2

autocmd FileType lua set tabstop=2
autocmd FileType lua set shiftwidth=2
