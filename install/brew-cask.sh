# Install cask packages

apps=(
    alfred
    dropbox
    firefox
    gitup
    google-chrome
    iterm2
    keka
    keycastr
    macdown
    opera
    virtualbox
    vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package && qlmanage -r
