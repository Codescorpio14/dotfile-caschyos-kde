function fish_prompt
    set username $USER
    set cwd (pwd)

    # Replace your home path with ~ only at the beginning
    set cwd (string replace -r "^$HOME" "~" $cwd)

    printf " 👤%s | %s\n > " $username $cwd
end
