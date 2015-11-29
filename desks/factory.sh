# factory.sh
#
# Description: desk for `factory` project
#

PROJECT_PATH=~/workspace/factory

# Server

alias dugout='ssh mjipeo@smirky.co'
alias prod='dugout'

# Directory

alias factory='cd ${PROJECT_PATH}'
alias f='factory'

cd $PROJECT_PATH
workon factory
