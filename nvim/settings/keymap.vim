" No need for ex mode

nnoremap Q <nop>

" Disable macros
map q <Nop>

" repmap ; to ;
nnoremap ; :

" Command-/ to toggle comments
exe 'map <Leader>/ :TComment<CR>'
exe 'imap <Leader>/ <Esc>:TComment<CR>i'

nnoremap <leader>h :nohlsearch<CR>

" Terminal
tnoremap <C-q> <C-\><C-n> 
" tmap <esc> <c-\><c-n><esc><cr>

" Compile things
" autocmd Filetype java set makeprg=javac\ %
" set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
" map <silent> <Leader>c :make<CR>:copen<CR>
"
" map <silent> <Leader>r :call CompileRun()<CR>
" func! CompileRun()
"   exec "w"
"   if &filetype == 'c'
"     exec "!gcc % -o %<"
"     exec "!time ./%<"
"   elseif &filetype == 'cpp'
"     exec "!g++ % -o %<"
"     exec "!time ./%<"
"   elseif &filetype == 'java'
"     exec "!javac %"
"     exec "!time java -cp %:p:h %:t:r"
"     set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
"   elseif &filetype == 'sh'
"     exec "!time bash %"
"   elseif &filetype == 'python'
"     exec "!time python %"
"   elseif &filetype == 'html'
"     exec "!firefox % &"
"   elseif &filetype == 'go'
"     exec "!go build %<"
"     exec "!time go run %"
"   elseif &filetype == 'mkd'
"     exec "!~/.vim/markdown.pl % > %.html &"
"     exec "!firefox %.html &"
"   elseif &filetype == 'ruby'
"     exec "!time ruby %"
"   endif
" endfunc

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

" Undotree
nnoremap <F5> :UndotreeToggle<cr>

" Split
nnoremap <leader>- :split<CR>/q
nnoremap <leader>\\ :vsplit<CR>

" Change next selected cgn
nnoremap <Leader>x /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn
nnoremap <Leader>X ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN
xnoremap <Leader>x "sy:let @/=@s<CR>cgn


" Change to current file
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
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

" remap arrow keys
" nnoremap <Left> :bprev<CR>
" nnoremap <Right> :bnext<CR>

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>


" resize current buffer by +/- 5
noremap <A-left> :vertical resize +5<cr>
noremap <A-down> :resize -5<cr>
noremap <A-up> :resize +5<cr>
noremap <A-right> :vertical resize -5<cr>

"  Search in files
nnoremap <leader>f :Rg<Cr>

" Redo
nnoremap U <C-R> 


" https://github.com/mg979/vim-visual-multi/wiki/Mappings

