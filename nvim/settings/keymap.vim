
" ==== NERD tree
" Cmd-Shift-e for nerd tree
exe 'nmap <Leader>e :NERDTreeToggle<CR>'
" Open the project tree and expose current file in the nerdtree with Ctrl-\
exe 'nnoremap <silent> <Leader>\ :NERDTreeFind<CR>:vertical res 30<CR>'

" Command-/ to toggle comments
exe 'map <Leader>/ :TComment<CR>'
exe 'imap <Leader>/ <Esc>:TComment<CR>i'



" Use numbers to pick the tab you want (like iTerm)
exe 'map <silent> <Leader>1 :tabn 1<cr>'
exe 'map <silent> <Leader>2 :tabn 2<cr>'
exe 'map <silent> <Leader>3 :tabn 3<cr>'
exe 'map <silent> <Leader>4 :tabn 4<cr>'
exe 'map <silent> <Leader>5 :tabn 5<cr>'
exe 'map <silent> <Leader>6 :tabn 6<cr>'
exe 'map <silent> <Leader>7 :tabn 7<cr>'
exe 'map <silent> <Leader>8 :tabn 8<cr>'
exe 'map <silent> <Leader>9 :tabn 9<cr>'

" ==== Terminal
tnoremap <C-q> <C-\><C-n> 


" ==== CTRL-P
" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = ',t'
nnoremap <silent> `p :CtrlP<CR>

" Additional mapping for buffer search
nnoremap <silent> `b :CtrlPBuffer<cr>

" Cmd-Shift-P to clear the cache
nnoremap <silent> <D-P> :ClearCtrlPCache<cr>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map ,ja :CtrlP app/assets<CR>
map ,jm :CtrlP app/models<CR>
map ,jc :CtrlP app/controllers<CR>
map ,jv :CtrlP app/views<CR>
map ,jh :CtrlP app/helpers<CR>
map ,jl :CtrlP lib<CR>
map ,jp :CtrlP public<CR>
map ,js :CtrlP spec<CR>
map ,jf :CtrlP fast_spec<CR>
map ,jd :CtrlP db<CR>
map ,jC :CtrlP config<CR>
map ,jV :CtrlP vendor<CR>
map ,jF :CtrlP factories<CR>
map ,jT :CtrlP test<CR>

"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
nnoremap <silent> <D-M> :CtrlPBufTag<CR>

