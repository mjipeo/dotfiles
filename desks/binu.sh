# binu.sh
#
# Description: desk for `binu` project
#

PROJECT_PATH=~/workspace/binu-backend

# Server

alias olddev='ssh bloom@52.68.36.204'
alias oldprod='ssh bloom@52.68.91.38'

alias dev='ssh bloom@52.79.114.149'
alias prod='ssh bloom@52.79.114.95'

# Directory

alias binu='cd ${PROJECT_PATH}'
alias p='binu'

export DJANGO_SETTINGS_MODULE=binu.settings.local
cd $PROJECT_PATH
workon binu
