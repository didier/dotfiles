#!/bin/bash

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Yummygum
alias yg="cd && cd Projects/Yummygum"
alias yga="yg && code && open https://about:blank"

# Git
alias g="git"
alias gs="gg s"
alias gch="gg ch"
alias gc="gg c"
alias gb="gg b"
alias gp="gg p"
alias gpl="gg pl"

# Yarn/NPM
alias dev="yarn dev"
alias sb="yarn storybook"
alias i="yarn"

# function grb(){
#   git push origin :$1 &&
#   git fetch -p &&
#   echo '\n\u001b[32m⸙\u001b[0m Successfully removed branch \u001b[32m$1\u001b[0m'
# }

# alias branch="git rev-parse --abbrev-ref HEAD"
# alias gpu="git push --set-upstream origin $(branch) && echo '\n\u001b[32m⸙\u001b[0m Remote Branch ⇒ \u001b[32m$(branch)\u001b[0m'"

# Preview
alias p="qlmanage -p"

# Vim
alias vi=vim
