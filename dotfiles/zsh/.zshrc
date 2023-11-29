# aliases
alias ls="lsd"
alias la="lsd -A"
alias ll="lsd -lh"
alias lla="lsd -lah"
alias lt='du -sh * | sort -h'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias h='history'
alias j='jobs -l'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias g=git
alias vim=nvim
alias gs="git status"
alias gl="git log --oneline --graph --decorate=full"
alias glc="git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ad)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all --decorate
=full"
alias gd="git diff --color-words"
alias gad="git diff --staged --color-words"
alias gc="git commit -m"
alias gcamend="git commit --amend -m"
alias gcamendnoedit="git commit --amend --no-edit"
alias ga="git add ."
alias gp="git push"
alias startgit="cd (git rev-parse --show-toplevel) && git checkout main && git pull"
alias y="yarn"
alias p="pnpm"
alias ".."="cd ../"
alias "..."="cd ../../"
alias z=zellij
alias tf=terraform
alias lv=lvim
alias cdcode="cd $HOME/code"
alias cdwork="cd $HOME/workspace"
alias code="code ."
alias open="open ."
alias dk="docker images"
alias dkrmi="docker rmi"

# get web servers headers
alias header="curl -I"
# find out if remote server supports gzip / mod_deflate or not
alias headerc="curl -I --compressed"

# path of lunar vim
export PATH="/Users/user/.local/bin:$PATH"

# auto completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
