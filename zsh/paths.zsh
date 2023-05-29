# starship config
export STARSHIP_CONFIG=$HOME/Code/dotfiles/starship/starship.toml

# live latex editing
export PATH=$PATH:/mnt/c/users/adamamanbaev/AppData/Local/SumatraPDF/
export PATH=$PATH:/usr/local/stata16/

# stress-testing scripts
export PATH=$PATH:~/Code/dotfiles/zsh/stress

# to access sumatrapdf from wsl
PATH=$(/usr/bin/printenv PATH | /usr/bin/perl -ne 'print join(":", grep { !/\/mnt\/[a-z]/ } split(/:/));')
export PATH="$(echo "$PATH" | python3 -c "import sys; path = sys.stdin.read().split(':'); path = [pp for pp in path if '/mnt/c' not in pp]; print(':'.join(path))")"
export LD_LIBRARY_PATH="$(echo "$LD_LIBRARY_PATH" | python3 -c "import sys; path = sys.stdin.read().split(':'); path = [pp for pp in path if '/mnt/c' not in pp]; print(':'.join(path))")"

# exprt colors to tmux
export TERM="xterm-256color"

# cmd.exe
export PATH=$PATH:/mnt/c/Windows/System32/
