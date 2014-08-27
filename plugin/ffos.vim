if exists("$ANDROID_BUILD_TOP") && has("cscope")
	let s:cscope_db=[]
	let s:cscope_db_candidates_dir=['.', 'gecko', 'gaia', 'kernel']
	for s:dir in s:cscope_db_candidates_dir
		let s:cs_db=$ANDROID_BUILD_TOP."/".s:dir."/cscope.out"
		if filereadable(s:cs_db)
			call add(s:cscope_db, s:cs_db)
		endif
	endfor

    " suppress msg when any other cscope db added
    set nocscopeverbose
	for s:dir in s:cscope_db
		exec "silent cs add ".s:dir
	endfor
    " show msg when any other cscope db added
    set cscopeverbose
endif
