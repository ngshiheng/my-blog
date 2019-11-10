#!/usr/bin/env bash

#################################################################################
#
#   Run this before commiting any code to check for linting errors and formatting
#
#################################################################################

# font color
red=`tput setaf 1`
green=`tput setaf 2`
white=`tput sgr0`

# function
echo_finish () {
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

# main
lint_check
echo_finish