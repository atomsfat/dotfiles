#!/usr/bin/sh

NVIM_LUA=~/.config/nvim-lua
export NVIM_LUA

alias nvl='XDG_DATA_HOME=$NVIM_LUA/share XDG_CONFIG_HOME=$NVIM_LUA ~/bin/nvim-linux64/bin/nvim' 

