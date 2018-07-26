" Vim compiler file
" Compiler:	gradle
" Maintainer:	Changbin Park <gh4ck3r@gmail.com>
if exists("current_compiler")
  finish
endif
let current_compiler = "gradle"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=gradle

if !isdirectory($ANDROID_SDK_ROOT)| finish | endif

if exists($GRADLE_PROJECT_DIR) &&
      \ !empty(glob($GRADLE_PROJECT_DIR.'/settings.gradle'))
  let s:gradle_setting = glob($GRADLE_PROJECT_DIR.'/settings.gradle')
else
  for s:file in glob("$PWD/**/settings.gradle", 0, 1, 1)
    if filereadable(s:file)
      let s:gradle_setting = s:file
      break
    endif
  endfor
endif

if empty(s:gradle_setting)
  finish
endif

let s:gradle_root = fnamemodify(s:gradle_setting, ":p:h")
echom s:gradle_root
let s:gradle = "gradle -p " . s:gradle_root
function! s:Gradle(target)
  return system(s:gradle . ' ' . a:target)
endfunction

let s:sdk_version = split(s:Gradle("properties | grep targetSdkVersion:"))[1]

let s:classpath = [
      \ $ANDROID_SDK_ROOT."/platforms/android-".s:sdk_version."/android.jar",
      \ $ANDROID_SDK_ROOT."/sources/android-".s:sdk_version,
      \]

let s:classpath_regex = 'Java sources: \[\(.*\)\]'
" Steps to make list
" 1. Execute gradle and grep 'Java sources: [<comma-separated directories>]'
" 2. dirs looks like         -> [<dir-a>], [<dir-b>], [<dir-1>, <dir-2>]
" 3. substitute ', ' to ':'  -> [<dir-a>], [<dir-b>], [<dir-1>:<dir-2>]
" 4. join with ':'           -> <dir-a>:<dir-b>:<dir-1>:<dir-2>
" 5. split with ':'          -> [<dir-a>], [<dir-b>], [<dir-1>], [<dir-2>]
" 5. map resolve and filter  -> [<dir-a>], [<dir-1>], [<dir-2>]
"     - Assume <dir-b> is not exist
let s:classpath += filter(map(split(join(map(
      \ split(s:Gradle('sourceSets | grep "'.s:classpath_regex.'"'), '\n'),
      \ {k, v -> substitute(substitute(v, s:classpath_regex, '\1', '') , ', ', ':', 'g')}), ':'), ':'),
      \ {k, v -> resolve(s:gradle_root . '/' . v)}),
      \ {k, v -> isdirectory(v)})

let g:ale_java_javac_classpath = join(s:classpath, ':')
