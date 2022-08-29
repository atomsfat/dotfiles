call plug#begin(stdpath('data'))

Plug 'tpope/vim-sensible'

" Code 
" Plug 'neomake/neomake' 
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'ap/vim-css-color', {'for': 'css'}
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'mattn/emmet-vim', {'for': 'html'}
Plug 'hashivim/vim-terraform', {'for': ['hcl', 'tf', 'terraform']}
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'TovarishFin/vim-solidity'

" Editor 
Plug 'tomtom/tcomment_vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'andymass/vim-matchup'     " highlight sets of matching words
Plug 'Yggdroot/indentLine'      " Display lines on indent
Plug 'elzr/vim-json'
Plug 'mhinz/vim-startify'       " Start buffer
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
Plug 'Raimondi/delimitMate'
Plug 'MattesGroeger/vim-bookmarks'
" Plug '/tpope/vim-surround'
Plug  'machakann/vim-sandwich'
Plug 'junegunn/vim-peekaboo'    " Display paste register
Plug 'tmux-plugins/vim-tmux-focus-events' " Autoread working while inside tmux
Plug 'mg979/vim-visual-multi', {'branch': 'master'}   "Multiple cursors

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
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

"  FZF  remote plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }

" Git 
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Tool
Plug 'edkolev/tmuxline.vim'

" Testing
Plug 'easymotion/vim-easymotion'

call plug#end()
