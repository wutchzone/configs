alias ls='ls -lGh'
alias ..='cd ..'
alias fray='ssh sedlada9@fray1.fit.cvut.cz'
alias oc='ssh root@acruxo.sedlak.biz'

export GOBIN="$(go env GOPATH)/bin"
export GOPATH="$(go env GOPATH)"
export PATH="$GOBIN:$GOPATH:$PATH"

#Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
