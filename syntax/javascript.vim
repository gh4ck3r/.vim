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

" match only first line with "\%1l"
"  - https://vi.stackexchange.com/questions/6167/define-syntax-in-only-one-line
syn match   nodeJSShebang   "\%1l^#!.*" contains=@Spell,javaScriptCommentTodo
hi def link nodeJSShebang   Comment

syn keyword javaScriptReserved of yield constructor async await
syn keyword javaScriptGlobal console defaultView ownerDocument
syn keyword javaScriptIdentifier get set

syn match javaScriptType		"\<nsI\w\+\>"

" This is not that handy than I thought for just reading JS sources
"let g:jshint2_read = 1
