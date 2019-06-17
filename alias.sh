# Ag aliases
#alias ag='ag --nogroup --color-match "1;31" --color-line-number "1;35" --color-path "1;34" '


# Awk aliases
alias a1="awk '{print \$1}'"
alias a2="awk '{print \$2}'"
alias a3="awk '{print \$3}'"
alias a4="awk '{print \$4}'"


# Bash aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias l.='ls -d .*'
alias la='ls -A'
alias l='ls -CF'
alias rm='rm -i'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias -- -="cd -"                  # Go to previous dir with -
alias cd.='cd $(readlink -f .)'    # Go to real dir (i.e. if current dir is linked)


# Ctags
alias ctags="ctags -R --c-kinds=+p --fields=+iaS --extra=+q --links=no"


# Date
alias week="date +%V"


# GDrive aliases
alias gdrivemount='google-drive-ocamlfuse /home/cneyton/gdrive'
alias gdriveumount='fusermount -u /home/cneyton/gdrive'


# Git aliases
# Set Git language to English
alias git='LANG=en_GB git'
alias gb='git branch'
alias gba='git branch -a'
alias gbs='for branch in $(git branch -r | grep -v HEAD);do echo -e $(git show --format="%ci" $branch | head -n 1) \\t$branch; done | sort -r'
alias gd='git diff '
alias gdd='git status  -suno'
alias gds='git diff --stat'
alias gsd='gds'
alias gdsm='gds master'
alias gdm='gd master'
alias gdsn='git status  --untracked-files=no'
alias gg='git grep --color=always -n'
alias ggf='git grep --color=always --name-only '
alias ggg='git grep -n --color=always -p -10'
alias ggs='git status -uno'
alias gl='git  log --color --graph --pretty=format:'\''%C(yellow)%h%Creset (%cr) %C(bold blue)%s %C(bold red)%d%C(green)%an%Creset'\'' --abbrev-commit'
alias gla='git log --color --graph --pretty=format:'\''%C(yellow)%h%Creset (%cr) %C(bold blue)%s %C(bold red)%d%C(green)%an%Creset'\'' --abbrev-commit  --branches --all'
alias glb='git log --color --graph --pretty=format:'\''%C(yellow)%h%Creset (%cr) %C(bold blue)%s %C(bold red)%d%C(green)%an%Creset'\'' --abbrev-commit '
alias gll='git log --oneline  --decorate  FETCH_HEAD..HEAD '
alias glm='git log --oneline master..'
alias gvd='git difftool -t vimdiff '
alias gls='git ls-files '
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias grm='git rebase  master'
alias gm='git merge'
alias gru='git remote  update  -p'


# Grep aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias GG='grep -rnIs --color'


# Python scripts
alias colorcat='pygmentize'


# Sed aliases
alias trailwp="sed -i 's/[ \t]*$//'"


# Tree aliases
alias tree="tree -A"
alias treed="tree -d"
alias tree1="tree -d -L 1"
alias tree2="tree -d -L 2"
alias treech='tree -P "*.c|*.h" --prune'
alias treec='tree -P "*.c" --prune'
alias treepy='tree -p "*.py" --prune'


# Xdg-open
alias open='xdg-open'


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# List declared aliases, functions, paths
alias aliases="alias | sed 's/=.*//'"
alias functions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'"
alias paths='echo -e ${PATH//:/\\n}'
