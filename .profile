export PATH="/usr/local/bin:$PATH"
export PATH="~/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export EDITOR='vim'

HISTFILESIZE=10000

bind '"}":history-search-forward'
bind '"{":history-search-backward'

# PS1='\w$(git branch 2> /dev/null |grep "*" |sed -Ee "s/\* (.+)/ \1/")$(git status 2> /dev/null |grep -v "nothing to commit" > /dev/null && echo "*") > '
PS1='[\w]\$ '
function prompt_pwd {
  echo $PWD | sed -E 's/(.+\/)(.+)$/\2/'
}
export PROMPT_COMMAND='echo -ne "\033]0;`prompt_pwd`\007"'

export CLICOLOR=1
export TERM=xterm-256color

alias vim='/Applications/mvim -v'
alias mvim='/Applications/mvim -v'
alias gvim='/Applications/mvim -v'
alias v='vim'
alias up='sh ~/up.sh'
alias ngrok='/Applications/ngrok'

alias grep="grep --color"
alias a="ls -lrth"
alias g="git"
alias gs="git status"
alias l="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit | head -n 25"
alias gg="git grep"
alias gd="git diff"
alias gl="git log"
alias gco="git checkout"
alias gdc="git diff --cached"
alias gp="git pull --rebase"
alias ga="git add ."
alias gcm="git commit -am"
alias rs="rspec"
alias dj="script/delayed_job"
alias much=git
alias very=git
alias so=git
alias wow='git status'

alias tag="ctags -R --exclude=.git --exclude=coverage --exclude=log *"

alias glo="source ~/.githelpers && pretty_git_log"
alias be='bundle exec'

[[ -f ~/.git-completion.bash ]] && . ~/.git-completion.bash

alias gitclean='git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'
alias chrome-insecure='open -a Google\ Chrome --args --disable-web-security --allow-running-insecure-content'
alias prettyjson='python -m json.tool'

alias prodb='ssh ubuntu@ec2-54-166-107-203.compute-1.amazonaws.com'
alias stagb='ssh ubuntu@ec2-54-234-20-71.compute-1.amazonaws.com'
alias prod='ssh ubuntu@ec2-54-166-107-203.compute-1.amazonaws.com -t "source ~/.profile && cd /opt/apps/cloudapp/current/ && bundle exec rails c p"'
alias stag='ssh ubuntu@ec2-54-234-20-71.compute-1.amazonaws.com -t "source ~/.profile && cd /opt/apps/cloudapp/current/ && bundle exec rails c staging"'
