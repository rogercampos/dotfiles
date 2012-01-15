alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias glc="git log --graph --color --date=relative --stat"
alias gph='git push'
alias gpl='git pull --rebase'
alias gd='git diff'
alias gc='git commit -v'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias ga="git add"
alias glog="git log --decorate --graph"

gbdel () {
  if [ -z "$1" ]; then
    echo "Which branch do you want to remove?"
    return 1
  fi

  git branch -d $1
  git push origin :$1
}

gbnew () {
  if [ -z "$1" ]; then
    echo "Which branch do you want to create?"
    return 1
  fi

  git checkout -b $1
  git push -u origin $1
}
