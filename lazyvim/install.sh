#!/bin/sh

export NVIM_LUA=~/.config/lazyvim/

rm -rf $NVIM_LUA

mkdir -p $NVIM_LUA/share
mkdir -p $NVIM_LUA/nvim

stow --restow --target=$NVIM_LUA/nvim .
echo "Installed"
