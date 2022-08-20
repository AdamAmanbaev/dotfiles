rm -rf $HOME/.vimrc
ln -s $HOME/Code/dotfiles/vim/vimrc $HOME/.vimrc

if cd $HOME/.vim/bundle/Vundle.vim
then
    git pull origin
else
    git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

mkdir -p ~/.vim/autoload && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

vim +PluginInstall +qall

git clone https://github.com/mh21/errormarker.vim $HOME/.vim/bundle/errormarker.vim
