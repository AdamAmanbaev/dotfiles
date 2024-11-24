#!/usr/bin/zsh

# read CUDA flag
cuda=false
while [[ $# -gt 0 ]]; do
    case $1 in
        --cuda|c)
            cuda=true
            shift
            ;;
        *)
            usage
            ;;
    esac
done

set -e
INSTALL_PATH=$(dirname -- "$0:A")

MODULES=(packages tmux zsh nvim)
REPOS=(latex cp)

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

# CUDA setup
if [[ "$cuda" == true ]]; then
    echo "Setting up CUDA"
    wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
    sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
    wget https://developer.download.nvidia.com/compute/cuda/12.6.1/local_installers/cuda-repo-wsl-ubuntu-12-6-local_12.6.1-1_amd64.deb
    sudo dpkg -i cuda-repo-wsl-ubuntu-12-6-local_12.6.1-1_amd64.deb
    sudo cp /var/cuda-repo-wsl-ubuntu-12-6-local/cuda-*-keyring.gpg /usr/share/keyrings/
    sudo apt-get update
    sudo apt-get -y install cuda-toolkit-12-6 -y
    sudo apt install nvidia-cuda-toolkit -y
    rm cuda-repo-wsl-ubuntu-12-6-local_12.6.1-1_amd64.deb
fi

# Final setup of conda
~/.miniconda3/bin/conda init zsh
echo "Restart shell and run conda config --set auto_activate_base false, and restart again"
