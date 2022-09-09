brew install bash

grep "/opt/homebrew/bin/bash" /private/etc/shells &>/dev/null || sudo bash -c "echo /opt/homebrew/bin/bash >> /private/etc/shells"
chsh -s /opt/homebrew/bin/bash
