# fish config file

function su
    command su --shell=/usr/bin/fish $argv
end

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

if status is-interactive
end

alias g++="g++ -std=c++17 -O2 -Wall"
alias python="python3"
alias pydoc="python -m pydoc"

alias mkdir="mkdir -pv"
alias rm="rm -rf"
alias la="ls -la"
alias cp="cp -r"

alias update="sudo pacman -Syyuu"
