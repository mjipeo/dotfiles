# queenspark.sh
#
# Description: desk for `queenspark` project
#

PROJECT_PATH=~/workspace/queenspark

# Server

alias dev='ssh deploy@54.178.183.100'
alias factory='ssh deploy@52.26.114.191'
alias proxy='ssh deploy@52.24.253.121'
alias web1='ssh deploy@ec2-52-10-29-127.us-west-2.compute.amazonaws.com'
alias web2='ssh deploy@ec2-52-25-204-50.us-west-2.compute.amazonaws.com'

# Directory

alias queenspark='cd ${PROJECT_PATH}'
alias q='queenspark'
alias qb='cd ${PROJECT_PATH}/backend'
alias qf='cd ${PROJECT_PATH}/frontend'

export DJANGO_SETTINGS_MODULE='queenspark.settings.local'

cd $PROJECT_PATH
workon queenspark
