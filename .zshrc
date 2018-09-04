Henry Setup -------------------------------

# ZSH SETUPS -------------------------------

export ZSH="/Users/henry/.oh-my-zsh"

export EDITOR='atom'

CASE_SENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

export UPDATE_ZSH_DAYS="13"

DISABLE_AUTO_TITLE="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

#plugins -------------------------------

plugins=(
git autojump brew brew-cask catimg colored-man colorize compleat copydir copyfile \
dircycle dirhistory emoji-clock encode64 extract github gnu-utils history iwhois jsontools \
lol osx pj postgres profiles rails rake rand-quote rsync safe-paste scd screen  singlechar\
ssh-agent sudo systemadmin taskwarrior themes tmuxinator torrent urltools vim-interaction \
wakeonlan wd web-search xcode z zsh_reload
)

source $ZSH/oh-my-zsh.sh

# User configuration -------------------------------

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='atom'
else
  export EDITOR='atom'
fi

export SSH_KEY_PATH="~/.ssh/rsa_id"

#alias -------------------------------

alias zshconfig="atom ~/.zshrc"
alias ohmyzsh="atom ~/.oh-my-zsh"

# git stuff

alias gs="git status"
alias gd="git diff --patience --ignore-space-change"
alias gc="git checkout"
alias gb="git branch"
alias ga="git add"
alias gh="git hist"
alias gi="git init"

# quick links

alias code="cd ~/Desktop/Code"
alias work="cd ~/Desktop/Work"
alias project="cd ~/Desktop/Code/Projects"
alias test="cd ~/Desktop/Code/Tests"

# startup -------------------------------

precmd() { eval "$PROMPT_COMMAND" }
PROMPT_COMMAND='echo 🔥🔥🔥'

# Terminal Styling -------------------------------

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='\uf0da'
#POWERLEVEL9K_VCS_GIT_ICON='\ue60a'

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
#POWERLEVEL9K_VCS_UNTRACKED_ICON='?'


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon battery dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time background_jobs ram virtualenv rbenv rvm)

POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

#POWERLEVEL9K_CUSTOM_TIME_FORMAT="%D{\uf017 %H:%M:%S}"
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d.%m.%y}"

POWERLEVEL9K_STATUS_VERBOSE=false

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
