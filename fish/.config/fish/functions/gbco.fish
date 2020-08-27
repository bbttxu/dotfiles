function gbco --description 'fzf powered git branch && checkout'
    if test -n "$argv"
        git branch | fzf -q $argv | xargs git checkout
    else
        git branch | fzf | xargs git checkout
    end
end