#!/bin/bash

# Function to check if Homebrew is installed
check_homebrew() {
  if ! command -v brew &>/dev/null; then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo "Homebrew is already installed."
  fi
}

# Ensure Homebrew is installed
check_homebrew

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Install packages
echo "Installing command-line packages..."

brew install node
brew install git

# Install GUI applications (casks)
echo "Installing GUI applications..."

brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask obs
brew install --cask postman
brew install --cask postman-agent
brew install --cask sublime-text
brew install --cask papers
brew install --cask lastpass
brew install --cask cursor


#---------------double check earlier versions
brew install --cask bartender
brew install --cask keyboard-maestro


# Finished installation
echo "All installations completed successfully!"

