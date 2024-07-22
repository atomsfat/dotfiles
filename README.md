Atoms custom dotfiles
========

# Setting up

### General setup
Install brew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
```bash
brew install stow
stow --target=~ home
brew bundle
./link.sh
```


### Install nerd fonts

[https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts](nerd-fonts)
```
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```

### Install tmux plugins
```
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Win 10

[Install wsltty](https://github.com/mintty/wsltty)
```bash
  ln -s ~/Workspace/github/dotfiles/tmux_wsdl.conf ~/.tmux_wsdl.conf
```

* Edit `%AppData%/Roaming/wsltty/config` config font `Font=RobotoMono Nerd Font`
* Install Neovim for windows 'choco install neovim'

## Enable clipboard on windows
```
   sudo ln -s /mnt/c/tools/neovim/Neovim/bin/win32yank.exe ~/local/bin/win32yank
```
```
Power shell
mklink /d ~\AppData\Local\nvim c:\Users\atoms\Workspace\github\dotfiles\
mklink /d ~/.nvim c:\Users\atoms\Workspace\github\dotfiles\nvim\
```

### Install Java tool setting 
```
  curl -s "https://get.sdkman.io" | bash
  sdk install java 14.0.1-zulu
  sdk install gradle

```

### Miscealeous stuff
```bash
  brew install reattach-to-user-namespace
  pbcopy < ~/.ssh/id_rsa.pub
```

### Setting up nvim 
```
 cd dotfiles/nvim-lua-lazy
 ./install.sh
 source ~/.config/nvim-lua-lazy/nvim/nv.sh
```

### To install linters
```bash
  npm install -g eslint
```


Inpiration from:
* spf13
* yadr
* https://github.com/SpaceVim/SpaceVim/tree/master/config/plugins
* https://github.com/ctaylo21/jarvis/blob/master/config/nvim/init.vim
* https://github.com/sodiumjoe/dotfiles/blob/master/init.vim
* https://www.reddit.com/r/neovim/comments/f92lap/example_denitenvim_configs/
