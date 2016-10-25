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
syntax match   idlVariantType contained "sequence<[a-zA-Z0-9_]\+" skipempty skipwhite contains=idlSeqType

syntax keyword idlOpContents contained ?
syntax match   idlOp         contained "sequence<[a-zA-Z0-9_]\+?\?>?\?" skipempty skipwhite nextgroup=idlOpName contains=idlSeqType,idlOpContents

syntax keyword webidlNull  null containedin=idlOpContents
syntax keyword webidlCallback callback skipempty skipwhite nextgroup=idlInterface,idlCallbackName

hi def link webidlCallback          Keyword
hi def link webidlNull              Keyword
hi def link idlCallbackName         Typedef


let b:current_syntax = "webidl"
