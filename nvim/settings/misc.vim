" Small config that not need a file
let g:webdevicons_enable_startify = 1 
" Java 
" autocmd FileType java setlocal omnifunc=javacomplete#Complete
" HTML 
let g:neomake_html_enabled_makers = []
" IndentLine  - disable quote concealing in JSON files
" vim-json is needed on nvim
let g:vim_json_syntax_conceal = 0
" This will allow you to see the concealed javascript punctuation
" in the current cursor line when in normal & indent mode as intended
" let g:indentLine_noConcealCursor=""
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
