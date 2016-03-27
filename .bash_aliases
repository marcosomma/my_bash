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
alias lsd='ls -ald */'
alias lsh='ls -ald * .*'
alias gpm='git pull --rebase && npm install && npm test && git push origin master'
