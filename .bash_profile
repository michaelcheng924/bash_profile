# Customizes the text displayed in the terminal to look like ~/code/projects (master). Git branches are shown.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[0;35m\]\w\$(parse_git_branch): \[\033[0m\]"

# Shortcuts to directories I often use
alias best='cd ~/code/best-act-prep'
alias budget='cd ~/"Google Drive"/family-budget'
alias server='python -m SimpleHTTPServer 4000'

# Shortcut to bash profile
alias prof='vs ~/.bash_profile'
alias sou='source ~/.bash_profile'

# This one is great. Automatically calls ls after you cd into a directory
cd() { builtin cd "$@"; ls; }

# These are also great. I use .. instead of cd .. and you can go up to ..... to go back five directories
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias .2='cd ../../'
alias ....='cd ../../../'
alias .3='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

alias ~='cd ~'
alias c='clear'

# Open the current directory in Finder
alias f='open -a Finder ./'

# Shortcuts for databases and CoffeeScript compiler
alias mongod='/usr/local/bin/mongod'
alias mongo='/usr/local/bin/mongo'
alias sqlx='mysql.server stop'
alias sqls='mysql.server start'
alias sql='mysql -u root'

# Shortcuts for git
alias gs='git status'
alias gd='git diff'
alias ga='git add .'
alias gc='git commit'
alias gca='git commit --amend'
alias go='git checkout'
alias gp='git push origin'
alias gpf='git push -f origin'
alias gh='git hist'
alias gi='git init'
alias gro='git remote add origin'
alias gru='git remote add upstream'
alias gpu='git pull --rebase upstream master'
alias gpo='git pull origin master'
alias gb='git checkout -b'
alias gx='git branch -d'
alias br='git branch'

alias grl='git reset wm/ui.frontend/src/utils/builds/environments/local.js'
alias grll='git reset src/utils/builds/local.js'
alias grm='git reset wm/ui.frontend/src/styles/mixins.scss'
alias grf='git reset wm/ui.frontend/src/fe-poc'
alias grmm='git reset public/mock.model.json'
alias gre='git reset public/endev.model.json'
alias grmd='git reset wm/ui.frontend/public/us/en/mdsgraphic.model.json'
alias gree='git reset .env.development'
alias greee='git reset public/content/wm/us/en.model.json'
alias grg='git reset wm/ui.frontend/src/utils/getContentUrl.js'
alias grc='git reset wm/ui.frontend/src/store/createStore.js'
alias grp='git reset package-lock.json'
alias fd='git checkout feature/develop'
alias pfd='git pull origin feature/develop'
alias rs='git reset --soft head^1'
alias gprb='git pull --rebase origin WMX'
alias gpra='git pull --rebase origin feature/develop'
alias grhh='git reset --hard head'
alias gri='git reset wm/ui.frontend/src/index.js'
alias grii='git reset src/index.js'
alias gry='git reset yarn.lock'

alias hosts='sudo vim /etc/hosts'

# Open a directory or file in Sublime Text.
# sub . --> Opens the directory
# sub (filename) --> Opens a specific file
vs() {
  open $1 -a "Visual Studio Code"
}

# Open a file in Google Chrome
gch() {
  open $1 -a "Google Chrome"
}

dl() {
    git branch -D $1
}

dr() {
  git push origin :$1
}

pr() {
  git fetch origin pull/$1/head:pr/$1 && git checkout pr/$1
}

gpoo() {
  git pull origin $1
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
