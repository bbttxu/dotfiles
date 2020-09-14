# TODO strip '* ' and '  ' from git branch listings
# affects when the current branch is selected and prepended with '* '
function gbco --description 'fzf powered git branch && checkout'
    if test -n "$argv"
        set branch (git branch | fzf -q $argv) 
    else
        set branch (git branch | fzf) 
    end

    git checkout (string replace -r -a '(\* {1}| {2})' '' $branch)
end