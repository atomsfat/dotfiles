Atoms custom dotfiles
========

# Setting up

### General setup
```bash
  git clone https://github.com/seebi/dircolors-solarized.git
  brew install tmux
  brew install nvim
  brew install fzy
  brew install bat
  ln -s ~/Workspace/dotfiles/tmux.conf ~/.tmux.conf;
```
[https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts](nerd-fonts)
```
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```

#### For brew nvim
```bash
  ln -s ~/Workspace/dotfiles/nvim ~/.nvim
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ln -s  ~/Workspace/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
  ln -s ~/Work/dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
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
   sudo ln -s /mnt/c/tools/neovim/Neovim/bin/win32yank.exe ~/local/bin/win32yank
```
```
Power shell
mklink /d ~\AppData\Local\nvim c:\Users\atoms\Workspace\github\dotfiles\
mklink /d ~/.nvim c:\Users\atoms\Workspace\github\dotfiles\nvim\
```
### Install Plug for windows

### Raw history
```bash
  brew install reattach-to-user-namespace
  ln -s ~/Workspace/github/dotfiles/tmux_darwing.conf ~/.tmux_darwin.conf
  pbcopy < ~/.ssh/id_rsa.pub
  git clone git@github.com:atomsfat/dotfiles.git
  brew install tmux
  brew install zplug
  brew install nvim
  brew install reattach-to-user-namespace
  ls -s ~/Work/dotfiles/tmux.conf ~/.tmux.conf
  ln -s ~/Work/dotfiles/nvim .nvim
  mkdir -p .config/nvim
  ln -s ~/Work/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
  ln -s ~/Work/dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
  ln -s ~/Work/dotfiles/zshrc ~/.zshrc
  ln -s ~/Work/dotfiles/zsh ~/.zsh
  curl -s "https://get.sdkman.io" | bash
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ln -s ~/Work/dotfiles/tmux.conf .tmux.conf
  ln -s ~/Work/dotfiles/tmux_darwin.conf .tmux_darwin.conf
  ln -s ~/Work/dotfiles/tmux_theme.conf .tmux_theme.conf
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  brew install rbenv
  brew install pyenv
  nvm install 12
  rbenv global 2.7.1
  gem install neovim
  pyenv global 3.8.3
  pip install --upgrade pip
  sdk install java 14.0.1-zulu
  sdk install gradle
```

### To install linters
```bash
  npm install -g eslint
```



https://user-images.githubusercontent.com/140008/125012390-b8983680-e02f-11eb-980a-da36f169cb4b.mov





Some ideas from:
* spf13
* yadr
* https://github.com/SpaceVim/SpaceVim/tree/master/config/plugins
* https://github.com/ctaylo21/jarvis/blob/master/config/nvim/init.vim
* https://github.com/sodiumjoe/dotfiles/blob/master/init.vim
* https://www.reddit.com/r/neovim/comments/f92lap/example_denitenvim_configs/
