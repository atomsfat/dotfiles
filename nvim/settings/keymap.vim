" No need for ex mode
nnoremap Q <nop>

" Disable macros
map q <Nop>

" repmap ; to ;
nnoremap ; :

" Command-/ to toggle comments
exe 'map <Leader>/ :TComment<CR>'
exe 'imap <Leader>/ <Esc>:TComment<CR>i'

" Terminal
tnoremap <C-q> <C-\><C-n> 
" tmap <esc> <c-\><c-n><esc><cr>

" Compile things
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

" Disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Emmet leader
let g:user_emmet_leader_key='<C-x>'

" FlyGrep
let g:spacevim_data_dir = '~/.cache'
nnoremap <Leader>F :FlyGrep<cr>

" Undotree
nnoremap <F5> :UndotreeToggle<cr>

" Split
nnoremap <leader>- :split<CR>
nnoremap <leader>\| :vsplit<CR>

" Change next selected cgn
nnoremap <Leader>x /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn
nnoremap <Leader>X ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN
xnoremap <Leader>x "sy:let @/=@s<CR>cgn


nnoremap <leader>cd :cd %:p:h<CR>

" Quit buffer
nnoremap <silent>q :bd<cr>

" Save
nnoremap <leader>w :w<CR>

" Navigate with keyboard
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l

" Filetree
nnoremap <silent> <F3> :Defx<Cr>  
nnoremap <silent> <leader>n :Defx `expand('%:p:h')` -search=`expand('%:p')` -columns=mark:indent:icon:icons:filename:type<cr>

" Denite
nnoremap <leader>p :<C-u>Denite file/rec -start-filter<CR>
nnoremap <leader>s :<C-u>Denite buffer<CR>
nnoremap <leader>8 :<C-u>DeniteCursorWord grep:.<CR>
nnoremap <leader>f :<C-u>Denite -start-filter grep:::!<CR>
nnoremap <leader><Space>/ :<C-u>DeniteBufferDir -start-filter grep:::!<CR>
nnoremap <leader>d :<C-u>DeniteBufferDir file/rec -start-filter<CR>
nnoremap <leader><Space>r :<C-u>Denite -resume -cursor-pos=+1<CR>
nnoremap <leader><C-r> :<C-u>Denite register:.<CR>
nnoremap <leader>g :<C-u>Denite gitstatus<CR>

" Move bewteen buffer
" https://vi.stackexchange.com/questions/4919/exit-from-terminal-mode-in-neovim
" tmap <leader>q <c-\><c-n>:bp! <BAR> bd! #<CR>
" tmap <leader>, <C-\><C-n>:bnext<cr>
" tmap <leader>. <C-\><C-n>:bprevious<CR>
" tmap <leader><tab> :b#<CR>
" nmap <leader>T :term<cr>

nmap <leader>, :bnext<CR>
nmap <leader>. :bprevious<CR>
nnoremap <leader><tab> :b#<CR>

" Switch bewteen buffers lightline
nmap <Leader>1 :buffer 1<CR>
nmap <Leader>2 :buffer 2<CR>
nmap <Leader>3 :buffer 3<CR>
nmap <Leader>4 :buffer 4<CR>
nmap <Leader>5 :buffer 5<CR>
nmap <Leader>6 :buffer 6<CR>
nmap <Leader>7 :buffer 7<CR>
nmap <Leader>8 :buffer 8<CR>
nmap <Leader>9 :buffer 9<CR>
nmap <Leader>0 :buffer 10<CR> 

" remap arrow keys
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>
