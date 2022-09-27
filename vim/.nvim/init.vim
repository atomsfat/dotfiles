" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set encoding=utf-8
" let g:python_host_prog = system('echo -n $(brew --prefix)') . '/bin/python'
" let g:python3_host_prog = system('echo -n $(brew --prefix)') . '/bin/python3'

" source ~/.nvimrc.before if it exists.
if filereadable(expand("~/.nvimrc.before"))
  source ~/.nvimrc.before
endif

" Autosave
:au FocusLost * silent! wa

" This use sensible setting from
" https://github.com/tpope/vim-sensible

" General Config 
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors


" Permit the cursor shape to change between vertical bar and block
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
hi Cursor guifg=green guibg=green
hi Cursor2 guifg=red guibg=red
" set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver50-Cursor2/lCursor2,r-cr:hor20,o:hor50
set guicursor=n-v-c:block,i-ci-ve:ver40,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
set clipboard+=unnamedplus
xnoremap <silent> p p:let @+=@0<CR>
set nopaste

set number                      "Line numbers are good
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
" set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set mouse=a

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden " Allow buffer switching without saving

"turn on syntax highlighting
syntax on

" Change leader to a space because the backslash is too far away
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=' '

"  Plug init Initialization 
source ~/.nvim/vim-plug.vim

" Turn Off Swap Files 
set noswapfile
set nobackup
set nowb

" Persistent Undo =
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.nvim_persistent_undo > /dev/null 2>&1
  set undodir=~/.nvim_persistent_undo
  set undofile
endif

" Indentation 
set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" Folds
set foldmethod=syntax   "fold based on syntax
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" Custom Settings 
for fpath in split(globpath('~/.nvim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor

" Settings override
set t_Co=256       " Use 256 colors
set splitright     " Puts new vsplit windows to the right of the current
set splitbelow     " Puts new split windows to the bottom of the current
set mousehide      " Hide the mouse cursor while typing


" AutoSave
:au FocusLost * silent! wa

" Apperance

set background=light
"colorscheme solarized
"colorscheme OceanicNext
colorscheme one

" Disable the macvim toolbar
set guioptions-=T

au VimLeave * set guicursor=a:ver30-blinkon0 " Restore cursor
