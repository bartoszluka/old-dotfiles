function __fzf_search_local
  yay -Q | cut -d' ' -f 1 | fzf --preview yay\ -Qi\ {1} | xargs -r yay -Rns 
end
