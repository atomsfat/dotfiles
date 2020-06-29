" lightline-buffer
set showtabline=2  " always show tabline

let g:lightline = {
  \ 'colorscheme': 'one',
  \ 'component': {
  \   'lineinfo': '%2l:%-2v',
  \ },
  \ 'component_function': {
  \   'readonly': 'LightlineReadonly',
  \   'fugitive': 'LightlineFugitive',
  \   'bufferinfo': 'lightline#buffer#bufferinfo',
  \   'filetype': 'MyFiletype',
  \   'fileformat': 'MyFileformat',
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \ }

let g:lightline.active = {
  \ 'left': [ [ 'paste' ],
  \           [ 'readonly', 'filename', 'modified' ] ],
  \ 'right': [ ['fugitive'], [ 'lineinfo' ],
  \            [ 'fileformat', 'fileencoding', 'filetype' ] ] }

let g:lightline.tabline = {
    \ 'left': [ [ 'buffers' ] ],
    \ 'right': [ [ 'close' ] ] }

let g:lightline.component_expand = {
    \ 'buffers': 'lightline#bufferline#buffers'}

let g:lightline.component_type = {
    \ 'buffers': 'tabsel'}

function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction
  
function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
  if exists('*FugitiveHead')
    let branch = FugitiveHead()
    return branch !=# '' ? ''.branch : ''
  endif
  return ''
endfunction
" bufferline
let g:lightline#bufferline#modified = '✭' 
let g:lightline#bufferline#read_only = ''
let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#clickable = 1
let g:lightline.component_raw = {'buffers': 1}
let g:lightline#bufferline#number_map = {
\ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
\ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}

" Tmux generator
let g:tmuxline_powerline_separators = 0
" let g:tmuxline_theme = 'seol256'
