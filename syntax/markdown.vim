" Customized Markdown syntax higilight

if !exists("b:current_syntax") || b:current_syntax != 'markdown'
  finish
endif

syn region markdownStrikeThrough start="\S\@<=\~\~\|\~\~\S\@=" end="\S\@<=\~\~\|\~\~\S\@=" keepend contains=markdownLineStart

hi def link markdownCode HtmlPreStmt
hi markdownStrikeThrough ctermfg=235 guifg=#4e4e4e

setlocal conceallevel=2
setlocal concealcursor=nc
syn region markdownLink matchgroup=markdownLinkDelimiter start="(" end=")" contains=markdownUrl keepend contained conceal cchar=⋯
