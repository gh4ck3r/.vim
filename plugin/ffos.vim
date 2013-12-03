if exists("$ANDROID_BUILD_TOP") && has("cscope")
	let s:cscope_db=[]
	let s:cscope_db_candidates_dir=['.', 'gecko', 'gaia', 'kernel']
	for s:dir in s:cscope_db_candidates_dir
		let s:db=$ANDROID_BUILD_TOP."/".s:dir."/cscope.out"
		if filereadable(s:db)
			call add(s:cscope_db, s:db)
		endif
	endfor

	for s:dir in s:cscope_db
		exec "silent cs add ".s:dir
	endfor
endif
