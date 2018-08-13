call plug#begin('~/.vim/plugged')


" ================ Code =======================
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'ap/vim-css-color'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }


Plug 'hashivim/vim-terraform'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" ================ editor =======================
Plug 'terryma/vim-multiple-cursors'
"Plug 'ryanoasis/vim-devicons'
Plug 'tomtom/tcomment_vim'
Plug 'rking/ag.vim'
Plug 'editorconfig/editorconfig-vim'

" ================ Appearance =======================
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'


" ================ File =======================
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'

" ================ Git ========================
Plug 'tpope/vim-fugitive'

call plug#end()

