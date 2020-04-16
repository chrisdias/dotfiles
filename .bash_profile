export PS1="\[\033[1;94m\]\w$\[\033[0m\] "

alias cd..='cd ..'
alias dir='ls -l'
alias ..='cd ..'
alias ll='ls -l'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias dockerstopall='docker stop $(docker ps -aq) && docker rm $(docker ps -aq)'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="/usr/local/sbin:$PATH"

function ports {
  local port=$1;
  local pipe=$2;

  if [[ $pipe == '' ]]
  then
    lsof -i :$port | grep LISTEN
  else
    lsof -i :$port | grep LISTEN | code-insiders
  fi
}

export PATH=$PATH:/Users/chris/bin

