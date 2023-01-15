# install oh my zsh
export ZSH="$HOME/.oh-my-zsh"

# configure git
# git config --global user.email "you@example.com"
# git config --global user.name "Your Name"



if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
  # ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
  ZSH_THEME="spaceship"
fi



# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
plugins=(
  git
  zsh-autosuggestions # suggests commands as you type based on history and completions.
  zsh-syntax-highlighting
  zsh-z #  jump quickly to directories that you have visited frequently
)

source $ZSH/oh-my-zsh.sh

# -------------------------------- #  
# System level Changes Package Manager
# -------------------------------- #

alias ls='ls -al' # have ls have the directory colors (G) and hidden dirs 'a'
alias rmd='rm -rf' # remove directory
alias rmdir='rm -rf' # remove directory

# Fix issue where `ls` didn't have colors - https://github.com/spaceship-prompt/spaceship-prompt/issues/436
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi