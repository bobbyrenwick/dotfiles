#!/bin/bash
cd "$(dirname "$0")"
git pull
function doIt() {
    rsync -av sublime/ ~/Library/Application Support/Sublime Text 3/Packages/User/
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt
else
    read -p "This may overwrite your existing sublime settings. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt
    fi
fi
unset doIt
