#!/usr/bin/env bash

# zsh 설치
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# brew 확인 및 없을시 설치
if ! which brew
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo "alias code=\"/Applications/Visual\\ Studio\\ Code.app/Contents/Resources/app/bin/code\""
fi

read -r -s -p "[sudo] sudo password for $(whoami):" pass

cd $HOME/.jaehong

# 번들 설치
brew bundle --file=./Brewfile

# 서브모듈 설치
git submodule init
git submodule update

# [vim plugin] pathogen 설치
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# [vim theme] dracula 설정
mkdir -p $HOME/.vim/pack/themes/start
cd $HOME/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula
cd $HOME/.jaehong

# vim 설정
cp .vimrc ../.vimrc

# [zsh theme] geometry 설치
echo "source geometry/geometry.zsh" >> ~/.zshrc
echo "source ~/.jaehong/shell/main.sh" >> ~/.zshrc

printf '\n\n🎉 Congrat! Your mac has been set up successfully for working with PlusTV Team!\n'

