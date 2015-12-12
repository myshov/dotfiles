# Uninstall packages

apps=(
    alfred
    dropbox
    filezilla
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
    sublime-text3
    sourcetree
    virtualbox
    vlc
)

brew cask uninstall "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask uninstall qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package && qlmanage -r

# Uninstall Caskroom

brew untap caskroom/cask
brew untap caskroom/versions
brew uninstall brew-cask
