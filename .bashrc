# Interactive operation...
alias ls='ls -G'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi=vim
alias l='ls -la'
alias screen='screen -U'
if [ -x /usr/bin/screen ]; then
   alias sc='screen -h 4000'
   alias scr='screen -r'
   alias scl='screen -ls'
   alias scd='screen -d'
   alias scx='screen -x'
fi
