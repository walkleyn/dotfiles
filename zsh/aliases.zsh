# Aliases in this file are bash and zsh compatible

# Don't change. The following determines where YADR is installed.
yadr=$HOME/.yadr

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

# YADR support
alias yav='yadr vim-add-plugin'
alias ydv='yadr vim-delete-plugin'
alias ylv='yadr vim-list-plugin'
alias yup='yadr update-plugins'
alias yip='yadr init-plugins'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

if [[ $platform == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
TRAPHUP() {
  source $yadr/zsh/aliases.zsh
}

alias ae='vim $yadr/zsh/aliases.zsh' #alias edit
alias ar='source $yadr/zsh/aliases.zsh'  #alias reload
alias gar="killall -HUP -u \"$USER\" zsh"  #global alias reload

# vim using
mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vim="mvim -v"
fi

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='vim ~/.vimrc'

# zsh profile editing
alias ze='vim ~/.zshrc'

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gca='git ca'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias gap='git add -p'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gfa='git fetch --all'
alias gfap='git fetch --all --prune'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D'
# Staged and cached are the same thing
alias gdc='git diff --cached -w'
alias gds='git diff --staged -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gpp='git pull origin production'
alias gdp='git diff origin/production'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
alias c='rails c' # Rails 3
alias co='script/console' # Rails 2
alias cod='script/console --debugger'
alias rvs='rvm use system'

#If you want your thin to listen on a port for local VM development
#export VM_IP=10.0.0.1 <-- your vm ip
alias ts='thin start -a ${VM_IP:-127.0.0.1}'
alias ms='mongrel_rails start'
alias tfdl='tail -f log/development.log'
alias tftl='tail -f log/test.log'

alias ka9='killall -9'
alias k9='kill -9'

# Gem install
alias sgi='sudo gem install --no-ri --no-rdoc'

# TODOS
# This uses NValt (NotationalVelocity alt fork) - http://brettterpstra.com/project/nvalt/
# to find the note called 'todo'
alias todo='open nvalt://find/todo'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

alias rdm='rake db:migrate'
alias rdmr='rake db:migrate:redo'

# Zeus
alias zs='zeus server'
alias zc='zeus console'
alias zr='zeus rspec'
alias zrc='zeus rails c'
alias zrs='zeus rails s'
alias zrdbm='zeus rake db:migrate'
alias zrdbtp='zeus rake db:test:prepare'
alias zzz='rm .zeus.sock; pkill zeus; zeus start'

# Rspec
alias rs='rspec spec'
alias sr='spring rspec'
alias src='spring rails c'
alias srgm='spring rails g migration'
alias srdm='spring rake db:migrate'
alias srdt='spring rake db:migrate'
alias srdmt='spring rake db:migrate db:test:prepare'


# Sprintly - https://github.com/nextbigsoundinc/Sprintly-GitHub
alias sp='sprintly'
# spb = sprintly branch - create a branch automatically based on the bug you're working on
alias spb="git checkout -b \`sp | tail -2 | grep '#' | sed 's/^ //' | sed 's/[^A-Za-z0-9 ]//g' | sed 's/ /-/g' | cut -d"-" -f1,2,3,4,5\`"

alias hpr='hub pull-request'
alias grb='git recent-branches'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias dbtp='spring rake db:test:prepare'
alias dbm='spring rake db:migrate'
alias dbmr='spring rake db:migrate:redo'
alias dbmd='spring rake db:migrate:down'
alias dbmu='spring rake db:migrate:up'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew doctor'
## Dir shortcuts
alias home='cd ~/'
alias gdir='cd ~/git'
alias docs='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias kernels='cd ~/git/kernels'
alias music='cd ~/Music'
alias pictures='cd ~/Pictures'
alias photos='cd ~/Photos'
alias puppetgit='cd ~/git/puppet_work'
alias control='cd ~/git/puppet_work/control'
alias hieradata='puppetgit;cd ~/git/puppet_work/hieradata'
alias monolith='puppetgit;cd ~/git/puppet_work/monolith'
alias profiles='puppetgit;cd ~/git/puppet_work/profiles'
alias roles='puppetgit;cd ~/git/puppet_work/role'
alias scratchpad='cd ~/scratchpad'
alias scripts='cd ~/scripts'
alias shelter='cd /media/sf_vagrant/shelter'
alias videos='cd ~/Videos'
alias platformci='gdir;cd platformci'

##Quick tools
alias canaries='grep -rl canary /home/walterk/git/puppet_work/hieradata/fqdn/* | rev | cut -d/ -f1 | rev | cut -d. -f1-4'
alias puppetmasters='cssh `query_nodes puppetserver`'
alias mirrors='cssh `query_nodes mirror`'
alias linsh='sudo mount -t cifs //192.168.0.86/stuff -o username=linsh,password=stompV8 /media/linsh/stuff'
alias vboxshare='sudo mount -t vboxsf .VirtualBox /media/vbox_share'
alias w30='s www30.cpt2.host-h.net'
alias vcs='s vcs.hetzner.co.za'
alias baculasd='~/scripts/baculasd.sh'
alias pgu='~/scripts/pgu.sh'
alias webstore='~/scripts/webstore.sh'
alias whatkvm="ssh puppetmaster1.cpt2.host-h.net '/usr/local/bin/what_kvm_host.sh $1'"
alias wherekvm="ssh collectivehub1.jnb2.host-h.net 'where_to_create_new_vm.rb'"
alias setresolver='~/scripts/setresolver.sh'
alias pgitup="~/scripts/pgitup.sh $1"
alias gum="git pull upstream master"
alias s='/usr/local/bin/s'
alias kc='konsoleprofile colors=Solarized'
alias ghe='ssh -p 122 admin@github.hetzner.co.za'
alias ghe_cpt='ssh -p 122 admin@github1.cpt3.host-h.net'
alias ghe_jnb='ssh -p 122 admin@github1.jnb2.host-h.net'
alias getmanaged='mco find -I /\^www\\d+\|\^dedi\\d+/ --dt=5'

## Sudo fixes
alias install='sudo aptitude install'
alias search='sudo aptitude search'
alias remove='sudo aptitude remove'
alias update='sudo aptitude update'
alias upgrade='sudo aptitude update && sudo aptitude upgrade'
alias dupgrade='sudo aptitude update && sudo aptitude dist-upgrade'
alias orphand='sudo deborphan | xargs sudo aptitude -y remove --purge'
alias autoremove='sudo aptitude autoremove'
alias cleanup='sudo aptitude autoclean &&  sudo aptitude clean && sudo aptitude remove && orphand'
alias updatedb='sudo updatedb'
