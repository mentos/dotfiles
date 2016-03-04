# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


if [ -s $HOME/.rvm/scripts/rvm ]; then
  export PATH="$PATH:$HOME/.rvm/bin"
  . "$HOME/.rvm/scripts/rvm"
fi

if [ -s $HOME/.nvm ]; then
  export NVM_DIR="$HOME/.nvm"

  if [ "$(uname)" == "Darwin" ]; then
    . $(brew --prefix nvm)/nvm.sh
  else
    export PATH="$PATH:$HOME/.nvm"
    source "$HOME/.nvm/nvm.sh"
    [[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
  fi
fi

if [ -d /usr/local/heroku/bin ]; then
  export PATH="/usr/local/heroku/bin:$PATH"
fi

if [ -n "$BASH_VERSION" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi
