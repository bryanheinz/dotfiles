#!/bin/zsh

create_link () {
    # $1==src, $2==dst
    if [[ -L "$2" ]]; then
        # a link already exists, re-link
        echo "re-linking ${2:t}"
        rm "$2"
        ln -s "$1" "$2"
    elif [[ -e "$2" ]]; then
        # a file exists, but isn't a link
        # backup existing file and link
        backupFN="${2}-$(date +%s)"
        echo "found existing config, backing up ${backupFN} and creating link: ${2:t}"
        mv "$2" "${backupFN}"
        ln -s "$1" "$2"
    else
        # no file or link exists
        echo "linking ${2:t}"
        ln -s "$1" "$2"
    fi
}

create_link ~/.files/_configs/editorconfig ~/.editorconfig
create_link ~/.files/_configs/gitconfig ~/.gitconfig
create_link ~/.files/_configs/logrc ~/.logrc
create_link ~/.files/_configs/pylintrc ~/.pylintrc
create_link ~/.files/_configs/tmux.conf ~/.tmux.conf
