set nocompatible " with Vi

filetype off
call pathogen#helptags()
call pathogen#infect()

filetype on
filetype plugin on
filetype plugin indent on

syntax on
set ls=2 " Statusbar
"--- GUI ---------------------------------------------------------------------
if has ('gui_running')
	colorscheme khaki " Must be after [syntax on]
	set lines=35 columns=90 " window size
	set guioptions-=T " hide toolbar (button panel)
"--- GUI Windows -------------------------------------------------------------
	if has ('gui_win32')
		set guifont=Consolas:h11
		set clipboard=unnamed " copty into system buffer
		language messages ru_RU.UTF-8
	else
"--- GUI Linux ---------------------------------------------------------------
		set guifont=DejaVu\ Sans\ Mono\ 11
		set clipboard=unnamedplus " copty into system buffer
		let g:CTAGS = $HOME."/.vim/ctags"
	endif
else
"--- Terminal ----------------------------------------------------------------
	colorscheme cterm " Must be after [syntax on]
endif

set encoding=utf-8
set fileencodings=utf-8,latin1,cp1251,cp866

set backspace=indent,eol,start

"--- Highlighting ------------------------------------------------------------
set cursorline
set incsearch
set hlsearch
"--- Interface ---------------------------------------------------------------
set number " show line numbers
set ruler " show cursor position at status bar
set showcmd
set guioptions+=b " show horizontal scroll
set nowrap " do not break the lines
set guicursor=a:blinkon600-blinkoff400 " cursor blinking speed
set guitablabel=%t " show only file name
set colorcolumn=80

"--- Formatting text ---------------------------------------------------------
set tabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set smartindent
let g:netrw_ignorenetrc=1
"set spell spelllang=ru " orphography check

map <C-s> :w<CR> " Save
map <C-Tab> :tabnext<CR>
map <C-S-Tab> :tabprev<CR>

" Enable omni completion
set omnifunc=syntaxcomplete#Complete

" Del word on `Ctrl+Backspace`
imap <C-BS> <C-W>

" Del word on `Ctrl+Del`
imap <C-Del> <C-O>dw

" Reset highlighting of searched text on `Esc`
:nnoremap <esc> :noh<return><esc>

set statusline=%F%m%r%h%w\ [%{&ff},%LL]\ line:char:col=%l:%c:%v
