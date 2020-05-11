" ==== No need for ex mode
nnoremap Q <nop>
vnoremap // y/<C-R>"<CR>
" ==== Disable macros
map q <Nop>

" ==== repmap ; to ;
nnoremap ; :

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
    exec "!time python %"
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'go'
    exec "!go build %<"
    exec "!time go run %"
  elseif &filetype == 'mkd'
    exec "!~/.vim/markdown.pl % > %.html &"
    exec "!firefox %.html &"
  elseif &filetype == 'ruby'
    exec "!time ruby %"
  endif
endfunc


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

" Split
nnoremap <leader>- :split<CR>
nnoremap <leader>\| :vsplit<CR>


" ============ cgn
nnoremap <Leader>x /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn
nnoremap <Leader>X ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN
xnoremap <Leader>x "sy:let @/=@s<CR>cgn

nnoremap <leader>cd :cd %:p:h<CR>

" Quit buffer
nnoremap <leader>q :q<CR>

" Save
nnoremap <leader>w :w<CR>

" Navigate with keyboard
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l

" Resize
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>
