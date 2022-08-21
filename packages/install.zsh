#!/usr/bin/zsh

sudo apt-get update

if want_basic
then
    BASIC_PACKAGES=(vim python3 python3-pip git zsh curl)
    echo "Installing basic packages ($BASIC_PACKAGES)"
    sudo apt-get install -y $BASIC_PACKAGES
fi
 
if want_dev
then
    DEV_PACKAGES=(g++ gcc cmake neofetch lolcat)
    echo "Installing dev packages ($DEV_PACKAGES)"
    sudo apt-get install -y $DEV_PACKAGES
fi

