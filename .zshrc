printf '\n%.0s' {1..100}
unsetopt inc_append_history
unsetopt share_history

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Keybindings
bindkey "[D" backward-word # Alt-Left
bindkey "[C" forward-word # Alt-Right

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH="/Users/bhastings/.oh-my-zsh"

export PATH="/usr/local/bin:$PATH"

# ssh id_rsa
# ssh-add --apple-use-keychain ~/.ssh/id_rsa_oct2023

# bash: Place this in .bashrc or .bash_profile
# function iterm2_print_user_vars() {
  # iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
  # iterm2_set_user_var gitRepo $((git remote show origin 2> /dev/null) | grep "Fetch URL:" | cut -c14-)
# }

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions z)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

EXA_COLORS="da=1;34"

alias ls='ls -F'

# VLC ALias to run videos
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

#screen /dev/tty.usbserial 115200
alias screenbs='screen /dev/tty.usbserial* 115200'

#screen /dev/tty.usbserial 115200
alias whichserial='ls /dev/tty.usb*'

eval "$(/opt/homebrew/bin/brew shellenv)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvmexport NVM_DIR="/Users/bhastings/.nvm"
