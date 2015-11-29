# poppytab.sh
#
# Description: desk for `poppytab` project
#

PROJECT_PATH=~/workspace/poppytab

# Server

alias dugout='ssh mjipeo@smirky.co'
alias prod='dugout'

# Directory

alias poppytab='cd ${PROJECT_PATH}'
alias p='poppytab'

export DJANGO_SETTINGS_MODULE=poppytab.settings
cd $PROJECT_PATH
workon poppytab
