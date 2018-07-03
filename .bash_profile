# Customizes the text displayed in the terminal to look like ~/code/projects (master). Git branches are shown.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[0;35m\]\w\$(parse_git_branch): \[\033[0m\]"

# Shortcuts to directories I often use
alias code='cd ~/code'
alias best='cd ~/code/best-act-prep'
alias budget='cd ~/"Google Drive"/family-budget'
alias server='python -m SimpleHTTPServer 8000'

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
alias gpo='git pull --rebase origin master'
alias gb='git checkout -b'
alias gx='git branch -d'
alias br='git branch'

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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
