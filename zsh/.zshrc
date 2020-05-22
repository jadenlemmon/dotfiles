# Path to your oh-my-zsh installation.
export ZSH="/Users/jadenlemmon/.oh-my-zsh"

ZSH_THEME="af-magic"

plugins=(git jsontools)

source $ZSH/oh-my-zsh.sh

alias co='cd ~/Code'
alias acg='cd ~/Code/ACG'
alias voyage='cd ~/Code/Voyage'
alias heydoc='cd ~/Code/HeyDoctor'
alias dotfiles='cd ~/Code/Jaden/dotfiles'
alias zsh='vim ~/Code/Jaden/dotfiles/zsh/.zshrc'

export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export AUTOENV_ENABLE_LEAVE="true"

# Handler lib
export PATH=$PATH:$HOME/Code/Jaden/handler/bin
alias hc='handler'
alias handler='handler'

# This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Run 'nvm use' automatically every time there's
# a .nvmrc file in the directory. Also, revert to default
# version when entering a directory without .nvmrc
enter_directory() {
if [[ $PWD == $PREV_PWD ]]; then
    return
fi

PREV_PWD=$PWD
if [[ -f ".nvmrc" ]]; then
    nvm use
    NVM_DIRTY=true
elif [[ $NVM_DIRTY = true ]]; then
    nvm use default
    NVM_DIRTY=false
fi
}

export AWS_REGION=us-west-2
export AUTOENV_ENV_FILENAME=.env.auto
export AUTOENV_ASSUME_YES=1

export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH="/Users/jadenlemmon/Library/Python/3.8/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# https://github.com/inishchith/autoenv/issues/188
# make sure this hack is there
source /usr/local/opt/autoenv/activate.sh

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

unsetopt inc_append_history
unsetopt share_history
