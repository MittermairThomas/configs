if status is-interactive
    set -x TERMINAL kitty
    set fish_greeting ""

    alias ls='ls --color=auto --group-directories-first'
    alias grep='grep --color=auto'
    alias ll='ls -l'
    alias la='ls -lA'
    alias getMake='cp /home/thomas/code/bashS/makefile .'
    alias avrProj='bash /home/thomas/code/bashS/createAvrProj'
    alias usbIF='/home/thomas/code/usbInterface/usbIF'
end
