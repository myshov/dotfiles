# Install cask packages

apps=(
    alfred
    dropbox
    firefox
    firefox-nightly
    gitup
    google-chrome
    google-chrome-canary
    google-drive
    iterm2
    keka
    keycastr
    macdown
    opera
    sourcetree
    virtualbox
    vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package && qlmanage -r
