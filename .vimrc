set nocompatible  " with Vi

language messages en_US.UTF-8
set langmenu=en_US.UTF-8

filetype plugin indent on
syntax on

set termguicolors
set background=dark

set encoding=utf-8
set fileencodings=utf-8,latin1,cp1251,cp866
set backspace=indent,eol,start
set noswapfile

" Statusbar: -----------------------------------------------------------------
set ls=2
set statusline=%F%m%r%h%w\ [%{&ff},%LL]\ chr:col=%c:%v

" GUI: -----------------------------------------------------------------------
if has('gui_running')
  colorscheme alexstraza
  " Window size
  set lines=35 columns=90
  " Hide toolbar (button panel)
  set guioptions-=T

" GUI Windows: ---------------------------------------------------------------
  if has('gui_win32')
    set guifont=Consolas:h14
    set clipboard=unnamed
    language messages ru_RU.UTF-8

" GUI Linux: -----------------------------------------------------------------
  else
    set guifont=DejaVu\ Sans\ Mono\ 11
    set clipboard=unnamedplus
    let g:CTAGS = $HOME.'/.vim/ctags'
  endif

" Terminal: ------------------------------------------------------------------
else
  " Use system clipboard
  set clipboard=unnamedplus

" Terminal Low Color: --------------------------------------------------------
  if !(has('termguicolors') && &termguicolors) && &t_Co != 256
    colorscheme alexstraza

" Terminal High Color: -------------------------------------------------------
  else
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
set guicursor=a:blinkon600-blinkoff400  " Cursor blinking speed
set guitablabel=%t  " Show file name only
set guioptions+=b  " Show horizontal scroll
let g:netrw_banner=0
let g:netrw_list_hide='.*\.swp$'
let g:netrw_browse_split=4  " Open file in previous window

" Formatting Text: -----------------------------------------------------------
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent

let g:netrw_winsize=23
let g:netrw_ignorenetrc=1

"set spell spelllang=ru  " Orphography check
"set omnifunc=syntaxcomplete#Complete  " Enable omni completion

" Key Bindings: --------------------------------------------------------------

" Save
map <C-s> :w<CR>

" Del word on `Ctrl+Backspace`
imap <C-BS> <C-W>

" Del word on `Ctrl+Del`
imap <C-Del> <C-O>dw

" Reset search highlighting on `Esc`
if has('gui_running')
  :nnoremap <esc> :nohlsearch<return><esc>
else
  :nnoremap <CR> :nohlsearch<CR><CR>
endif

map <C-Tab> :tabnext<CR>
map <C-S-Tab> :tabprev<CR>
nmap <C-L> :set invrelativenumber<CR>

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
