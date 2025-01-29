#!/bin/sh

mkdir -p ~/local
cp -r automate ~/local/
chmod +x $(find ~/local/automate -name "*.sh" | tr '\n' ' ')
cp zshrc ~/.zshrc
