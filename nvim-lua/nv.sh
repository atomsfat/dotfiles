#!/bin/sh

NVIM_LUA=~/.config/nvim-lua-lazy
export NVIM_LUA

alias nv='XDG_DATA_HOME=$NVIM_LUA/share XDG_CONFIG_HOME=$NVIM_LUA nvim' 
