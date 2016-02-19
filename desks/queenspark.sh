# queenspark.sh
#
# Description: desk for `queenspark` project
#

PROJECT_PATH=~/workspace/queenspark

# Server

alias dev='ssh deploy@54.178.183.100'

alias factory='ssh deploy@52.77.25.219'
alias proxy='ssh deploy@52.76.238.143'
alias web1='ssh deploy@ec2-54-251-152-44.ap-southeast-1.compute.amazonaws.com'
alias web2='ssh deploy@ec2-54-179-140-92.ap-southeast-1.compute.amazonaws.com'
alias gitlab='ssh -i ~/Key/projectt.pem ubuntu@52.79.105.235'

alias oldfactory='ssh deploy@52.26.114.191'
alias oldproxy='ssh deploy@52.24.253.121'
alias oldweb1='ssh deploy@ec2-52-10-29-127.us-west-2.compute.amazonaws.com'
alias oldweb2='ssh deploy@ec2-52-25-204-50.us-west-2.compute.amazonaws.com'

# Directory

alias queenspark='cd ${PROJECT_PATH}'
alias q='queenspark'
alias qb='cd ${PROJECT_PATH}/backend'
alias qf='cd ${PROJECT_PATH}/frontend'

export DJANGO_SETTINGS_MODULE='queenspark.settings.local'

cd $PROJECT_PATH
workon queenspark
