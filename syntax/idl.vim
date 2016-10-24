" Vim syntax file
" Language:         idl (extension for webidl of Mozilla)
" Writer: Changbin Park (gh4ck3r@gmail.com)

"When syntax is already set
"if exists("b:current_syntax")
"  finish
"endif

syn keyword StorageClass boolean object sequence
syn keyword StorageClass int long short float
syn keyword StorageClass DOMString
syn keyword Keyword dictionary
syn keyword boolean true false

syn keyword idlVariantType contained int boolean

syn match idlOpParms contained +\<\(size_is\|length_is\)\s*([^)]*)+ skipempty skipwhite nextgroup=idlParmType
syn keyword idlAttribute contained scriptable builtinclass

" This makes methods in IDL unhighlighed.
"unlet! b:current_syntax
"syn include @idlCPP syntax/cpp.vim
"let b:current_syntax = "idl"
"syn region idlCPPSection start="^\s*%{C++\s*$" end="^\s*%}\s*$" matchgroup=Delimiter keepend contains=@idlCPP

hi def link  idlParmInt idlType
