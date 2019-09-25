export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$HOME/.cargo/bin:/usr/local/opt/mysql@5.7/bin:/usr/local/sbin:$PATH"

export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

alias brewski='brew update && brew upgrade && brew cleanup && brew cask upgrade; brew doctor'
alias git_r='git checkout master && git pull origin master && git fetch --all'
alias git_hr='git reset --hard origin/master && git checkout master && git pull origin master && git fetch --all'
alias docker_clean='docker stop $(docker ps -a -q) || true && docker rm $(docker ps -a -q) || true && docker rmi $(docker images -q -f dangling=true) || true && docker rmi $(docker images -q) || true'

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
