#!/bin/bash
HIST=~/.tmux_search_history
CMD=$(cat "$HIST" | fzf --bind=enter:replace-query+print-query --prompt "🔍: ")
if [ ! -z "$CMD" ];  then
  echo "$CMD" >> "$HIST"
  temp=$(sort "$HIST" | uniq) && echo "$temp" > "$HIST"
  tmux copy-mode \; send -X search-backward "$CMD"
fi
