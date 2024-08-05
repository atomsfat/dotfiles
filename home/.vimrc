let mapleader=" "        " use , as <leader> in mappings

filetype plugin indent on

"set background=dark
set t_Co=256             " 256 colors
syntax on
"colorscheme solarized


" Disable macros
nnoremap Q <nop>
map q <Nop>

" custom color for listchars (trailing spaces and tabs)
highlight SpecialKey cterm=NONE ctermbg=NONE ctermfg=240 gui=NONE guibg=NONE guifg=#586e75

" remove default underline from current line number (https://stackoverflow.com/questions/58174536)
highlight CursorLineNr cterm=NONE

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
"set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set encoding=utf8        " set utf8 as standard encoding

set completeopt=menuone  " show completion menu even if there's only one match
set completeopt+=longest " insert only longest common text of all matches
set omnifunc=syntaxcomplete#Complete " basic completion for programming languages (C-x C-O)
set infercase            " infer case sensitivity when doing keyword completion

set wildmenu             " command-line completion menu
set wildmode=longest,list,full " complete longest common prefix before full
set wildignorecase       " ignore case when completing file names and directories

set autowrite            " automatically write file changes on each :make, :next, etc...
set autoread             " automatically reload file if changed outside vim
set history=50
set nobackup             " no backup files
set hidden               " allow more than one unsaved buffer
set viminfo+=n~/.vim/viminfo " viminfo file inside ~/.vim

set scrolloff=3          " scroll lines offset using j/k

set ignorecase           " ignore case when searching
set smartcase            " but become case sensitive if there are uppercase characters
set hlsearch             " highlights search results
set incsearch            " incremental search
set magic                " change the way backslashes are used in search patterns

"set textwidth=80         " max line width
"set colorcolumn=81       " highlights 81th column
"set cursorline           " highlights current line

set splitbelow           " open horizontal split below
set splitright           " open vertical split on the right

set modeline             " enable modeline detection
set expandtab            " spaces instead of tabs
set tabstop=8            " 1 tab == 8 spaces
set autoindent
set smarttab             " smart tab handling for indenting
set shiftwidth=8         " spaces for autoindent
set list                 " needed to get listchars working
set listchars=trail:·,tab:·· " show trailing spaces and tabs as ·

set formatoptions+=j     " remove a comment leader when joining lines
set backspace=indent,eol,start " proper backspace behavior

set ruler                " show line and column number of the cursor position
set rulerformat=%=%M\ %l,%c%V\ %p%%

set lazyredraw           " do not redraw screen in the middle of a macro

set spellcapcheck=       " do not spell check capital letters


" return to last edit position when opening files
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" make this line a (nice) markdown header
command! H1 normal yypVr=2o<ESC>
command! H2 normal yypVr-2o<ESC>

" insert current date
command! Date read ! date "+\# \%a, \%d \%b \%Y \%H:\%M"

" toggle paste mode
set pastetoggle=<F2>

" turn off highlighting after a search
nnoremap <F3> :nohlsearch<CR>

" toggle spell checker
nnoremap <F4> :setlocal spell! spelllang=en,es<CR>

" list buffers and prepare to switch
nnoremap gb :buffers<CR>:b

" recenter after hitting next/previous search match
nnoremap n nzz
nnoremap N Nzz


set mouse=a                " Enable mouse suport

" Autosave
au FocusLost * silent! wa


" File browsing
let g:netrw_banner=0        " disable annoying banner
"let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


" Close buffer
nnoremap q :bd<cr>

" Buffer switching
nnoremap <leader>. :bnext<CR>
nnoremap <leader>, :bprevious<CR>
nnoremap <leader><tab> :b#<CR>

" key bindings for quickly moving between windows
" h left, l right, k up, j down
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k


" split
nnoremap <leader>- :split<CR>
nnoremap <leader>\\ :vsplit<CR>

" repmap ; to ;
nnoremap ; :

" Undo
nnoremap U <C-R>

" swap files
set directory^=$HOME/.vim/tmp//
" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif


" Copy paste
" To get available command on zsh run 'which clippaste' avaliable when using 
" lib/clipboard from oh-my-zsh
" For WSL
vnoremap <leader>y y<esc>:call system('clip.exe', @")<CR>
nnoremap <leader>pp <esc>:let @"=system('powershell.exe -noprofile -command Get-Clipboard')<CR>""p
