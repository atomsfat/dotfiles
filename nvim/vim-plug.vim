call plug#begin('~/.vim/plugged')


" ================ Code =======================
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'ap/vim-css-color'



Plug 'artur-shaik/vim-javacomplete2'

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


" ================ File =======================
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

