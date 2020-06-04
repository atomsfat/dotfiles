#!/usr/bin/env zsh
autoload -Uz colors; colors
autoload -Uz add-zsh-hook
autoload -Uz terminfo
# -------- Setup for vim functionality in ZSH --------
# Resources:
# https://github.com/JakobGM/dotfiles/blob/master/autoload/vim.zsh
# https://www.reddit.com/r/vim/comments/akc9dk/a_more_native_look_for_zsh_vimode/

# Restore some keymaps removed by vim keybind mode
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

# Dependencies for the following lines
zmodload zsh/zle
autoload -U colors && colors

# By default, we have insert mode shown on right hand side
export RPROMPT="%{$fg[blue]%}-- INSERT --%{$reset_color%}"
#
# # And also a beam as the cursor
echo -ne '\e[5 q'

# Callback for vim mode change
function zle-keymap-select zle-line-init zle-line-finish () {
    # Only supported in these terminals
    if [ "$TERM" = "xterm-256color" ] || [ "$TERM" = "xterm-kitty" ] || [ "$TERM" = "screen-256color" ]; then
      case $KEYMAP in
          main|viins)
              export RPROMPT="%{$fg[blue]%}-- INSERT --%{$reset_color%}"
              # Set beam cursor
              echo -ne '\e[5 q'
              ;;
          vicmd)
              export RPROMPT="%{$fg[green]%}-- NORMAL --%{$reset_color%}"
              # Set block cursor
              echo -ne '\e[1 q'
              ;;
          vivis|vivli)
              export RPROMPT="%{$fg[yellow]%}-- VISUAL --%{$reset_color%}"
              ;;
      esac
      zle reset-prompt
    fi
}

# Bind the callback
zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select
zle -N edit-command-line

