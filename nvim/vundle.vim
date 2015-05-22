filetype off                  " required

set rtp+=~/.nvim/bundle/Vundle.vim
set rtp+=~/.nvim/vundles/ "Submodules
call vundle#begin('~/nvundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" ~/.nvim/vundles/ to edit them:
runtime appearance.vundle
runtime vim-inprovements.vundle
runtime languages.vundle
runtime project.vundle
runtime vim-improvements.vundle
runtime search.vundle

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
