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
  ln -s ~/workspace/dotfiles/vimrc .nvimrc
  ln -s ~/workspace/dotfiles/vim .vim
```
For brew nvim
```sh
  ln -s ~/Workspace/dotfiles/nvim ~/.nvim

  ln -s  ~/workspace/dotfiles/nvimrc ~/.config/nvim/init.vim
```


Win 10
ln -s /mnt/c/Users/atoms/Worspace/github/dotfiles/nvimrc ~/.config/nvim/init.vim/init.vim


To install linters
```sh
  npm install -g eslint
```

