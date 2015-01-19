# Basics
# ------

case `uname` in
    Darwin)
        ;;
    Linux)
        ;;
esac

alias vi='vim'
alias v='vim'


# Virtualenv
# ----------

export WORKON_HOME=${WORKON_HOME:-$HOME/.virtualenvs}
export VIRTUALENVWRAPPER_PYTHON=${VIRTUALENVWRAPPER_PYTHON:-`which python`}
export VIRTUALENVWRAPPER_VIRTUALENV=${VIRTUALENVWRAPPER_VIRTUALENV:-`which virtualenv`}

source ${VIRTUALENVWRAPPER_SCRIPT:-`which virtualenvwrapper.sh`}

