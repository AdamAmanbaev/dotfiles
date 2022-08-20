ulimit -s unlimited  # stack-limit
export PATH=$PATH:/mnt/c/users/adama/AppData/Local/SumatraPDF/
export PATH=$PATH:/usr/local/stata16/
alias exp='/mnt/c/WINDOWS/explorer.exe'

PATH=$(/usr/bin/printenv PATH | /usr/bin/perl -ne 'print join(":", grep { !/\/mnt\/[a-z]/ } split(/:/));')

export PATH="$(echo "$PATH" | python3 -c "import sys; path = sys.stdin.read().split(':'); path = [pp for pp in path if '/mnt/c' not in pp]; print(':'.join(path))")"
export LD_LIBRARY_PATH="$(echo "$LD_LIBRARY_PATH" | python3 -c "import sys; path = sys.stdin.read().split(':'); path = [pp for pp in path if '/mnt/c' not in pp]; print(':'.join(path))")"
