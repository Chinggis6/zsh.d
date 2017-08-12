mode=vicmd

# char/word transposition
bindkey -M $mode '^t' transpose-chars
bindkey -M $mode $'\et' transpose-words

# casing
bindkey -M $mode $'\ec' capitalize-word
bindkey -M $mode $'\el' down-case-word
bindkey -M $mode $'\eu' up-case-word

# spelling
bindkey -M $mode $'\es' spell-word

# history expansion
bindkey -M $mode $'\e!' expand-history

#bindkey -M $mode '^p' history-substring-search-up
#bindkey -M $mode '^n' history-substring-search-down
#bindkey -M $mode $'\eu' upcase-word
#bindkey -M $mode $'\el' downcase-word
bindkey -M $mode 'gcc' vi-pound-insert

mode=viins

# char/word transposition
bindkey -M $mode '^t' transpose-chars
bindkey -M $mode $'\et' transpose-words

# casing
bindkey -M $mode $'\ec' capitalize-word
bindkey -M $mode $'\el' down-case-word
bindkey -M $mode $'\eu' up-case-word

# spelling
bindkey -M $mode $'\es' spell-word

# history expansion
bindkey -M $mode $'\e!' expand-history

bindkey -M $mode '^f' forward-char # lags
bindkey -M $mode '^b' backward-char
# with i3 alt as prefix these are rendered impossible
bindkey -M $mode $'\ef' forward-word
bindkey -M $mode $'\eb' backward-word
bindkey -M $mode '^a' beginning-of-line
bindkey -M $mode '^e' end-of-line
bindkey -M $mode '^p' history-search-backward
bindkey -M $mode '^n' history-search-forward
#bindkey -M $mode '^p' history-substring-search-up
#bindkey -M $mode '^n' history-substring-search-down
bindkey -M $mode '^u' kill-whole-line
bindkey -M $mode '^k' kill-line
bindkey -M $mode '^h' backward-delete-char
bindkey -M $mode '^w' backward-kill-word # RL's unix-word-rubout is absent in ZLE

bindkey -M $mode '^r' history-incremental-pattern-search-backward

bindkey -M $mode '^?' self-insert # backspace
bindkey -M $mode '^[[A' self-insert # up
bindkey -M $mode '^[[B' self-insert # down
bindkey -M $mode '^[[C' self-insert # right
bindkey -M $mode '^[[D' self-insert # left

# ---

unset mode
