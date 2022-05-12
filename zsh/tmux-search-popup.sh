#!/bin/bash
HIST=~/.tmux_search_history
# set -o vi
CMD=$(cat "$HIST" | fzf --bind=enter:replace-query+print-query --prompt "🔍: ")
if [ ! -z "$CMD" ];  then
  echo "$CMD" >> "$HIST"
  temp=$(sort "$HIST" | uniq) && echo "$temp" > "$HIST"
  tmux copy-mode \; send -X search-backward "$CMD"
fi
# read -e -p  "(Search up):" CMD

# history -s "$CMD"
# history -w ~/.tmux_search_history
# tmux send-keys -t "$TMUX_PANE" -X search-forward "$CMD"


