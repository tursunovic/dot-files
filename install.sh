# Tools
brew install rg
brew install fd
brew install diff-so-fancy
brew install htop

# Productive key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10
defaults write NSGlobalDomain KeyRepeat -int 1

# Remove delay for dock autohide and animation
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.1
killall Dock
