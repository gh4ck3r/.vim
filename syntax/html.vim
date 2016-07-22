"HTML5 extended syntax highlight
" Language: JavaScript

" Skip since this is enhanced syntax highlight
"if exists("b:current_syntax")
"    finish
"endif

syn keyword htmlTagName contained section
syn keyword htmlTagName contained header
syn keyword htmlTagName contained main

" SVG tags
syn keyword htmlTagName contained svg
syn keyword htmlTagName contained circle

" '-' is used for id of elements
setlocal iskeyword+=-
