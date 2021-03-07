function __fzf_search_aur
  yay -Slq | fzf --preview yay\ -Si\ {1} | xargs -rot yay -S
  # yay -Slq | fzf --multi --preview yay\ -Si\ {1} | xargs -rot yay -S
end
