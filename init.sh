#!/usr/bin/env bash

if ! which brew
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

read -r -s -p "[sudo] sudo password for $(whoami):" pass

brew bundle --file=./Brewfile

printf '\n\n🎉 Congrat! Your mac has been set up successfully for working with PlusTV Team!\n'

