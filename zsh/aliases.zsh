alias v="nvim"
alias c="code"
alias ls="eza"
alias py="python"
alias gitgraph="git log --all --decorate --oneline --graph"
alias kanata_enable="sudo kanata_macos_arm64 --cfg ~/dots/kanata/config.kbd"
alias gg="lazygit"

zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 } # https://www.reddit.com/r/zsh/comments/wtagya/how_to_save_in_history_only_commands_that_were/

gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;}

fd() {
    cd $(find ~/workspace -maxdepth 5 -type d \
        -not -path '*/\.*' \
        -not -path '*/node_modules/*' \
        -print | fzf)
}
