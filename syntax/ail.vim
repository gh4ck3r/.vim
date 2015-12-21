" Vim syntax file
" Language:	Android Init Language (*.rc)
" Writer:	Changbin Park <gh4ck3r@gmail.com>
" Last Change:	2015 Dec 20

if exists("b:current_syntax")
" Syntax for *.rc file is exist for M$ resource file. We need to override it.
"  finish
"echom "Android Init Language"
endif

setlocal iskeyword+=-

syn keyword ailKeywordImport    import skipwhite contained
syn keyword ailKeywordOn        on skipwhite contained
syn keyword ailKeywordService   service skipwhite contained
syn keyword ailKeywordProperty  property skipwhite contained
syn keyword ailOptions          critical disabled setenv socket user group seclabel oneshot class onrestart writepid
syn keyword ailCommands         bootchart_init chmod chown class_start class_stop class_reset copy domainname enable exec export hostname ifup insmod load_all_props load_persist_props loglevel mkdir mount_all mount powerctl restart restorecon restorecon_recursive rm rmdir setprop setrlimit start stop swapon_all symlink sysclktz trigger verify_load_state verify_update_state wait write
syn keyword ailKnownOnTarget    early-init init late-init post-fs

syn match ailNumber           "\-\?[0-9]\+"
syn match ailComment          "#.*"
syn match ailFilePath         "\/\f\+"

syn match ailPropertyPrefix  "property:" contained
syn match ailPropertyTrigger  "property:[^=]\+" contains=ailPropertyPrefix contained
syn match ailImportStatement  "^import\s\+.\+\s*$" contains=ailKeywordImport
syn match ailAction           "^on\s\+\h\p*\s*$" contains=ailKeywordOn,ailKnownOnTarget,ailPropertyTrigger
syn match ailService          "^service\s\+\w\+" skipwhite contains=ailKeywordService

hi link ailKeywordImport    Include
hi link ailImportStatement  String
"hi link ailFilePath         String
hi link ailComment          Comment

hi link ailKeywordOn        Operator
hi link ailKeywordService   Operator
hi link ailOptions          Operator
hi link ailCommands         Operator

hi link ailKnownOnTarget    Special
hi link ailPropertyPrefix   Special
hi link ailPropertyTrigger  Type
"hi link ailAction           Type
hi link ailService          Type

hi link ailNumber           Number
