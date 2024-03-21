# quick folder navigation
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus
alias d='dirs -v | head -10'

# grep settings
GREP_EXCLUDE_DIR=".git"
GREP_FLAGS="--color=auto --exclude-dir=${GREP_EXCLUDE_DIR}"
alias grep="grep ${GREP_FLAGS}"

# ls settings
alias ls='lsd -lh --group-directories-first'
alias la='lsd -lah --group-directories-first'
alias lt='lsd -lh --group-directories-first --tree'

# colors
PS1='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '

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
