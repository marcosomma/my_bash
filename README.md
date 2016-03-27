# MY_BASH
A collection of my bash aliases, scripts (git-blame and git-initializer) and command-power-line

## aliases
`.bash_aliases`
``` bash
#!/bin/bash
# DOCKER
alias buildDocker='docker build .'
alias runDocker='docker run -d'
alias listDockers='docker ps'
alias removeAllDockers='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# PYTHON
alias py='python'

# GIT
alias g='git'
alias gs='git status'
alias g-add='git add'
alias g-diff='git diff --word-diff="color"'
alias g-diff-master='g-diff master '
alias g-push='git push'
alias g-pull='git pull'
alias g-clone='git clone'
alias g-commit='git commit'
alias g-checkout='git checkout'
alias g-branch='git branch -r'
alias g-marge='git merge'
alias g-blame='git-blame'
alias g-showall='git show-branch --all --color -v'
alias g-show="git for-each-ref --sort='-committerdate' --format='%(color:green)%(authordate)%09>> %(color:blue) %(refname)' refs/heads | sed -e 's-refs/heads/--'"
alias gg='git log --oneline --all --graph --decorate --color --pretty=format:"%C(auto)%d%h %C(bold)>>%Creset%Cblue %ar %Creset%C(bold):%Creset [%Cred%an%Creset : %Cgreen\"%s\"%Creset]"'

# PATH
alias ..='cd ..'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias desktop='cd ~/Desktop'
alias workspace='documents && cd workspace && ls -l'
alias personal='documents && cd personal && ls -l'

# UselfullCommand
alias sshKeyShow='cat ~/.ssh/id_rsa.pub'
alias lsd='ls -ald */'
alias lsh='ls -ald * .*'
alias gpm='git pull --rebase && npm install && npm test && git push origin master'
```

## scripts
`.bash_scripts`
``` bash
#!/bin/bash
git-blame() {
  ruby ~/scripts/git-blame-colored $1 | less -R
}

git-initialize() {
  ~/scripts/git-initializer $1
}
```

## command-power-line
`.bash_powerline`
``` bash
#!/bin/bash
parse_git_branch() {
    if [ -d .git ]; then
        printf '\033[0m \033[38;5;32m' && git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
    fi;
}

export PROMPT_COMMAND='export OLD_STATUS=$?'
export PROMPT_FEEDBACK="\`if [ \$OLD_STATUS = 0 ]; then echo '\[\e[32m\]' ; else echo '\[\e[31m\]' ; fi\`"
export PROMPT_HOME='\[\033[1;0m\]\[\033[1;38;5;24m\][\u]'
export PROMPT_PATH='\[\033[0m\] \[\033[38;5;6m\]\w'
export PROMPT_PS='$ \[\033[38;5;15m\]'
export PROMPT_NEW_LINE='\n'

export PS1="$PROMPT_HOME$PROMPT_PATH\$(parse_git_branch)$PROMPT_NEW_LINE$PROMPT_FEEDBACK$PROMPT_PS"

```
#### The Font

 It's based on the [Awesome-Terminal-Fonts](https://github.com/gabrielelana/awesome-terminal-fonts) by [@gabrielelana](https://github.com/gabrielelana)

---
### Change Log

#### HEAD

##### 1.0 (27 - 03 - 2016)

 * Initial release.

##### feature...

 * added sshKeyShow alias >> show your ssh public key
