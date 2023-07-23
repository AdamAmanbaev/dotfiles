#!/usr/bin/zsh

sudo apt-get update

git config --global user.email "adam.amanbaev@gmail.com"
git config --global user.name "Adam Amanbaev"

if want_basic
then
    BASIC_PACKAGES=(vim git curl zsh)
    echo "Installing basic packages ($BASIC_PACKAGES)"
    sudo apt-get install -y $BASIC_PACKAGES
fi
 
if want_dev
then
    DEV_PACKAGES=(g++ gcc python3 python3-pip fzf tmux texlive texlive-xetex latexmk texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra python3-pygments bat gdb)
    echo "Installing dev packages ($DEV_PACKAGES)"
    sudo apt-get install -y $DEV_PACKAGES
    sudo apt-get -y install git autoconf libelf-dev libtool
    git clone https://gitlab.com/cespedes/ltrace.git /tmp/ltrace
    cd /tmp/ltrace && ./autogen.sh && ./configure && 
    sudo make
    sudo make install
    cd $HOME
    bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
fi
