function __fzf_search_aur
  yay -Slq | fzf --multi --preview yay\ -Si\ {1} | xargs -ro yay -S
end
