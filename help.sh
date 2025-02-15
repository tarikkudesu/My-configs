#!/bin/sh
#Author Tarik AMEHRI
#42login : tamehri

echo "cclean : 42 Mac session cleaner"
echo "clean : 42 Linux session cleaner"
echo "ccp : c++ -Wall -Wextra -Werror -std=c++98"
echo "codeui: create code ui settings.json"
echo "code : Mac: open vscode"
echo "vsc : Linux: open vscode"
echo "fillc : fill .cpp files into Makefile"
echo "fillh : fill .hpp files into Makefile"
echo "cppm : create cpp Makefile"
echo "cm : create c Makefile"
echo "ocf : orthodox canonical form"
echo "main : create cpp main file"
echo "header : create hpp header file"
echo "usage : disk usage"

alias cclean="~/local/tr/automate/Cleaner_42.sh" # 42 tool
alias clean="~/local/tr/automate/Cleaner_42.sh" # 42 tool
alias code="open -a Visual\ Studio\ Code" # 42 tool
alias vsc="~/local/code/code" # 42 tool
alias usage="du -sh * | sort -rh" # 42 tool

alias codeui="mkdir -p .vscode && cp ~/local/tr/settings.json ./.vscode/settings.json"
alias help="~/local/tr/automate/help.sh"
alias cppf="c++ -Wall -Wextra -Werror -std=c++98"
alias cppm="sh ~/local/tr/automate/cpp.sh"
alias cm="sh ~/local/tr/automate/c.sh"
