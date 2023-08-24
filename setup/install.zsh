#!/usr/bin/zsh

set -e
INSTALL_PATH=$(dirname -- "$0:A")

MODULES=(packages tmux zsh vim)
REPOS=(latex ctf cp)

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

mkdir -p $HOME/.hushlogin
touch $HOME/.hushlogin

chmod +x $HOME/Code/cp/library/stress/validate.zsh
chmod +x $HOME/Code/cp/library/stress/stress.zsh
