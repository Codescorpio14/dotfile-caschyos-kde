function fish_prompt
    set user (whoami)

    if test $PWD = $HOME
        set dir "~"
    else
        set dir (path basename $PWD)
    end

    echo -n " [ "
    set_color green
    echo -n "$user |"
    set_color normal
    echo -n " $dir"
    echo -n " ] > "
end

