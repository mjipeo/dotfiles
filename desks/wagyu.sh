# wagyu.sh
#
# Description: desk for `wagyu` project
#

PROJECT_PATH=~/workspace/wagyu

# Server

alias prod='ssh deploy@52.74.254.10'

# Directory

alias wagyu='cd ${PROJECT_PATH}'
alias wa='wagyu'

export NODE_ENV='local'

cd $PROJECT_PATH
