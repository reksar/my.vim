set nocompatible  " with Vi

filetype on
filetype plugin on
filetype plugin indent on
syntax on

set encoding=utf-8
set fileencodings=utf-8,latin1,cp1251,cp866
set backspace=indent,eol,start


" Statusbar: -----------------------------------------------------------------
set ls=2
set statusline=%F%m%r%h%w\ [%{&ff},%LL]\ line:char:col=%l:%c:%v


colorscheme gruvbox

" GUI: -----------------------------------------------------------------------
if has('gui_running')
  set lines=35 columns=90  " Window size
  set guioptions-=T  " Hide toolbar (button panel)

" GUI Windows: ---------------------------------------------------------------
  if has('gui_win32')
    set guifont=Consolas:h11
	set clipboard=unnamed  " Copy into system buffer
	language messages ru_RU.UTF-8

" GUI Linux: -----------------------------------------------------------------
  else
	set guifont=DejaVu\ Sans\ Mono\ 11
	set clipboard=unnamedplus  " Use system clipboard
	let g:CTAGS = $HOME.'/.vim/ctags'

  endif

" Terminal: ------------------------------------------------------------------
else

  if !(has('termguicolors') && &termguicolors) && &t_Co != 256
    colorscheme big8  " 8 bit terminal colors
  endif

  set clipboard=unnamedplus  " Use system clipboard

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


" Formatting Text: -----------------------------------------------------------
set tabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set smartindent
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


" File Types: ----------------------------------------------------------------

autocmd FileType php setlocal cc=120
if has('gui_running')
  autocmd FileType php setlocal columns=125
endif

autocmd FileType cs setlocal cc=120
if has('gui_running')
  autocmd FileType cs setlocal columns=125
endif

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
autocmd FileType xml setlocal cc=120
if has('gui_running')
  autocmd FileType xml setlocal columns=125
endif

autocmd FileType html set tabstop=2
autocmd FileType html set shiftwidth=2
autocmd FileType html setlocal cc=120
if has('gui_running')
  autocmd FileType html setlocal columns=125
endif

