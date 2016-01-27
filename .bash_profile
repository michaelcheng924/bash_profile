# Customizes the text displayed in the terminal to look like ~/code/projects (master). Git branches are shown.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[0;35m\]\w\$(parse_git_branch): \[\033[0m\]"

# Shortcuts to directories I often use
alias code='cd ~/code'
alias disco='cd ~/code/disco-app/CasiLabs.Disco.WebUI/client'
alias fun='cd ~/code/disco-functional-tests'
alias best='cd ~/code/best-act-prep'
alias kbn='cd ~/code/kibana'
alias budget='cd ~/"Google Drive"/family-budget'
alias server = 'python -m SimpleHTTPServer 8000'

# Shortcut to bash profile
alias prof='sub ~/.bash_profile'
alias sou='source ~/.bash_profile'

# Shortcut to a file I use for testing
alias index='sub ~/code/misc/index.html'

# Modify common commands
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ll='ls -FGlAhp'

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
alias h='cd ~'
alias c='clear'

# Open the current directory in Finder
alias f='open -a Finder ./'

# Shortcuts for databases and CoffeeScript compiler
alias mongod='/usr/local/bin/mongod'
alias mongo='/usr/local/bin/mongo'
alias elastic='~/downloads/elasticsearch-2.1.1/bin/elasticsearch';
alias sqlx='mysql.server stop'
alias sqls='mysql.server start'
alias sql='mysql -u root'
alias coffeecompile='coffee --output compiled --map --watch --compile ./'

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

alias au='git update-index --assume-unchanged Web.config'
alias nau='git update-index --no-assume-unchanged Web.config'
alias lint='./node_modules/.bin/eslint'

# Shortcuts to kill processes that sometimes get out of control
alias ks='rm ~/Library/Preferences/com.apple.finder.plist&&killall Finder&&killall -9 node'

# Shortcuts for deploying an app to the Google Play Store
alias jar='jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore platforms/android/ant-build/MainActivity-release-unsigned.apk alias_name'
alias zip='zipalign -v 4 platforms/android/ant-build/MainActivity-release-unsigned.apk HackerNewsMobile.apk'
alias androidhome='export ANDROID_HOME=~/Downloads/android-sdk-macosx export'
alias PATH='PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools'

alias bap='ssh azureuser@best-act-prep.cloudapp.net -p 22'

alias hosts='sudo vim /etc/hosts'

# Open a directory or file in Sublime Text.
# sub . --> Opens the directory
# sub (filename) --> Opens a specific file
sub() {
  open $1 -a "Sublime Text"
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

export PATH=$PATH:/Users/discodancer/Downloads/apache-maven-3.3.9/bin
export PATH=$PATH:/Users/discodancer/Downloads/binstuff

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
