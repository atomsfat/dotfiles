# Setting rg as the default source for fzf
export FZF_DEFAULT_COMMAND='rg --files'

# Use -- as the trigger sequence instead of the default **
# export FZF_COMPLETION_TRIGGER='--'

# Apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_TMUX_OPTS="-p"
export FZF_CTRL_T_OPTS="--preview '(bat --style=numbers --color=always --line-range :200 {} || tree -C {}) 2> /dev/null | head -200' --bind '?:toggle-preview'"
export FZF_CTRL_R_OPTS="--reverse --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
## FZF FUNCTIONS ##


# fh [FUZZY PATTERN] - Search in command history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf-tmux -p +s --tac | sed 's/ *[0-9]* *//')
}

# fgc [FUZZY PATTERN] - Checkout specified branch
# Include remote branches, sorted by most recent commit and limited to 30
fgc() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)")
  branch=$(echo "$branches" | fzf-tmux --reverse -h 20% ) 
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}
