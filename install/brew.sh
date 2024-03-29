# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

# Install packages

apps=(
    ag
    # bash-completion2
    cmake
    coreutils
    dockutil
    ffmpeg
    fasd
    gifsicle
    git
    gnu-sed
    grep
    hub
    httpie
    imagemagick
    jq
    mackup
    peco
    psgrep
    python
    shellcheck
    ssh-copy-id
    svn
    tmux
    tree
    neovim
    volta
    wget
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
