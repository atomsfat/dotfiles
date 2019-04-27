Atoms custom dotfiles
========
Some ideas from:
* spf13
* yadr

# Setting up

### General setup
```bash
  git clone https://github.com/seebi/dircolors-solarized.git
  brew install tmux
  brew install nvim
  brew install tmux-mem-cpu-load
  ln -s ~/Workspace/dotfiles/tmux.conf ~/.tmux.conf;
```
[https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts](nerd-fonts)
```
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```

#### For Vim
```bash
  ln -s ~/Workspace/dotfiles/vimrc ~/.nvimrc
  ln -s ~/Workspace/dotfiles/vim ~/.vim
```

#### For brew nvim
```bash
  ln -s ~/Worspace/github/dotfiles/nvimrc ~/.config/nvim/init.vim  
  ln -s ~/Workspace/dotfiles/nvim ~/.nvim
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ln -s  ~/Workspace/dotfiles/nvimrc ~/.config/nvim/init.vim
```
Inside nvim :PlugInstall


### Win 10

[Install wsltty](https://github.com/mintty/wsltty)
```bash
  ln -s ~/Workspace/github/dotfiles/tmux_wsdl.conf ~/.tmux_wsdl.conf
```

Edit `%AppData%/Roaming/wsltty/config` config font `Font=RobotoMono Nerd Font`
Install Neovim for windows 'choco install neovim'
## Enable clipboard on windows
```
   sudo ln -s /mnt/c/tools/neovim/Neovim/bin/win32yank.exe /usr/local/bin/win32yank.exe

```

### Darwin
```bash
  brew install reattach-to-user-namespace
  ln -s ~/Workspace/github/dotfiles/tmux_darwing.conf ~/.tmux_darwin.conf
```

### To install linters
```bash
  npm install -g eslint
```
