" XBL(eXtensible Binding Language) related things
au BufRead,BufNewFile *.xbl     call SetXblOptions()
function SetXblOptions()
	set filetype=xbl

	" Settings for matchit
	filetype plugin on
	if !exists("loaded_matchit")
		runtime macros/matchit.vim
	endif
	runtime ftplugin/xml.vim
    let b:match_ignorecase=0
    let b:match_words = &matchpairs.',\[:\],'.b:match_words
endfunction
