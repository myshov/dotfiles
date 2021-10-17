brew install volta

volta install node
volta install npm
# TODO: check if it works without starting of a new shell
. ~/.bash_profile

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
