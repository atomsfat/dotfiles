let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
endif

set statusline+=%#warningmsg#
set statusline+=%{SynstasticStatusLineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_check_on_open=1
"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
" let g:syntastic_quiet_messages = {'level': 'warnings'}
" set fancy symbols
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = '⚠'
"
let g:syntastic_javascript_checkers = ['eslint'] 
