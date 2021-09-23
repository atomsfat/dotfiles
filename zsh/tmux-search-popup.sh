#!/bin/bash
history -r ~/.tmux_search_history
set -o vi
CMD=""
# echo -ne "\033[1;49;91m(Search up): \033[0m"
read -e -p  "(Search up):" CMD
history -s "$CMD"
history -w ~/.tmux_search_history
# tmux send-keys -t "$TMUX_PANE" -X search-forward "$CMD"
tmux copy-mode \; send -X search-backward "$CMD"
