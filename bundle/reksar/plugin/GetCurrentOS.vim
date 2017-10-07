function! GetCurrentOS()
	if has("unix")
    	if system('uname') =~ 'Darwin'
			return "Mac"
    	else
			return "Linux"
    	endif
	elseif has("win32")
    	return "Windows"
	else
		return "Unknown"
	endif
endfunction
