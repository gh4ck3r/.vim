" Customized Markdown syntax higilight

if !exists("b:current_syntax") || b:current_syntax != 'markdown'
  finish
endif

syn region markdownStrikeThrough start="\S\@<=\~\~\|\~\~\S\@=" end="\S\@<=\~\~\|\~\~\S\@=" keepend contains=markdownLineStart

hi def link markdownCode HtmlPreStmt
hi markdownStrikeThrough ctermfg=235 guifg=#4e4e4e
