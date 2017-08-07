#!/bin/zsh
# zsh -l to source it

source /etc/profile
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh # replaces bck-i-search

#source $plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
#HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=default,fg=green,underline'
#HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=default,fg=red,underline'

# source /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
# powerline-daemon -q
# https://powerline.readthedocs.io/en/latest/usage/shell-prompts.html

source /usr/share/zsh/scripts/zplug/init.zsh
# zplug "b4b4r07/enhancd", use:init.sh
# zplug load # --verbose; zplug install
# $ENHANCD_FILTER, fzy

autoload -Uz promptinit
promptinit

zstyle ':completion:*' menu select # requires fzf

autoload -U compinit && compinit
# enable auto-completions
# /usr/share/zsh/site-functions/_*

for file in /etc/zsh/*.zsh; do source $file; done
