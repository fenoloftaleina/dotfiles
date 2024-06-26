export PATH=~/.local/bin/:/Users/ja/.nvm/versions/node/v18.20.2/bin:/usr/local/opt/llvm/:/Users/ja/.bun/bin:/Users/ja/.krew/bin:/usr/local/sbin:/Library/Java/JavaVirtualMachines/adoptopenjdk-12.jdk/Contents/Home/bin:/usr/local/opt/openvpn/sbin:/usr/local/opt/llvm/bin:/Users/ja/.cabal/bin:/Users/ja/.ghcup/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Users/ja/.cargo/bin:/Users/ja/confluent/bin:/usr/local/opt/fzf/bin:$(brew --prefix openvpn)/sbin:/Applications/Postgres.app/Contents/Versions/latest/bin

export EDITOR='nvim'

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

alias v='nvim'
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
alias simplehttp='python -m SimpleHTTPServer'

alias prpr='hub pull-request'

alias devstash="git stash save dev"
alias devstashpop="git stash apply stash^{/dev}"
alias gitfrom="git fetch && git rebase origin/master"
alias wip="git commit -am wip"


# alias python=python3
alias pip=pip3

alias repl="clj -Sdeps '{:deps {org.clojure/spec.alpha {:mvn/version \"0.2.176\"} nrepl/nrepl {:mvn/version \"0.6.0\"}}}' -m nrepl.cmdline"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
