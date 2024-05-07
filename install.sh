##### DO NOT RUN, THIS IS FOR REFERENCE CURRENTLY #####
# ssh-keygen -t rsa -b 4096 -C email@aol.com

#install xcode
xcode-select --install

#dark mode
# defaults write /Library/Preferences/.GlobalPreferences.plist _HIEnableThemeSwitchHotKey -bool true

# We want to be able to see all the files in our folder!
defaults write com.apple.finder AppleShowAllFiles YES.

# I don't like anything to show on my dock/taskbar besides things that are running.
defaults write com.apple.dock static-only -bool TRUE; killall Dock

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable transparency in the menu bar and elsewhere on Yosemite
# doesn’t work
defaults write com.apple.universalaccess reduceTransparency -bool true

# Set highlight color to green
# defaults write NSGlobalDomain AppleHighlightColor -string "0.216 0.255 0.227"

# Set highlight color to blue
defaults write NSGlobalDomain AppleHighlightColor -string "0.179 0.212 0.255"

# Would be great if we were admins
# Disable Notification Center and remove the menu bar icon
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null


# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Dont show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool false

# setting for vim emulation on VS Code
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Restart dock
killall Dock

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install homebrew (assume user is admin)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install zsh-completions

# Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
# to load these completions, you may need to run this:
#   chmod go-w '/usr/local/share'

#install zsh
brew install zsh-syntax-highlighting

brew install skhd

# https://github.com/koekeishiya/yabai
brew install yabai 

# alternative, but never tried https://github.com/ianyh/Amethyst

#possible way to display
osascript -e 'tell app "System Events" to display dialog "Your computer is ready :)"'

# check which shell is default
$SHELL --version

# To activate these completions, add the following to your .zshrc:
#   fpath=(/usr/local/share/zsh-completions $fpath)

# You may also need to force rebuild `zcompdump`:
#   rm -f ~/.zcompdump; compinit


# probably would want to zsh stuff later
# tower/sublime/codekit/1password

brew install cask

# i <3 cask 
brew install --cask slack

brew install --cask iterm2

brew install --cask sublime-text 

brew install --cask spotify

brew install --cask sequel-pro

brew install --cask codekit

brew install --cask flux

brew install --cask dropbox

# hide things on your taskbar!
# https://github.com/dwarvesf/hidden
brew install --cask hiddenbar
