# if status is-interactive
    # Commands to run in interactive sessions can go here
# end
set fish_greeting ""
set default_user "youkou"
fish_add_path /usr/local/opt/openjdk/bin

set -gx TERM xterm-256color
set -gx EDITOR nvim
set -gx SHELL /usr/local/bin/fish

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "lsd"
alias la "lsd -A"
alias ll "lsd -lh"
alias lla "lsd -lah"
alias lt 'du -sh * | sort -h'
alias grep 'grep --color=auto'
alias egrep 'egrep --color=auto'
alias fgrep 'fgrep --color=auto'
alias h 'history'
alias j 'jobs -l'
alias mv 'mv -i'
alias cp 'cp -i'
alias ln 'ln -i'
alias g git
alias vim nvim
alias gs "git status"
alias gl "git log --oneline --graph --decorate=full"
alias glc "git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ad)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all --decorate=full"
alias gd "git diff --color-words"
alias gad "git diff --staged --color-words"
alias gc "git commit"
alias ga "git add ."
alias gp "git push"
alias startgit "cd (git rev-parse --show-toplevel) && git checkout main && git pull"
alias nn "npm"
alias y "yarn"
alias p "pnpm"
alias ".." "cd ../" 
alias "..." "cd ../../" 
alias z zellij 
alias tf terraform 
alias lv lvim

alias code "code ."
alias open "open ."
alias vimfish "nvim $HOME/.config/fish/config.fish"
alias vimpersonal_config "nvim $HOME/Documents/personal_configuration"
alias sourcefish "source $HOME/.config/fish/config.fish"

# get web servers headers
alias header "curl -I"
# find out if remote server supports gzip / mod_deflate or not
alias headerc 'curl -I --compressed'

# docker
alias dkrmi "docker rmi"
alias dk "docker images"

# work mac
alias cdwork "cd $HOME/workspace"

# golang configuration
set -x GOPATH $HOME/coding/go
set -x GOROOT /usr/local/opt/go/libexec
set -x PATH $PATH:$GOPATH/bin
set -x PATH $PATH:$GOROOT/bin
set -x PATH $HOME/.local/bin/ $PATH
set PATH $HOME/.cargo/bin $PATH

# starship
starship init fish | source
