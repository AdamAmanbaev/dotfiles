#!/usr/bin/zsh
set -e
INSTALL_PATH=$(dirname -- "$0:A")
PROFILES=(basic dev home)
MODULES=(packages home zsh vim bash contest)
REPOS=(gymnasiearbete cp-solutions)

if [[ -z $1 ]]
then
    PROFILE="invalid"
else
    PROFILE=$1
fi

while [[ -z $PROFILE || ${PROFILES[(r)$PROFILE]} != $PROFILE ]]
do
    read PROFILE\?"What profile is this machine [$PROFILES]? "
done

echo "Write a space-separated list of the modules [$MODULES] you would like to install or nothing for all"
read -A MODULE

if [ ${#MODULE[@]} -gt 0 ]
then
    echo "Installing all modules!"
else 
    MODULES=("${MODULE[@]}")
fi

echo "Write a space-separated list of the repositories [$REPOS] you would like to install or nothing for all"
read -A REPO

if [ ${#REPO[@]} -gt 0 ]
then 
    echo "Installing all repositories!"
else 
    REPOS=("${REPO[@]}")
fi

function want_home() {
    [[ $PROFILE == "home" ]] 
}

function want_dev() {
    [[ $PROFILE == "dev" || want_home ]]
}

function want_basic() {
    [[ $PROFILE == "basic" || want_dev ]]
}

TODOS=()
function add_todo() {
    TODOS+=($1)
}

function install() {
    echo "Installing module $1"
    MODULE_PATH=$INSTALL_PATH/../$1
    source $MODULE_PATH/install.zsh
}

for module in $MODULES
do
    install $module
done

echo "Installing [$REPOS]"
source $INSTALL_PATH/../repos/install.zsh

mkdir $HOME/.hushlogin

echo "Installation done! Todo list:"
for todo in $TODOS
do
    echo "- $todo"
done
