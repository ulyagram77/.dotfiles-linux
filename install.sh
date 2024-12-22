#!/usr/bin/env sh

if [ -d "$HOME/.dotfiles" ]; then
    cd "$HOME/.dotfiles"
    git pull
else
    mkdir -p "$HOME/.dotfiles"
    echo "Select type of connection:"
    select connection in ssh http; do
        case $connection in
            ssh)
                git clone git@github.com:ulyagram77/.dotfiles-linux.git
                break
            ;;
            http)
                git clone https://github.com/ulyagram77/.dotfiles-linux.git
                break
            ;;
        esac
    done
    cd "$HOME/.dotfiles"
fi

sh scripts/install.sh