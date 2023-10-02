#!/bin/bash

# make the project
make all
# create the .local/bin folder if not created
mkdir -p $HOME/.local/bin
# add .local/bin to path
echo '$PATH="$PATH:$HOME/.local/bin"' >> $HOME/.bashrc
# cp C-ling to .local/bin
cp ./bin/C-ling $HOME/.local/bin
