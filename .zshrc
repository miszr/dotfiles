HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=10000

setopt appendhistory autocd extendedglob notify
setopt promptsubst
setopt noflowcontrol

zstyle :compinstall filename '/home/misz/.zshrc'
zstyle ":completion:*:commands" rehash true

autoload -Uz compinit && compinit
autoload -U colors && colors

alias ls='ls --color=auto --human-readable --classify'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias chmod="chmod -c"
alias chown="chown -c"

STD_PROMPT='[%n@%m %~]'

export PATH=$PATH:/home/misz/.gem/ruby/2.0.0/bin/
export EDITOR='vim'

bindkey -v # You can't stop here, you're in Vim country!...
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

gitCheck() {
   git status &> /dev/null && gitBranch="$(git branch | grep "*" | cut -d ' ' -f 2)" || gitBranch=""
   if [ ! -z $gitBranch ]; then
      if [ ! -z "$(git status --porcelain 2>/dev/null)" ]; then
         gitStatus="Changed"
      else
         gitStatus=""
      fi
   fi


}

setPrompt() {
   gitCheck

   PROMPT=$STD_PROMPT
   if [ ! -z $gitBranch ]; then
      if [ -z $gitStatus ]; then
         PROMPT=$PROMPT'[${fg_bold[green]}'
      else
         PROMPT=$PROMPT'[${fg_bold[yellow]}'
      fi
      PROMPT=$PROMPT'${gitBranch}${reset_color}]'
   fi
   PROMPT=$PROMPT'$ '
}

precmd() {
   setPrompt
}

setPrompt
