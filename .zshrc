# Resources:
# https://github.com/rike422/dotfiles

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

HISTFILE=~/.zsh_history   # File to save history
HISTSIZE=10000            # Number of history records stored in memory
SAVEHIST=10000            # Number of saved history Perform history expansion using 
setopt bang_hist          #! (d)
setopt extended_history   # Save execution time in history
setopt hist_ignore_dups   # The same command as the previous one is not added to the history
setopt share_history      # share the history of other shells in real time
setopt hist_reduce_blanks # remove extra space and save in history= ~

# Enable display of history of matched commands
autoload history-search-end
autoload -Uz zmv

# autoload predict-on
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# Zplug 
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/z",   from:oh-my-zsh
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

# Alias
alias vi=nvim
if [[ "$(uname -a)" = *"microsoft"* ]]; then
  echo "WSL"
  export PATH=$PATH:/c/WINDOWS/system32:/c/WINDOWS:/c/WINDOWS/system32/Windows
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
  # X server
  export LIBGL_ALWAYS_INDIRECT=1
  export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
fi

alias top="vtop --theme=wizard"
alias hs='history | grep'

export EDITOR='nvim'
# rbenv
eval "$(rbenv init -)"
