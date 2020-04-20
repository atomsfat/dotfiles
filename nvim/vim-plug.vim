call plug#begin('~/.vim/plugged')


" ================ Code =======================
Plug 'neomake/neomake' 
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'ap/vim-css-color'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'mattn/emmet-vim', {'for': 'html'}


Plug 'hashivim/vim-terraform'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'zchee/deoplete-jedi'

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
" ================ editor =======================
" Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
Plug 'rking/ag.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-endwise'
Plug 'andymass/vim-matchup'
Plug 'wsdjeg/FlyGrep.vim'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}


" ================ Appearance =======================
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'


" ================ File =======================
" Plug 'kien/ctrlp.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'

" ================ Git ========================
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'neoclide/denite-git'

call plug#end()

