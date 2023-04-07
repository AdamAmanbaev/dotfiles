#!/usr/bin/zsh

set -e
INSTALL_PATH=$(dirname -- "$0:A")
PROFILES=(basic dev home)
MODULES=(packages home tmux zsh vim contest)
REPOS=(latex ctf cp)

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
touch $HOME/.hushlogin

chmod +x $HOME/Code/dotfiles/zsh/scripts/build.zsh
chmod +x $HOME/Code/dotfiles/zsh/scripts/validate.zsh
chmod +x $HOME/Code/dotfiles/zsh/scripts/stress.zsh

install_omz() {
    ZSH=${HOME}/.oh-my-zsh
    ZSH_CUSTOM="${ZSH_CUSTOM:-${ZSH}/custom}"

    # Clone or update Oh My Zsh.
    if [[ ! -d "${ZSH}" ]]; then
	git clone --quiet --filter=blob:none https://github.com/robbyrussell/oh-my-zsh "${ZSH}"
    else
	git -C "${ZSH}" pull --quiet
    fi

    # Clone or update Powerlevel10k.
    THEME_REPO_URL="https://github.com/romkatv/powerlevel10k"
    THEME_PATH="${ZSH_CUSTOM}/themes/${THEME_REPO_URL##*/}"
    THEME_VERSION_TAG="v1.17.0"
    if [[ ! -d "${THEME_PATH}" ]]; then
	git clone --quiet --filter=blob:none --branch "${THEME_VERSION_TAG}" "${THEME_REPO_URL}" "${THEME_PATH}"
    else
        git -C "${THEME_PATH}" fetch --quiet
        git -C "${THEME_PATH}" checkout "${THEME_VERSION_TAG}" --quiet
    fi

    # Install or update custom oh-my-zsh plugins.
    CUSTOM_PLUGIN_REPOS=(
        "https://github.com/Aloxaf/fzf-tab"
        "https://github.com/zdharma-continuum/fast-syntax-highlighting"
        "https://github.com/zsh-users/zsh-autosuggestions"
    )
   
    for REPO_URL in "${CUSTOM_PLUGIN_REPOS[@]}"; do
	PLUGIN_PATH="${ZSH_CUSTOM}/plugins/${REPO_URL##*/}"
	if [[ ! -d "${PLUGIN_PATH}" ]]; then
	    git clone --quiet --filter=blob:none "${REPO_URL}" "${PLUGIN_PATH}"
	else
	    git -C "${PLUGIN_PATH}" pull --quiet
	fi
    done
}

install_omz
