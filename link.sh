#!/bin/sh
NVIM=~/.config/nvim
rm -rf $NVIM

rm -rf $NVIM

mkdir -p $NVIM/share
mkdir -p $NVIM/nvim

stow -t ~ home
stow -t $NVIM nvim



