#Setup

" create user
"sudo adduser adamamanbaev 

" give user sudo-privilage
"sudo usermod -aG sudo adamamanbaev

" install vim and add "su - adamamanbaev to .bashrc
"sudo apt install vim

" "su - adamamanbaev" or restart terminal

" install packages
"sudo apt install git g++ gcc cmake neofetch lolcat

" vundle plugin-manager
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" pathogen
"mkdir -p ~/.vim/autoload ~/.vim/bundle && \
"curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

" errormarker via pathogen
"cd ~/.vim/bundle
"git clone git://github.com/mh21/errormarker.vim

" configure git
"git config --global user.name adamamanbaev
"git config --global user.email adam.amanbaev@gmail

" directory for ssh keys 
" ssh-keygen -o -t rsa -C adam.amanbaev@gmail.com
" cat id_rsa.pub 
"mkdir ~/.ssh

" create directory for files
"mkdir ~/.swp ~/.backup ~/.undo

" competitive programming folder 
"mkdir ~/vimcp 
"mkdir ~/vimcp/library
