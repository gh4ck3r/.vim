"HTML5 extended syntax highlight
" Language: JavaScript

" Skip since this is enhanced syntax highlight
"if exists("b:current_syntax")
"    finish
"endif

syn keyword htmlTagName contained section
syn keyword htmlTagName contained header footer
syn keyword htmlTagName contained main article aside hgroup
syn keyword htmlTagName contained video audio source track
syn keyword htmlTagName contained nav figcaption figure
syn keyword htmlTagName contained bdi data mark rp rt rtc ruby time wbr
syn keyword htmlTagName contained embed canvas
syn keyword htmlTagName contained datalist fieldset meter output progress
syn keyword htmlTagName contained details dialog menuitem summary content
syn keyword htmlTagName contained element shadow template


" SVG tags
syn keyword htmlTagName contained svg
syn keyword htmlTagName contained circle

" '-' is used for id of elements
setlocal iskeyword+=-
