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
    \ 'left': [ [ 'bufferinfo' ], ['separator'],
    \ ['bufferbefore', 'buffercurrent', 'bufferafter'] ],
    \ 'right': [ [ 'close' ] ] }

let g:lightline.component_expand = {
    \ 'buffercurrent': 'lightline#buffer#buffercurrent',
    \ 'bufferbefore': 'lightline#buffer#bufferbefore',
    \ 'bufferafter': 'lightline#buffer#bufferafter'}

let g:lightline.component_type = {
    \ 'buffercurrent': 'tabsel',
    \ 'bufferbefore': 'raw',
    \ 'bufferafter': 'raw'}

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

" lightline-buffer
" replace these symbols with ascii characters if your environment does not support unicode
let g:lightline_buffer_logo = ''
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '✭'
let g:lightline_buffer_git_icon = ''
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = '  '

" enable devicons, only support utf-8
" require <https://github.com/ryanoasis/vim-devicons>
let g:lightline_buffer_enable_devicons = 1

" lightline-buffer function settings
let g:lightline_buffer_show_bufnr = 1

" :help filename-modifiers
let g:lightline_buffer_fname_mod = ':t'

" hide buffer list
let g:lightline_buffer_excludes = ['vimfiler']

" max file name length
let g:lightline_buffer_maxflen = 30

" max file extension length
let g:lightline_buffer_maxfextlen = 3

" min file name length
let g:lightline_buffer_minflen = 16

" min file extension length
let g:lightline_buffer_minfextlen = 3

" reserve length for other component (e.g. info, close)
let g:lightline_buffer_reservelen = 20

" Tmux generator
let g:tmuxline_powerline_separators = 0
" let g:tmuxline_theme = 'seol256'
