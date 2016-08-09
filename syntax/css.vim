" Vim syntax file
" Language:     Cascading Style Sheets

" Skip since this is enhanced syntax highlight
"if exists("b:current_syntax")
"    finish
"endif

" CSS Animations
" http://www.w3.org/TR/css3-animations/
" 'animation-iteration-count' is not listed css syntax highlight in vim 7.4
syn match cssAnimationProp contained "\<animation\(-\(iteration-count\)\)\=\>"

syn keyword cssAnimationAttr contained infinite
