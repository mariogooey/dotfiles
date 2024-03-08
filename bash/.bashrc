# Git branch in prompt
parse_git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\][\w]\[\033[00m\]\[\033[31m\]$(parse_git_branch) \[\033[35m\]\D{%d/%m/%Y} \t\[\033[00m\]\n└─ \$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:[\w]$(parse_git_branch) \D{%d/%m/%Y} \t\n└─ \$ '
fi
