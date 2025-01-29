#!/bin/sh

git clone https://github.com/tarikkudesu/My-configs.git ~/local/tr
chmod +x $(find ~/local/tr/automate -name "*.sh" | tr '\n' ' ')
cp ~/local/tr/zshrc ~/.zshrc
echo "\n\texecute \"source ~/.zshrc\"\n"
