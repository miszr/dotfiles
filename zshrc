# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

zstyle :compinstall filename '/home/misz/.zshrc'
zstyle ":completion:*:commands" rehash true
setopt completealiases

source "${HOME}/.antigen/antigen.zsh"

antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
gitfast
gitignore
colored-man-pages
extract
vi-mode
wd
zsh-users/zsh-autosuggestions
zsh-users/zsh-completions src
EOBUNDLES

antigen theme agnoster

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=4"

source ${HOME}/.zsh/aliases.zsh
source ${HOME}/.zsh/mkproj.zsh
