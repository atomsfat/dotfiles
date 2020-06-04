# Resources:
# https://github.com/rike422/dotfiles

export PATH=$HOME/bin:/usr/local/bin:$PATH
if [[ "$(uname -a)" = *"microsoft"* ]]; then
  export PATH='/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin':"$PATH" 
fi

export EDITOR=vim     # Set editor to vim
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8
export KCODE=utf-8    # Set UTF-8 to KCODE
export AUTOFEATURE


bindkey -v 
# Reduce latency when pressing <Esc>
export KEYTIMEOUT=1

setopt no_beep            # Turn off beep
setopt auto_cd            # Move only by entering the directory name
setopt auto_pushd         # push cd to directory stack when cd
setopt correct            # Correct spelling of command complement after 
setopt magic_equal_subst  # = (--prefix = / usr etc.)
setopt prompt_subst       # Handle variable substitution and command substitution within prompt definitions
setopt notify             # Immediately report changes in background job status make 
setopt equals             # = command the same as `which command`

# Zplug 
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/z",   from:oh-my-zsh
zplug "b4b4r07/emoji-cli"
zplug "zsh-users/zsh-autosuggestions"
zplug "~/.zsh", from:local

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completiona
# Alias
alias vi=nvim
if [[ "$(uname -a)" = *"microsoft"* ]]; then
  export PATH=$PATH:/c/WINDOWS/system32:/c/WINDOWS:/c/WINDOWS/system32/Windows
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
  # X server
  export LIBGL_ALWAYS_INDIRECT=1
  export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
fi

alias top="vtop --theme=wizard"
alias hs='history | grep'
alias vi=nvim

export EDITOR='nvim'
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completiona

# rbenv
eval "$(rbenv init -)"
# pyenv
eval "$(pyenv init -)"
# java things
source "$HOME/.sdkman/bin/sdkman-init.sh"
