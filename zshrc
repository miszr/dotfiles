# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

zstyle :compinstall filename '${HOME}/.zshrc'
zstyle ":completion:*:commands" rehash true
setopt completealiases

source "${HOME}/.antigen/antigen.zsh"

antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
gitfast
gitignore
git-extras
colored-man-pages
extract
vi-mode
wd
sudo
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-autosuggestions
EOBUNDLES

antigen theme agnoster
antigen apply

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=4"

source ${HOME}/.zsh/custom.zsh
