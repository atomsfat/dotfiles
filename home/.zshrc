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
set -o ignoreeof          # Ignre C_D to exit shell

export ZSH_SYSTEM_CLIPBOARD_TMUX_SUPPORT='true'
# Zplug 
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/z",   from:oh-my-zsh
zplug "lukechilds/zsh-nvm"
zplug "zsh-users/zsh-autosuggestions"
zplug "lib/clipboard",   from:oh-my-zsh
zplug "plugins/brew",   from:oh-my-zsh
zplug "b4b4r07/enhancd", use:init.sh
zplug "zpm-zsh/ls"
zplug "~/.zsh", from:local

# Install plugins if there are plugins that have not been installed
# if ! zplug check --verbose; then
#     printf "Install? [y/N]: "
#     if read -q; then
#         echo; zplug install
#     fi
# fi

# Then, source plugins and add commands to $PATH
# zplug load --verbose
zplug load

if [[ "$(uname -a)" = *"microsoft"* ]]; then
  export PATH=$PATH:/mnt/c/Windows/System32:/mnt/c/Windows:/mnt/c/Windows/System32/WindowsPowerShell/v1.0/

  # alias pbcopy='xclip -selection clipboard'
  # alias pbpaste='xclip -selection clipboard -o'
  # X server
  export LIBGL_ALWAYS_INDIRECT=1
  export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
fi

# Alias
alias vi=nvim
# alias top="vtop --theme=wizard"
alias hs='history | grep'
alias vi=nvim
alias ag="ag --color-path 35 --color-match '1;46' --color-line-number 32"

export BAT_THEME='ansi'
export EDITOR='nvim'
export BAT_PAGER="$(brew --prefix)/bin/less"
export LESS='eFRX --mouse --wheel-lines 2'
export ENHANCD_FILTER=fzy:fzf
# NVM
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
# BAT diff
batdiff() {
  git diff --name-only --diff-filter=d | xargs bat --diff
}

# java things
source "$HOME/.sdkman/bin/sdkman-init.sh"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

popup-tmux-search() {
  tmux display-popup -w 40 -h 20 -E "~/.zsh/tmux-search-popup.sh"
}

zle     -N  popup-tmux-search 
bindkey '^F' popup-tmux-search 
source "$HOME/local_env.sh"
zstyle :prompt:pure:path color 027
zstyle :prompt:pure:git:stash show yes
export PATH="/usr/local/sbin:$PATH"

# . $(brew --prefix)/opt/asdf/libexec/asdf.sh

source ~/.config/nvim-lua-lazy/nvim/nv.sh

#PYENV
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

