function fish_prompt
    set username $USER
    set cwd (string replace -r "^$HOME" "~" (pwd))

    set venv ""
    if set -q VIRTUAL_ENV
        set venv (basename $VIRTUAL_ENV)
    end

    if test -n "$venv"
        printf "👤%s | %s\n %s > " $username $cwd $venv
    else
        printf " 👤%s | %s\n > " $username $cwd
    end
end
