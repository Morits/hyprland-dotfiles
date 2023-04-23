# Aliases
alias q='exit'
alias ..='cd ..'
alias l='ls -lah --color=auto'
alias t='tree'
alias rm='rm -v'
alias open='xdg-open'

alias gs='git status'
alias gd='git diff * | bat'
alias gl='git log --stat --graph --decorate --oneline'

alias pu='sudo pacman -Syu'
alias pi='sudo pacman -S'
alias pr='sudo pacman -Rsu'
alias pq='sudo pacman -Qe'
alias autoclean='sudo pacman -Qtdq | sudo pacman -Rns -'

alias b='bat'
alias rr='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias z='zathura'
alias yt-dlp="yt-dlp -f 'bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/mp4'"

# System aliases
#alias standby='xset dpms force standby' 

# Colored output
#alias ls='ls -laGH --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'

# Colored pagers
export LESS='-R --use-color -Dd+r$Du+b'
export MANPAGER='less -R --use-color -Dd+r -Du+b'
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Setting Default Editor
#export EDITOR='nvim'
#export VISUAL='nvim'

# File to store ZSH history
export HISTFILE=~/.zsh_history

# Number of commands loaded into memory from HISTFILE
export HISTSIZE=1000

# Maximum number of commands stores in HISTFILE
export SAVEHIST=10000

# Setting default Ranger RC to false to avoid loading it twice
export RANGER_LOAD_DEFAULT_RC='false'

# Loading ZSH modules
autoload -Uz compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
zstyle ':completion:*' rehash true                      # Rehash so compinit can automatically find new executables in $PATH
zstyle ':vcs_info:git:*' formats 'on %F{red} %b%f '    # Set up Git Branch Details into Prompt

compinit
_comp_options+=(globdots)

# Load Version Control System into Prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Prompt Appearance
setopt PROMPT_SUBST
PROMPT='%B%F{green}[%n%f@%F{green}%m]%f %F{blue} %1~%f%b ${vcs_info_msg_0_}> '

# XDG user dirs
#source ~/.config/user-dirs.dirs

# Keybindings for FZF
#source /usr/share/fzf/key-bindings.zsh
#source /usr/share/fzf/completion.zsh

# ZSH Autosuggestions
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH Syntax Highlighting - must be at the end of .zshrc!
#source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
