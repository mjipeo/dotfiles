# bj.sh
#
# Description: desk for `bj` project
#

PROJECT_PATH=~/workspace/bj

# Server

alias prod='ssh deploy@52.78.190.141'

# Directory

alias bj='cd ${PROJECT_PATH}'
alias b='bj'
alias bb='cd ${PROJECT_PATH}/back'
alias bf='cd ${PROJECT_PATH}/front'

export DJANGO_SETTINGS_MODULE='bj.settings.local'

cd $PROJECT_PATH
workon bj
