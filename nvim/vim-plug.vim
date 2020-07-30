call plug#begin(stdpath('data'))

Plug 'tpope/vim-sensible'

" Code 
Plug 'neomake/neomake' 
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-denite'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'ap/vim-css-color', {'for': 'css'}
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'mattn/emmet-vim', {'for': 'html'}
Plug 'hashivim/vim-terraform', {'for': ['hcl', 'tf', 'terraform']}
Plug 'artur-shaik/vim-javacomplete2'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'zchee/deoplete-jedi'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Editor 
Plug 'tomtom/tcomment_vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'andymass/vim-matchup'     " highlight sets of matching words
Plug 'wsdjeg/FlyGrep.vim'
Plug 'Yggdroot/indentLine'      " Display lines on indent
Plug 'elzr/vim-json'
Plug 'mhinz/vim-startify'       " Start buffer
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
Plug 'Raimondi/delimitMate'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'junegunn/vim-peekaboo'    " Display paste register
Plug 'tmux-plugins/vim-tmux-focus-events' " Autoread working while inside tmux

" Appearance 
Plug 'ryanoasis/vim-devicons'   
Plug 'itchyny/lightline.vim'
" Plug 'taohexxx/lightline-buffer'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
Plug 'machakann/vim-highlightedyank'

" File 
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

" Git 
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'neoclide/denite-git'

" Tool
Plug 'edkolev/tmuxline.vim'

" Testing
Plug 'easymotion/vim-easymotion'

call plug#end()
