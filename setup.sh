#!/usr/bin/env bash

#################################################################################
# 
#   Create a virtualenv before running this setup.sh script
#   
#       python3 -m venv virtual-env-name
#   
#################################################################################

# font color
red=`tput setaf 1`
green=`tput setaf 2`
white=`tput sgr0`

# functions
pip_install () {
    pip install -r requirements.txt
    echo "⌛ $white Installing dependencies with pip"
    echo "$green✔$white Completed pip install"
}

echo_finish () {
    echo "$green✔$white Finished setup."
}

echo_error() {
    echo "$red✗$white $1"
}

manage_migrate() {
    python manage.py migrate
    if [ "$?" -ne "0" ]; then echo_error "ERR - error while running manage.py migrate" && exit 1; fi
    echo_finish    
}

# main
pip_install
manage_migrate
echo "🤩 You may now start the development server! HINT: python3 manage.py runserver"