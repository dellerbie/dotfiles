export LSCOLORS=GxFxCxDxBxegedabagaced
export CLICOLOR=1
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
export PS1="\[\033[32m\]\w\[\033[0m\]\[\033[1;36m\]\$(__git_ps1)\033[32m\] » \[\033[0m\]"

alias ll="ls -alh"
alias be="bundle exec $@"
alias rs="bundle exec rspec $@"
alias rc="bundle exec rails console"
