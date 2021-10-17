# .files

These are my dotfiles. Take anything you want, but at your own risk.

It targets OS X systems, but since it has some defensive checks it should work on *nix as well (tested on a few Linux boxes).

(Based on https://github.com/webpro/dotfiles)

## Package overview

* Core
    * Bash + [coreutils](http://en.wikipedia.org/wiki/GNU_Core_Utilities) + bash-completion
    * [Homebrew](http://brew.sh/)
    * Node.js + npm (via Volta)
    * GNU [sed](http://www.gnu.org/software/sed/), [grep](https://www.gnu.org/software/grep/), [Wget](https://www.gnu.org/software/wget/)
    * [fasd](https://github.com/clvv/fasd), [psgrep](https://github.com/jvz/psgrep/blob/master/psgrep), [pgrep](http://linux.die.net/man/1/pgrep), [spot](https://github.com/guille/spot), [tree](http://mama.indstate.edu/users/ice/tree/), [vtop](https://github.com/MrRio/vtop)
    * Git + [GitUp](https://gitup.co/) + [hub](http://hub.github.com/), Subversion
    * Python 3
* Dev (FE/JS/JSON): [http-server](https://github.com/nodeapps/http-server), [jq](http://stedolan.github.io/jq/), [nodemon](http://nodemon.io), [peco](http://peco.github.io), [underscore-cli](https://github.com/ddopson/underscore-cli)
* Graphics: [ffmpeg](https://www.ffmpeg.org), [gifsicle](http://www.lcdf.org/gifsicle), [imagemagick](http://www.imagemagick.org), [svgo](https://github.com/svg/svgo)
* OS X: [dockutil](https://github.com/kcrawford/dockutil), [Mjolnir](https://github.com/sdegutis/mjolnir), [Mackup](https://github.com/lra/mackup)

## Install

On a sparkling fresh installation of OS X:

    sudo softwareupdate -i -a
    xcode-select --install

Install the dotfiles with either Git or curl:

### Clone with Git

    git clone git@github.com:myshov/dotfiles.git
    source dotfiles/install.sh

### Remotely install using curl

Alternatively, you can install this into `~/.dotfiles` remotely without Git using curl:

    sh -c "`curl -fsSL https://raw.github.com/webpro/dotfiles/master/remote-install.sh`"

Or, using wget:

    sh -c "`wget -O - --no-check-certificate https://raw.githubusercontent.com/webpro/dotfiles/master/remote-install.sh`"

## The `dotfiles` command

    $ dotfiles help
    Usage: dotfiles <command>
    
    Commands:
       help               This help message
       edit               Open dotfiles in default editor (subl) and Git GUI (stree)
       reload             Reload dotfiles
       update             Update packages and pkg managers: OS X Applications, Homebrew/Cask, npm, Ruby, and pip
       osx                Apply OS X system defaults
       dock               Apply OS X Dock settings
       install mjolnir    Install Mjolnir (Homebrew/Luarocks)
       install vundle     Install Vundle

## Customize/extend

You can put your custom settings, such as Git credentials in the `system/.custom` file which will be sourced from `.bash_profile` automatically. This file is in `.gitignore`.

Alternatively, you can have an additional, personal dotfiles repo at `~/.extra`.

* The runcom `.bash_profile` sources all `~/.extra/runcom/*.sh` files.
* The installer (`install.sh`) will run `~/.extra/install.sh`.

## Additional resources

* [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
* [Homebrew](http://brew.sh/) / [FAQ](https://github.com/Homebrew/homebrew/wiki/FAQ)
* [homebrew-cask](http://caskroom.io/) / [usage](https://github.com/phinze/homebrew-cask/blob/master/USAGE.md)
* [Bash prompt](http://wiki.archlinux.org/index.php/Color_Bash_Prompt)
* [Solarized Color Theme for GNU ls](https://github.com/seebi/dircolors-solarized)

## Credits

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and the creators of the incredibly useful tools.
