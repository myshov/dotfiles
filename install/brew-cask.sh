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
    visual-studio-code
    vlc
)

brew install "${apps[@]}" --cask
