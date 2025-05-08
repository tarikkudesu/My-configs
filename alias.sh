
#Author Tarik AMEHRI
#42login : tamehri

alias cclean='curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/Cleaner_42.sh | bash' # 42 tool
alias clean='curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/linuxCleaner.sh > /tmp/s.sh && chmod +x /tmp/s.sh && /tmp/s.sh' # 42 tool
alias code="open -a Visual\ Studio\ Code" # 42 tool
alias vsc="~/local/code/code" # 42 tool
alias usage="du -sh * | sort -rh" # 42 tool

alias build-dev-env='sh -c "$(curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/web_dev_env.sh)"'
alias codeui="mkdir -p .vscode && curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/settings.json > .vscode/settings.json && curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/.prettierrc > .prettierrc"
alias help='curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/help.sh | bash'
alias cppf="c++ -Wall -Wextra -Werror -std=c++98"
alias cppm='curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/cppm.sh | bash'
alias cm='curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/cm.sh | bash'
alias nm='sh -c "$(curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/nm.sh)"'
alias clear_modules="rm -rf /home/$USER/goinfre/trash/"

