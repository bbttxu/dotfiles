function fgb --description 'fzf powered git branch && checkout'
    set -l branch ( git branch | fzf )
    git checkout $branch
end