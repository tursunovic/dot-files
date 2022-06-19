# Tools
brew install rg
brew install fd
brew install diff-so-fancy
brew install htop
brew install tree

# Productive key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10
defaults write NSGlobalDomain KeyRepeat -int 1

# Remove delay for dock autohide and animation
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.1
killall Dock

# Keybindings for Rectangle app
defaults write com.knollsoft.Rectangle rightHalf '{ keyCode = 124; modifierFlags = 393216; }'
defaults write com.knollsoft.Rectangle leftHalf '{ keyCode = 123; modifierFlags = 393216; }'
defaults write com.knollsoft.Rectangle lastTwoThirds '{ keyCode = 124; modifierFlags = 917504; }'
defaults write com.knollsoft.Rectangle firstThird '{ keyCode = 123; modifierFlags = 917504; }'
