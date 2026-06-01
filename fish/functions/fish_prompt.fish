function fish_prompt
    set_color brcyan
    set dir (string replace $HOME "~" $PWD)
    set short (string split "/" $dir)[-1]
    
    if test -z "$short"
        set short "/"
    end
    
    echo -n "["(whoami)"@"$hostname" "$short"]\$"
    set_color normal
end
