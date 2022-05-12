
HISTFILE=~/.zsh_history   # File to save history

HISTSIZE=10000            # Number of history records stored in memory
SAVEHIST=10000            # Number of saved history Perform history expansion using

setopt bang_hist          #! (d)
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_reduce_blanks     # remove superfluous blanks from commands added to history
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

export HISTTIMEFORMAT="[%F %T] "
# Enable display of history of matched commands
autoload history-search-end
autoload -Uz zmv

# autoload predict-on
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# alias history="history 1"
alias hist="history 1"
