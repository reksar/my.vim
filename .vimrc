set nocompatible " с Vi

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
	set lines=35 columns=90 " размер окна
	set guioptions-=T " скрыть тулбар (кнопки)
"--- GUI Windows -------------------------------------------------------------
	if has ('gui_win32')
		set guifont=Consolas:h11
		set clipboard=unnamed " копировать в системный буфер
		language messages ru_RU.UTF-8
	else
"--- GUI Linux ---------------------------------------------------------------
		set guifont=DejaVu\ Sans\ Mono\ 11
		set clipboard=unnamedplus " копировать в системный буфер
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
set number " номера строк
set ruler " позиция курсора
set showcmd
set guioptions+=b "горизонтальная прокрутка
set nowrap " не переносить строки
set guicursor=a:blinkon600-blinkoff400 " скорость мигания курсора
set guitablabel=%t " только имя файла
set colorcolumn=80 " вертикальный столбец (правое поле)

"--- Formatting text ---------------------------------------------------------
set tabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set smartindent
let g:netrw_ignorenetrc=1
"set spell spelllang=ru " проверка орфографии

map <C-s> :w<CR> " Save
map <C-Tab> :tabnext<CR>
map <C-S-Tab> :tabprev<CR>

" Включить omni completion
set omnifunc=syntaxcomplete#Complete

" Удаление слова при Ctrl+Backspace
imap <C-BS> <C-W>

" Удаление слова при Ctrl+Del
imap <C-Del> <C-O>dw

" Отменить подсветку поиска при Esc
:nnoremap <esc> :noh<return><esc>

set statusline=%F%m%r%h%w\ [%{&ff},%LL]\ line:char:col=%l:%c:%v
