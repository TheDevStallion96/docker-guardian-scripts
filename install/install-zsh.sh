#!/bin/bash

# Check if Zsh is already installed
if ! [ -x "$(command -v zsh)" ]; then
    echo "Zsh is not installed. Installing Zsh..."
    sudo apt update
    sudo apt install -y zsh
fi

# Check if Oh-My-Zsh is already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh-My-Zsh is not installed. Installing Oh-My-Zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Change the default shell to Zsh
if [ "$SHELL" != "/usr/bin/zsh" ]; then
    echo "Changing the default shell to Zsh..."
    chsh -s /usr/bin/zsh
fi

# Print a message to restart the shell
echo "Zsh and Oh-My-Zsh are installed. Please restart your shell session."
