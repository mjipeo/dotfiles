# delisse.sh
#
# Description: desk for `delisse` project
#

PROJECT_PATH=~/workspace/delisse

# Server

alias prod='ssh deploy@13.124.32.126'

# Directory

alias delisse='cd ${PROJECT_PATH}'
alias de='delisse'

export DJANGO_SETTINGS_MODULE='delisse.settings.local'

cd $PROJECT_PATH
workon delisse
