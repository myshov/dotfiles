brew install nvm

nvm install 14.15.0
nvm use 14.15.0
nvm alias default 14.15.0

# Globally install with npm

packages=(
    eslint
    grunt
    gulp
    http-server
    nodemon
    release-it
    spot
    svgo
    tldr
    underscore
    vtop
)

npm install -g "${packages[@]}"
