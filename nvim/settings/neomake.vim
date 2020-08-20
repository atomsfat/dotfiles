" call neomake#configure#automake('nrwi', 500)
"
" let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
" if matchstr(local_eslint, "^\/\\w") == ''
"   let local_eslint = getcwd() . "/" . local_eslint
" endif
" if executable(local_eslint)
"   let g:neomake_javascript_enabled_makers = ['eslint']
"   :echom local_eslint
"   let g:neomake_javascript_eslint_exe = local_eslint
" endif
"
" let g:neomake_warning_sign = {
"       \  'text': '',
"       \'texthl': 'WarningMsg',
"       \}
"
" let g:neomake_error_sign = {
"       \  'text': '',
"       \  'texthl': 'ErrorMsg',
"       \}
