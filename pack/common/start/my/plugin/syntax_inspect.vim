command! SyntaxInspect
\ echo "Group: "
\   . synIDattr(synID(line("."), col("."), 1), "name")
\   . " → " 
\   . synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")
