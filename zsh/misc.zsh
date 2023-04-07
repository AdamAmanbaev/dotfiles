# updates nomenclature in latex file
nomenclature() {
    makeindex "$1".nlo -s nomencl.ist -o "$1".nls
}

# remove annoying latex files
alias cleanup="rm *xdv *ilg *nls *toc *aux *fdb_latexmk *fls *log *out *gz *bbl *blg *nlo"

# nice logo and info when starting terminal
neofetch --ascii_distro Garuda | lolcat

# stack limit
ulimit -s unlimited

# explorer alias
alias exp='/mnt/c/WINDOWS/explorer.exe'
