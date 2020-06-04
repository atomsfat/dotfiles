" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set encoding=utf-8
let uname = system('uname -a')
if uname !~ 'windows'
  let g:python3_host_prog = '/usr/local/bin/python3'
endif

" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.nvimrc.before if it exists.
if filereadable(expand("~/.nvimrc.before"))
  source ~/.nvimrc.before
endif

" General Config 
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors               "True color, hyper.js is not true color this disable background color


" Permit the cursor shape to change between vertical bar and block
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
hi Cursor guifg=green guibg=green
hi Cursor2 guifg=red guibg=red
" set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver50-Cursor2/lCursor2,r-cr:hor20,o:hor50
set guicursor=n-v-c:block,i-ci-ve:ver40,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175
set clipboard+=unnamedplus
set nopaste

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
" set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set mouse=a
set ignorecase                  "ignore case when searching
set smartcase                   "if the search string has an upper case letter in it, the search will be case sensitive

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
"let mapleader='`'
let mapleader=' '

" Plugins
source ~/.nvim/vim-plug.vim
"  Pluging Settings 
for fpath in split(globpath('~/.nvim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor

" Turn Off Swap Files 
set noswapfile
set nobackup
set nowb

" Persistent Undo 
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.nvim/backups > /dev/null 2>&1
  set undodir=~/.nvim/backups
  set undofile
endif

" Indentation 
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
"set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" Folds 

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" Scrolling 

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1



" AutoSave 
:au FocusLost * silent! wa

" highlighting search matches 
:set hlsearch

" Apperance

set background=light
"colorscheme solarized
"colorscheme OceanicNext
colorscheme one


" Disable the scrollbars (NERDTree)
set guioptions-=r
set guioptions-=L

" Disable the macvim toolbar
set guioptions-=T

syntax on

" set guifont=Meslo\ LG\ M\ DZ\ Regular\ Nerd\ Font\ Complete
"
au VimLeave * set guicursor=a:ver30-blinkon0 " Restore cursor
