alias find="fd"
alias keycodes="xmodmap -pke"
alias c='cd "$(fd --type d --hidden --follow --exclude .git | fzf)"'
alias p='cd "$(ls ~/code/*/project/* -d | fzf)"'
alias e="fd --type f --hidden --follow --exclude .git | fzf --preview 'bat --style=plain --color=always {}' | xargs -r nvim"
alias cdc="cd ~/code"
alias cdd="cd ~/download"
alias cdi="cd ~/image"
alias cdv="cd ~/video"
alias cdr="cd ~/.myrice"
alias cdm="cd ~/music"
alias cdm="cd ~/music"
alias cdg='cd "$(git rev-parse --show-toplevel)"'
alias update_pacman_mirrorlist="sudo reflector --sort rate --save /etc/pacman.d/mirrorlist -c br && sudo pacman -Sy"
alias list_installed_fonts="fc-list"
alias get_sound_volume="pactl get-sink-volume @DEFAULT_SINK@ | grep Volume | awk '{print $5}' | tr '%' ' '"
alias increase_sound_volume="pactl set-sink-volume @DEFAULT_SINK@ +5%"
alias decrease_sound_volume="pactl set-sink-volume @DEFAULT_SINK@ -5%"
