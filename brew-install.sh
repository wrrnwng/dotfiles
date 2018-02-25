#!/bin/bash

echo Install XCode from the AppStore
read -p "Press any key to continue... " -n1 -s
echo '\n'

if test ! $(which brew); then
    usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

BT="brew tap"
$BT caskroom/cask
$BT caskroom/fonts
$BT d12frosted/emacs-plus
$BT homebrew/science

PACKAGES=(
    emacs-plus
    python
    python3
    r
    watchman
    yarn
)

brew install ${PACKAGES[@]}

CASKS=(
    anaconda
    anki
    alfred
    android-studio
    calibre
    discord
    docker
    dropbox
    firefox
    font-source-code-pro
    google-chrome
    iterm2
    java
    rstudio
    slack
    spectacle
    thunderbird
    visual-studio-code
    1password
    1password-cli
)

brew cask install ${CASKS[@]}

brew linkapps emacs-plus
