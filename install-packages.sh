#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Git
brew install git

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Change default shell to ZSH
chsh -S /bin/zsh

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Install most-used apps
brew cask install brave-browser
brew cask install firefox
brew cask install visual-studio-code
brew cask install slack
brew cask install figma
brew cask install hyper
brew install broot

# Git Goodies
curl -fsSL git.io/gg.sh | bash

# Set up Hyper
hyper i hyper-font-ligatures hyper-samewd hyper-pane hyper-quit hyper-fading-scrollbar

# Install City Lights Theme
git clone https://github.com/Yummygum/city-lights-syntax-vsc.git ~/.vscode/extensions/city-lights-theme

# Install JetBrains Mono font
https://download.jetbrains.com/fonts/JetBrainsMono-2.001.zip
