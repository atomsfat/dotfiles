" ==== No need for ex mode
nnoremap Q <nop>
vnoremap // y/<C-R>"<CR>
" ==== recording macros is not my thing
map q <Nop>

" ==== repmap ; to ;
nnoremap ; :

" ==== NERD tree
let g:NERDTreeWinPos = 'rightbelow'
"  <leader>n - Toggle NERDTree on/off
"  <leader>f - Opens current file location in NERDTree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>

" Command-/ to toggle comments
exe 'map <Leader>/ :TComment<CR>'
exe 'imap <Leader>/ <Esc>:TComment<CR>i'



" ==== Terminal
tnoremap <C-q> <C-\><C-n> 
"tmap <esc> <c-\><c-n><esc><cr>

" ==== Compile things
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <silent> <Leader>c :make<CR>:copen<CR>


map <silent> <Leader>r :call CompileRun()<CR>
func! CompileRun()
  exec "w"
  if &filetype == 'c'
    exec "!gcc % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java -cp %:p:h %:t:r"
    set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
  elseif &filetype == 'sh'
    exec "!time bash %"
  elseif &filetype == 'python'
    exec "!time python2.7 %"
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'go'
    exec "!go build %<"
    exec "!time go run %"
  elseif &filetype == 'mkd'
    exec "!~/.vim/markdown.pl % > %.html &"
    exec "!firefox %.html &"
  endif
endfunc


"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
nnoremap <silent> <D-M> :CtrlPBufTag<CR>

" ============== Disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>


" ============= Emmet leader
let g:user_emmet_leader_key='<C-x>'

" =============  FlyGrep
let g:spacevim_data_dir = '~/.cache'
nnoremap <Leader>F :FlyGrep<cr>
"

" =============  Undotree
nnoremap <F5> :UndotreeToggle<cr>
