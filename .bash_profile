# Home directories
export JAVA_HOME="`/usr/libexec/java_home -v '1.7*'`"
export ANT_HOME=/usr/share/ant
export GIT_HOME=/usr/local/git
export MYSQL_HOME=/usr/local/mysql

# Path Modifiers
export PATH=$PATH:.:$HOME/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin
export PATH=$PATH:$JAVA_HOME/bin:$GRAILS_HOME/bin:$GIT_HOME/bin:$MYSQL_HOME/bin:$GROOVY_HOME/bin
export MANPATH=$MANPATH:$GIT_HOME/man:$MYSQL_HOME/man

# Settings
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'
export PS1='\[\e[33;40m\]\w \[\e[35;40m\]$(__git_ps1 "[%s]")\[\e[33;1m\]> \[\e[0m\]'

# Better history
export HISTCONTROL="ignoreboth"
export HISTIGNORE="ls:h:exit:cd"
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTTIMEFORMAT="%F %T "
shopt -s histappend

# Git stuff
. ~/.git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=y
export GIT_PS1_SHOWSTASHSTATE=y
export GIT_PS1_SHOWUNTRACKEDFILES=y
export GIT_PS1_SHOWUPSTREAM="auto verbose"
export GITHUB_PASSWORD='*****'

# Aliases
alias mv='mv -i'
alias cp='cp -i'
alias h=history
alias dir='ls -l'
alias ls='ls -aF'
alias gg='git lg'
alias gf='git fetch'
alias gka='gitk --all'
alias testreport="open target/test-reports/html/index.html"

# Functions
function ga() { git add "$@" ;}
function gb() { git branch "$@" ;}
function gc() { git commit "$@" ;}
function gd() { git diff "$@" ;}
function gl() { git pull "$@" ;}
function gp() { git push "$@" ;}
function gs() { git status "$@" ;}
function gh() { git log "$@" ;}
function tf() { echo -n -e "\033]0;${1}\007"; tail -f $1; }

# thor
function t.compile() { thor siteminder:project:compile "$@" ;}
function t.tag() { thor siteminder:project:tag "$@" ;}
function t.create_version(){ thor siteminder:jira:create_version "$@" ;}
function t.release_issue() { thor siteminder:jira:release_issue "$@" ;}
function t.issue() { thor siteminder:jira:create_issue "$@" ;}
function t.plugins() { thor siteminder:project:update_plugins "$@" ;}
function t.auto_plugins() { thor siteminder:project:auto_update_plugins "$@" ;}

# Completions
complete -C $HOME/.completion_scripts/rake_completion -o default rake
complete -C $HOME/.completion_scripts/thor_completion -o default thor
complete -C $HOME/.completion_scripts/ssh_completion -o default ssh
complete -C $HOME/.completion_scripts/ssh_completion -o default scp
complete -C $HOME/.completion_scripts/list_apps_completion -o default list-apps.sh

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "~/.gvm/bin/gvm-init.sh" ]] && source "~/.gvm/bin/gvm-init.sh"
