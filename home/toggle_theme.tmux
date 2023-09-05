#!/usr/bin/env sh
#
# Toggle the current window (all panes) between light and dark themes.
set -e

# --> Catppuccin (Latte)
thm_fg_l="#4c4f69"
thm_bg_l="#dce0e8"
thm_bg_ld="#c6c9d0"

# --> Catppuccin (frape)
thm_fg_f="#c6d0f5"
thm_bg_f="#303446"

# --> Catppuccin (Mocha)
thm_fg_m="#cdd6f4"
thm_bg_m="#1e1e2e"
thm_bg_md="#343442"

# --> Catppuccin (Macchiato)
thm_fg_ma="#24273a"
thm_bg_ma="#cad3f5"

default_window_style="fg=$thm_fg_l,bg=$thm_bg_ld"
default_window_active_style="fg=$thm_fg_l,bg=$thm_bg_l"


alternate_window_style="fg=$thm_fg_m,bg=$thm_bg_md"
alternate_window_active_style="fg=$thm_fg_m,bg=$thm_bg_m"

current_window_style=$(tmux show -Av window-style)

case $current_window_style in
    $default_window_style|'default')
        # Change to the alternate window style.
        tmux set -g window-style $alternate_window_style
        tmux set -g window-active-style $alternate_window_active_style
        tmux set -g @catppuccin_flavour 'mocha' # latte, frappe, macchiato, mocha
        ;;
    *)
        # Change back to the default window style.
        tmux set -g window-style $default_window_style
        tmux set -g window-active-style $default_window_active_style
        tmux set -g @catppuccin_flavour 'latte' # latte, frappe, macchiato, mocha
        ;;
esac
tmux run -b '~/.tmux/plugins/tpm/tpm'
