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

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
