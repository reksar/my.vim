function MapAutoclose (open, close)
	if (a:open == a:close)
		execute 'inoremap <expr> '.a:open.' AutocloseTwinChar("'.a:open.'")'
	else
		execute 'inoremap <expr> '.a:open.' AutocloseDualChar("'.a:open.'","'.a:close.'")'
		execute 'inoremap <expr> '.a:close.' PasteOrJump("'.a:close.'")'
	endif
endfunction

function AutocloseDualChar (open, close)
	if NeedToClose()
		return a:open . a:close . CursorLeft()
	else
		return a:open
	endif
endfunction

function PasteOrJump (close)
	if (GetNextChar() == a:close)
		return CursorRight()
	else
		return a:close
	endif
endfunction

function AutocloseTwinChar (char)
	if (GetNextChar() == a:char)
		return CursorRight()
	else
		return AutocloseDualChar (a:char, a:char)
	endif
endfunction

function NeedToClose()
	let next = GetNextChar()
	if ((next == "")
		\|| (next =~ '\s')
		\|| (next == ".")
		\|| (next == ";")
		\|| (next == ")")
		\|| (next == "]")
		\|| (next == "}")
		\|| (next == ">")
		\|| (next == "'")
		\|| (next == "\""))
		return 1
	else
		return 0
	endif
endfunction

function GetNextChar()
	let current_line = getline (".")
	let current_col = col (".")
	let next_col = current_col - 1
	let next_char = current_line[next_col]
	return next_char
endfunction

function CursorLeft()
	let Esc = "\u1B"
	return Esc . 'i'
endfunction

function CursorRight()
	let Esc = "\u1B"
	return Esc . 'la'
endfunction

inoremap <expr> " AutocloseTwinChar ('"')
call MapAutoclose ("(",")")
call MapAutoclose ("{","}")
call MapAutoclose ("[","]")
call MapAutoclose ("'","'")
