# Resources:
# https://github.com/rike422/dotfiles
export PATH=$HOME/bin:/usr/local/bin:/snap/bin:$PATH

if [[ "$(uname -a)" = *"icrosoft"* ]]; then
  export PATH='/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin':"$PATH" 
fi



export EDITOR=vim     # Set editor to vim
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
export KCODE=utf-8    # Set UTF-8 to KCODE
export AUTOFEATURE
export DISABLE_AUTO_TITLE=true

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


# Set the root name of the plugins files (.txt and .zsh) antidote will use.
zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins

fpath=(~/.antidote/functions $fpath)
autoload -Uz antidote


# Generate a new static file whenever .zsh_plugins.txt is updated.
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  antidote bundle <${zsh_plugins}.txt >|${zsh_plugins}.zsh
fi

source ${zsh_plugins}.zsh

if [[ "$(uname -a)" = *"icrosoft"* ]]; then
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


[ -f ~/.config/nvim-lua-lazy/nvim/nv.sh ] && source ~/.config/nvim-lua-lazy/nvim/nv.sh


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
