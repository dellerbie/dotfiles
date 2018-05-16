export DEV=$HOME/src
export S=$DEV/skycutter
export R=$DEV/reporting-api
export W=$DEV/web-api
export L=$DEV/lc-castle
export M=$DEV/mgmt-castle
export GOPATH=$DEV/go
export AM=$GOPATH/src/github.com/simplereach/article-metrics
export TAM=$HOME/tmp/am
export SAMTMP=$HOME/tmp/sam
export MEMBERSHIPS_PSQLUSER="derrickellerbie"
export MEMBERSHIPS_PSQLPASS=
export MEMBERSHIPS_PSQLHOST="localhost"
export MEMBERSHIPS_PSQLDB="memberships"

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
