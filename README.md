Atoms custom dotfiles
========
Some ideas from:
spf13
yadr

Install power line fonts
https://github.com/Lokaltog/powerline-fonts

Setting up
```sh
  brew install reattach-to-user-namespace
  ln -s workspace/dotfiles/tmux.conf .tmux.conf;
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vimbundle/Vundle.vim;
  ln -s workspace/dotfiles/vimrc .vimrc
  ln -s workspace/dotfiles/vim .vim
  ln -s workspace/dotfiles/nvimrc .nvimrc
  ln -s workspace/dotfiles/nvim .nvim
  git clone https://github.com/gmarik/Vundle.vim.git ~/.nvim/bundle/Vundle.vim
```
For brew nvim
```sh
  ln -s ~/.vim ~/.config/nvim
  ln -s ~/.vimrc ~/.config/nvim/init.vim
```


To install linters
```sh
  npm install -g eslint
```

