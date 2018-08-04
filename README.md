Atoms custom dotfiles
========
Some ideas from:
spf13
yadr

#Setting up

General setup
```sh
  git clone https://github.com/powerline/fonts.git --depth=1
  git clone https://github.com/seebi/dircolors-solarized.git
  brew install tmux
  brew install nvim
  brew install tmux-mem-cpu-load
  ln -s ~/Workspace/dotfiles/tmux.conf .tmux.conf;
  ln -s ~/Workspace/github/dotfiles/tmux_wsdl.conf .tmux_wsdl.conf
  ln -s ~/Workspace/dotfiles/vimrc .nvimrc
  ln -s ~/Workspace/dotfiles/vim .vim

```
For brew nvim
```sh
  ln -s ~/Workspace/dotfiles/nvim ~/.nvim
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ln -s  ~/Workspace/dotfiles/nvimrc ~/.config/nvim/init.vim
```


Win 10

https://github.com/mintty/wsltty
```
ln -s ~/Worspace/github/dotfiles/nvimrc ~/.config/nvim/init.vim
```

Darwin
```sh
  brew install reattach-to-user-namespace
```

To install linters
```sh
  npm install -g eslint
  npm install -g ternjs
```
