# binu.sh
#
# Description: desk for `binu` project
#

PROJECT_PATH=~/workspace/binu-backend

# Server

alias dev='ssh bloom@52.68.36.204'
alias prod='ssh bloom@52.68.91.38'

# Directory

alias binu='cd ${PROJECT_PATH}'
alias p='binu'

export DJANGO_SETTINGS_MODULE=binu.settings.local
cd $PROJECT_PATH
workon binu
