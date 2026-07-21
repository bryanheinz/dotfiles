#!/bin/zsh

defaults="/usr/bin/defaults"


# !Finder defaults
# show Finder's pathbar
$defaults write com.apple.finder ShowPathbar -bool true
# show Finder's status bar
$defaults write com.apple.finder ShowStatusBar -bool true
# show Finders tab bar (10.15+)
$defaults write com.apple.finder \
    NSWindowTabbingShoudShowTabBarKey-com.apple.finder.TBrowserWindow -bool true
# show external drives on the Desktop
$defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
# show internal drives on the Desktop
$defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
# show removable media on the Desktop
$defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
# show server shares on the Desktop
$defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
# set new Finder windows to the user's home folder
$defaults write com.apple.finder NewWindowTarget "PfHm"
# set Finder's default search scope to the current folder
$defaults write com.apple.finder FXDefaultSearchScope "SCcf"
# set Finder's default view to list view
$defaults write com.apple.finder FXPreferredViewStyle "Nlsv"
# list sort by Name
$defaults write com.apple.finder FXArrangeGroupViewBy "Name"
# sort folders first in Finder
$defaults write com.apple.finder _FXSortFoldersFirst -bool true
# sort folders first on the Desktop
$defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true

# !Safari
# disable open "safe" files after downloading
$defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
# always restore session
$defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -bool true
# always show tab bar
$defaults write com.apple.Safari AlwaysShowTabBar -bool true
# don't auto fill credit card
$defaults write com.apple.Safari AutoFillCreditCardData -bool false
# don't auto fill passwords
$defaults write com.apple.Safari AutoFillPasswords -bool false
# disable push notification prompts
$defaults write com.apple.Safari CanPromptForPushNotifications -bool false
# show developer menu
$defaults write com.apple.Safari IncludeDevelopMenu -bool true
# show favorites bar
$defaults write com.apple.Safari ShowFavoritesBar-v2 -bool true
# show status bar
$defaults write com.apple.Safari ShowOverlayStatusBar -bool true

# !Global Preferences
# always show scrollbars (will have to restart to take full affect)
$defaults write $HOME/Library/Preferences/.GlobalPreferences.plist \
    AppleShowScrollBars Always
# dark mode
$defaults write $HOME/Library/Preferences/.GlobalPreferences.plist \
    AppleInterfaceStyle Dark
# use tab to move focus
$defaults write $HOME/Library/Preferences/.GlobalPreferences.plist \
    AppleKeyboardUIMode -int 2
# disable auto capitalization
$defaults write $HOME/Library/Preferences/.GlobalPreferences.plist \
    NSAutomaticCapitalizationEnabled -bool false
# disable auto dash substitutes
$defaults write $HOME/Library/Preferences/.GlobalPreferences.plist \
    NSAutomaticDashSubstitutionEnabled -bool false
# disable auto period substitutes
$defaults write $HOME/Library/Preferences/.GlobalPreferences.plist \
    NSAutomaticPeriodSubstitutionEnabled -bool false
# disable auto quote substitutes
$defaults write $HOME/Library/Preferences/.GlobalPreferences.plist \
    NSAutomaticQuoteSubstitutionEnabled -bool false
# disable auto spelling corrections
$defaults write $HOME/Library/Preferences/.GlobalPreferences.plist \
    NSAutomaticSpellingCorrectionEnabled -bool false

# !Universal Access
# show proxy icons (12+)
$defaults write com.apple.universalaccess showWindowTitlebarIcons -bool true

echo "A reboot is recommended."
