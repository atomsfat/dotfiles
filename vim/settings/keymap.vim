"switch on mac us Cmd and on linux use control

if has("gui_mac") || has("gui_macvim")
  let switchMapping = 'D'
else
  let switchMapping = 'C'
endif

" ==== NERD tree
" Cmd-Shift-e for nerd tree
exe 'nmap <'.switchMapping.'-e> :NERDTreeToggle<CR>'
" Open the project tree and expose current file in the nerdtree with Ctrl-\
exe 'nnoremap <silent> <'.switchMapping.'-\> :NERDTreeFind<CR>:vertical res 30<CR>'

" Command-/ to toggle comments
exe 'map <'.switchMapping.'-/> :TComment<CR>'
exe 'imap <'.switchMapping.'-/> <Esc>:TComment<CR>i'



" Use numbers to pick the tab you want (like iTerm)
exe 'map <silent> <'.switchMapping.'-1> :tabn 1<cr>'
exe 'map <silent> <'.switchMapping.'-2> :tabn 2<cr>'
exe 'map <silent> <'.switchMapping.'-3> :tabn 3<cr>'
exe 'map <silent> <'.switchMapping.'-4> :tabn 4<cr>'
exe 'map <silent> <'.switchMapping.'-5> :tabn 5<cr>'
exe 'map <silent> <'.switchMapping.'-6> :tabn 6<cr>'
exe 'map <silent> <'.switchMapping.'-7> :tabn 7<cr>'
exe 'map <silent> <'.switchMapping.'-8> :tabn 8<cr>'
exe 'map <silent> <'.switchMapping.'-9> :tabn 9<cr>'
