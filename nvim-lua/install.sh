#!/usr/bin/sh

NVIM_LUA=~/.config/nvim-lua
export NVIM_LUA

rm -rf $NVIM_LUA

mkdir -p $NVIM_LUA/share
mkdir -p $NVIM_LUA/nvim

stow --restow --target=$NVIM_LUA/nvim .

alias nvl='XDG_DATA_HOME=$NVIM_LUA/share XDG_CONFIG_HOME=$NVIM_LUA nvim' 

export nvl

