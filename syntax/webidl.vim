" Vim syntax file
" Language:         webidl
" Writer: Changbin Park (gh4ck3r@gmail.com)

"When syntax is already set
if exists("b:current_syntax")
  finish
endif

runtime! syntax/idl.vim

syntax match   idlCallbackName contained "[a-zA-Z0-9_]\+"       skipempty skipwhite nextgroup=idlOp

syntax match   idlVariantType contained "\(\(Ui\|I\)nt\|Float\)\(8\|16\|32\|64\)Array"
syntax keyword idlVariantType contained Uint8ClampedArray ArrayBuffer ArrayBufferView
syntax keyword idlVariantType contained DOMString
syntax keyword idlVariantType contained Dict
syntax match   idlVariantType contained "sequence<[a-zA-Z0-9_]\+>" skipempty skipwhite contains=idlVariantType

syntax keyword webidlPromiseType Promise                  skipempty skipwhite nextgroup=idlD4
syntax cluster webidlContainer contains=idlSeqType,webidlPromiseType

syntax match   webidlOption  contained  "?\?" skipempty skipwhite nextgroup=idlOpName
syntax match   idlOp         contained "[a-zA-Z0-9_]\+[ \t]*\(::[ \t]*[a-zA-Z0-9_]\+\)*" skipempty skipwhite nextgroup=idlOpName,webidlOption
syntax match   idlOp         contained "[a-zA-Z0-9_]\+\w*\s*<\s*\w\+\s*>" skipempty skipwhite nextgroup=idlOpName contains=@webidlContainer

syntax keyword webidlNull  null containedin=idlOpContents
syntax keyword webidlCallback callback skipempty skipwhite nextgroup=idlInterface,idlCallbackName

hi def link webidlCallback          Keyword
hi def link webidlNull              Keyword
hi def link idlCallbackName         Typedef
hi def link webidlPromiseType       idlType

syn keyword idlInterface     partial

let b:current_syntax = "webidl"
