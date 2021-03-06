# ZSH RC File
# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# export FZF_DEFAULT_COMMAND='ag --ignore *.class -g ""'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export RUST_SRC_PATH="/Users/david/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PATH="$PATH:/opt/local/bin"

# History
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=900000
setopt SHARE_HISTORY

bindkey "^[[F" end-of-line
bindkey "^[[H" beginning-of-line
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^N' forward-word
bindkey '^P' backward-word
source ~/.zprezto/init.zsh

#----------------------------------------------------------------------#
# Autocompletion and prompt
#----------------------------------------------------------------------#

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select

alias lsmp3='ls -1 --indicator-style=none *.mp3'
alias lsepub='ls -1 -R --indicator-style=none | grep epub'
# export GREP_COLOR="1;31"
# alias grep='grep --color=auto'
export LESS="-R"
alias c='cd'
alias l='ls'

alias vim='nvim'
alias vi='nvim'
alias tmux="TERM=screen-256color-bce tmux"
set term=screen-256color

alias julia='JULIA_NUM_THREADS=4 julia'


# Ruby
# export GEM_HOME=$HOME/gems
export PATH=$HOME/.gem/ruby/2.5.0/bin:$PATH

#----------------------------------------------------------------------#
# PATH
#----------------------------------------------------------------------#
export PATH="$PATH:$HOME/bin"
export TMOUT=0
export VISUAL="nvim"
export EDITOR="$VISUAL"

#----------------------------------------------------------------------#
# Alias
#----------------------------------------------------------------------#

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias h='history'
alias v='vi'
alias gv='gvim'
alias j="jobs -l"
alias psl='ps -aux | less'
alias ..='cd ..'
alias 'cd..'='cd ..'

# Git
alias gia="git add"
alias gcm="git commit -a -m"
alias gp="git push"
alias gs="git status"

# History Search

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey "${key[Down]}" down-line-or-beginning-search

# Python Virtualenvs
export WORKON_HOME=~/Envs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

# FZF

# fh - repeat history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//') }
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/david/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/david/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/david/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/david/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/llvm/bin:$PATH"
