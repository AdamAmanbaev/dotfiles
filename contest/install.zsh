if [[ want_home ]] {
    mkdir -p $HOME/Code/contest
    mkdir -p $HOME/Code/contest/library
    mv $HOME/Code/dotfiles/template.cpp $HOME/Code/contest/library/template
    mv $HOME/Code/dotfiles/longtemplate.cpp $HOME/Code/contest/library/template
}
