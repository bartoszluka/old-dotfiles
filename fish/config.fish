set -U fish_color_autosuggestion      brblack
set -U fish_color_cancel              -r
set -U fish_color_command             brgreen
set -U fish_color_comment             brmagenta
set -U fish_color_cwd                 green
set -U fish_color_cwd_root            red
set -U fish_color_end                 brmagenta
set -U fish_color_error               brred
set -U fish_color_escape              brcyan
set -U fish_color_history_current     --bold
set -U fish_color_host                normal
set -U fish_color_match               --background=brblue
set -U fish_color_normal              normal
set -U fish_color_operator            cyan
set -U fish_color_param               brblue
set -U fish_color_quote               yellow
set -U fish_color_redirection         bryellow
set -U fish_color_search_match        'bryellow' '--background=brblack'
set -U fish_color_selection           'white' '--bold' '--background=brblack'
set -U fish_color_status              red
set -U fish_color_user                brgreen
set -U fish_color_valid_path          --underline
set -U fish_pager_color_completion    normal
set -U fish_pager_color_description   yellow
set -U fish_pager_color_prefix        'white' '--bold' '--underline'
set -U fish_pager_color_progress      'brwhite' '--background=cyan'

# set PATH $PATH:/home/bartek/Scripts

#nvim as editor
set -g EDITOR nvim
set -x MANPAGER "bat"

#vim
abbr -a vim nvim
abbr -a v nvim
#ranger
abbr -a r ranger
#some useful dirs
abbr -a cdala cd ~/.config/alacritty
abbr -a cdc cd ~/.config
abbr -a cdi cd ~/.config/i3
abbr -a cdpb cd ~/.config/polybar
#quiting
abbr -a q exit
abbr -a :q exit

#list
alias ls='exa --color=always --group-directories-first'
# alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'
alias l.="ls -a | egrep '^\.'"

#fix obvious typos
abbr -a cd.. cd ..

abbr -a pdw pwd
abbr -a udpate sudo pacman -Syu
abbr -a upate sudo pacman -Syu
abbr -a updte sudo pacman -Syu
abbr -a updqte sudo pacman -Syu
abbr -a upqll yay -Syu --noconfirm
abbr -a upal yay -Syu --noconfirm

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias rmpacmanlock="sudo rm /var/lib/pacman/db.lck"

#arcolinux logout unlock
alias rmlogoutlock="sudo rm /tmp/arcologout.lock"

#free
alias free="free -mt"

#use all cores
alias uac="sh ~/.bin/main/000*"

#continue download
alias wget="wget -c"

#userlist
alias userlist="cut -d: -f1 /etc/passwd"

#merge new settings
alias merge="xrdb -merge ~/.Xresources"

# Aliases for software managment
# pacman or pm
# alias pacman='sudo pacman --color auto'
# alias update='sudo pacman -Syu'

# alias pacs="sudo pacman -S"
# alias yays="yay -S"
abbr -a pacs sudo pacman -S
abbr -a p sudo pacman -S
abbr -a yays yay -S
abbr -a y yay -S

abbr -a sk screenkey -s small --scr 1
abbr -a skk killall screenkey

# yay as aur helper - updates everything
alias pksyua="yay -Syu --noconfirm"
alias upall="yay -Syu --noconfirm"

# ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

# grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# add new fonts
alias update-fc='sudo fc-cache -fv'

# copy/paste all content of /etc/skel over to home folder - backup of config created - beware
alias skel='cp -Rf ~/.config ~/.config-backup-(date +%Y.%m.%d-%H.%M.%S) && cp -rf /etc/skel/* ~'
# backup contents of /etc/skel to hidden backup folder in home/user
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-(date +%Y.%m.%d-%H.%M.%S)'

# neofetch
# pfetch config
set -gx PF_SOURCE "/home/bartek/.config/pfetch/pfetch.config"
set -g fish_greeting 
# pfetch
