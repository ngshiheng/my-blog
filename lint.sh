#!/usr/bin/env bash

# font color
red=$(tput setaf 1)
green=$(tput setaf 2)
white=$(tput sgr0)

PYVENV="venv-my-blog"

# function

activate_virtualenv() {
    echo "🔧 $white Activating virtual environment"
    source $PYVENV/bin/activate
}

echo_finish() {
    echo "$green✓$white Finished checking."
}

echo_ok() {
    echo "$green✓$white $1"
}

echo_error() {
    echo "$red✗$white $1"
}

lint_check() {
    echo "⌛ $white Running flake8"
    flake8 --exclude=*migrations*,venv-my-blog --max-line-length 99
    if [ "$?" -ne "0" ]; then echo_error "ERR - error while running flake8" && exit 1; fi
    echo_ok "OK - no linting errors found."
}

main() {

    # if virtualenv is activated, then run lint check
    if [[ "$VIRTUAL_ENV" != "" ]]; then
        echo "🔧 $white Virtual environment activated"
        lint_check
        echo_finish
    else
        activate_virtualenv
        lint_check
        echo_finish
    fi
}

main
