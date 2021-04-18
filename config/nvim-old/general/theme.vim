hi Comment cterm=italic
let g:nvcode_termcolors=256

syntax on
" colorscheme nord
" colorscheme nvcode
" colorscheme onedark
" colorscheme TSnazzy
" colorscheme aurora
colorscheme palenight


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" Change this when you know where i3 will be
au BufNewFile,BufRead ~/.config/zathura/zathurarc set filetype=zathurarc
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
