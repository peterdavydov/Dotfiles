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
    figlet "Terminal"
    echo ""
end

alias g++="g++ -std=c++ -O2 -Wall"
