"JavaScript extended syntax highlight for ES6
" Language: JavaScript

" Skip since this is enhanced syntax highlight
"if exists("b:current_syntax")
"    finish
"endif

" Template string and embedded expression
syn region  javaScriptStringTExp     start=+${+ skip=+\\\\\|\\'+  end=+}+     contained
syn region  javaScriptStringT        start=+`+  skip=+\\\\\|\\'+  end=+`+	    contains=javaScriptSpecial,@htmlPreproc,javaScriptStringTExp

hi def link javaScriptStringT		String
hi def link javaScriptStringTExp Statement

syn keyword javaScriptReserved of yield
syn keyword javaScriptGlobal console
