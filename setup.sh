#!/usr/bin/env bash

# font color
red=$(tput setaf 1)
green=$(tput setaf 2)
white=$(tput sgr0)

PYVENV="venv-my-blog"

# functions
setup_virtualenv() {
    echo "🐾 $white Removing any existing $PYVENV"
    rm -rf $PYVENV
    virtualenv $PYVENV
    echo "🔧 $white Activating virtual environment"
    source $PYVENV/bin/activate
}

pip_install() {
    pip install -r requirements.txt
    echo "⌛ $white Installing dependencies with pip"
    echo "$green✔$white Completed pip install"
}

echo_finish() {
    echo "$green✔$white Finished setup. You may now start the development server. HINT: python manage.py runserver"
}

echo_error() {
    echo "$red✗$white $1"
}

run_migration() {
    python manage.py migrate
    if [ "$?" -ne "0" ]; then echo_error "ERR - error while running manage.py migrate" && exit 1; fi
}

main() {
    setup_virtualenv
    pip_install
    run_migration
    echo_finish
}

main
