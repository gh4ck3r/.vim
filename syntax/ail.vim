" Vim syntax file
" Language:	Android Init Language (*.rc)
" Writer:	Changbin Park <gh4ck3r@gmail.com>
" Last Change:	2015 Dec 20

if exists("current_syntax")
" Syntax for *.rc file is exist for M$ resource file. We need to override it.
  finish
endif

setlocal iskeyword+=-

syn keyword ailTodo             contained	TODO FIXME XXX
syn keyword ailKeywordImport    import skipwhite contained
syn keyword ailKeywordOn        on skipwhite contained
syn keyword ailKeywordService   service skipwhite contained
syn keyword ailKeywordProperty  property skipwhite contained
syn keyword ailOptions          critical disabled setenv socket user group seclabel oneshot class onrestart writepid
syn keyword ailCommands         bootchart_init chmod chown class_start class_stop class_reset copy domainname enable exec export hostname ifup insmod load_all_props load_persist_props loglevel mkdir mount_all mount powerctl restart restorecon restorecon_recursive rm rmdir setprop setrlimit start stop swapon_all symlink sysclktz verify_load_state verify_update_state wait write setcon
syn keyword ailCommandTrigger   trigger
syn keyword ailKnownOnTarget    boot early-init init late-init post-fs contained

syn match ailAssignment               "=" contained
syn match ailNumber                   "\<\-\?[0-9]\+\>"
syn match ailComment                  "#.*" contains=ailTodo
syn match ailFilePath                 "\/\f\+"
syn match ailPreProc                  "\${\(\.\|\w\)\+}"

syn match ailPropertyPrefix           "property:" contained
syn match ailPropertyTrigger          "property:[^=]\+" contains=ailPropertyPrefix contained
syn match ailImportStatement          "^import\s\+.\+\s*$" contains=ailKeywordImport,ailPreProc
syn match ailAction                   "^on\s\+\h\p*\s*$" contains=ailKeywordOn,ailKnownOnTarget,ailPropertyTrigger,ailAssignment
syn match ailService                  "^service\s\+\w\+" skipwhite contains=ailKeywordService
syn match ailCommandTriggerStatement  "^\s*trigger\s\+\f\+" contains=ailCommandTrigger,ailKnownOnTarget

hi link ailTodo                     Todo
hi link ailKeywordImport            Include
hi link ailImportStatement          String
hi link ailFilePath                 PreProc
hi link ailComment                  Comment

hi link ailPreProc                  PreProc

hi link ailKeywordOn                Operator
hi link ailKeywordService           Operator
hi link ailOptions                  Operator
hi link ailCommands                 Operator
hi link ailCommandTrigger           Operator

hi link ailKnownOnTarget            Special
hi link ailPropertyTrigger          Special

hi link ailPropertyPrefix           Type
hi link ailAction                   Type
hi link ailService                  Type
hi link ailCommandTriggerStatement  Type

hi link ailNumber                   Number

let b:current_syntax = "ail"
