#!/bin/sh
#Author Tarik AMEHRI
#42login : tamehri

echo "cclean : 42 Mac session cleaner"
echo "clean : 42 Linux session cleaner"
echo "code : Mac: open vscode"
echo "vsc : Linux: open vscode"
echo "usage : disk usage"
echo "codeui: create code ui settings.json"
echo "cppf : c++ -Wall -Wextra -Werror -std=c++98"
echo "cppm : create cpp Makefile"
echo "cm : create c Makefile"


alias cclean="sh -c \"$(curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/Cleaner_42.sh)\"" # 42 tool
alias clean="sh -c \"$(curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/linuxCleaner.sh)\"" # 42 tool
alias code="open -a Visual\ Studio\ Code" # 42 tool
alias vsc="~/local/code/code" # 42 tool
alias usage="du -sh * | sort -rh" # 42 tool

alias codeui="mkdir -p .vscode && curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/settings.json > .vscode/settings.json"
alias help="sh -c \"$(curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/help.sh)\""
alias cppf="c++ -Wall -Wextra -Werror -std=c++98"
alias cppm="sh -c \"$(curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/cppm.sh)\""
alias cm="sh -c \"$(curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/cm.sh)\""
