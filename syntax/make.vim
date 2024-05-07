if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn match makeDefine '^\s*undefine\>'
syn match makeStatement contained "(\(intcmp\|let\)\>"ms=s+1

let &cpo = s:cpo_save
unlet s:cpo_save
