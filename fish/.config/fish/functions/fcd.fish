function fcd --description 'fzf powered cd'
    set -l dir (fd --type d | fzf )
    cd $dir
end