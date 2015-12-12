#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "$HOME/Applications/Google Chrome.app"
dockutil --no-restart --add "$HOME/Applications/Firefox.app"
dockutil --no-restart --add "$HOME/Applications/Google Chrome Canary.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Calendar.app"
dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "/Applications/FaceTime.app"
dockutil --no-restart --add "/Applications/iTunes.app"
dockutil --no-restart --add "$HOME/Applications/Keka.app"
dockutil --no-restart --add "$HOME/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/System Preferences.app"
dockutil --no-restart --add "/Applications/Utilities/Console.app"

killall Dock
