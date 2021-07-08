#!/bin/bash
history -r script_history
set -o vi
CMD=""
echo "Search:"
read -e CMD
history -s "$CMD"
history -w script_history
# tmux send-keys -t "$TMUX_PANE" -X search-forward "$CMD"
tmux copy-mode \; send -X search-backward "$CMD"
