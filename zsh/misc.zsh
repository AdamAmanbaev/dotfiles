# updates nomenclature in latex file
nomenclature() {
    makeindex "$1".nlo -s nomencl.ist -o "$1".nls
}

# remove annoying latex files
alias cleanup="rm *xdv *ilg *nls *toc *aux *fdb_latexmk *fls *log *out *gz *bbl *blg *nlo"

# stack limit
ulimit -s unlimited

# explorer alias
alias exp='/mnt/c/WINDOWS/explorer.exe'

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
