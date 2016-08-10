" Customized Markdown syntax higilight

if !exists("b:current_syntax") || b:current_syntax != 'markdown'
  finish
endif

hi def link markdownCode HtmlPreStmt
