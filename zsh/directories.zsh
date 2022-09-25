# ls settings
alias ls="ls --color=auto"

# remove annoying latex files
alias clean="rm *aux *fdb_latexmk *fls *log *out *gz"

# creates and enters directory
function mkcd() {
        mkdir -p $1
        cd $1
}
