setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# quick folder navigation
alias d='dirs -v | head -10'
alias 0='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

# cd settings
alias ..="cd .."
alias ....="cd ...."
alias ......="cd ......"

# cp settings
alias cp="cp -i" # -i asks us before overwriting a file

# grep settings
GREP_EXCLUDE_DIR=".git"
GREP_FLAGS="--color=auto --exclude-dir=${GREP_EXCLUDE_DIR}"
alias grep="grep ${GREP_FLAGS}"

# ls settings
alias l="ls -lah --color=auto"
alias ls="ls --color=auto"

# mv settings
alias mv="mv -i" # -i asks us before overwriting a file

# rm settings
alias rm="rm -i" # -i asks us before removing any file

# mkdir makes it 
alias md="mkdir -p"

function mkcd() {
	mkdir -p $1
	cd $1
}

# find any directory and enter it
fd() {
    local dir
    dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d \
        -print 2> /dev/null | fzf +m) && cd "$dir"
}

# find any file and vim into it
fvim() {
    vim $(fzf)
}
