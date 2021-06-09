ar
export PATH="$PATH:$HOME/.rbenv/bin:/opt/puppetlabs/bin/" # Add rbenv and puppet bin to PATH
export PUPPET_DIR=/home/walterk/git/puppet_work
export BOLT_PUPPETDB_SERVER="http://puppetapi1.cpt4.host-h.net:8080"
[ -e ~/git/puppet_work/puppet_control/scripts ] && export PATH="$PATH:$HOME/git/puppet_work/puppet_control/scripts"
#Changes the ulimit limits.
ulimit -Sn 40096      # Increase open files.
ulimit -Sl unlimited # Increase max locked memory.
