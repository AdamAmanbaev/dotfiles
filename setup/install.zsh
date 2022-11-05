#!/usr/bin/zsh
set -e
INSTALL_PATH=$(dirname -- "$0:A")
PROFILES=(basic dev home)
MODULES=(packages home zsh vim bash contest)
REPOS=(hajar latex ctf cp pingu-ml)

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
