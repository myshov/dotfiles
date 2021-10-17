brew install volta

volta install node
volta install npm

# Globally install with npm

packages=(
    eslint
    http-server
    nodemon
    release-it
    spot
    svgo
    tldr
    vtop
)

npm install -g "${packages[@]}"
