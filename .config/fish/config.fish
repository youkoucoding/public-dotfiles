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
alias cat bat
alias ls "lsd"
alias la "lsd -A"
alias ll "lsd -lah"
alias g git
alias y yarn
alias vim nvim
alias gs "git status"
alias gl "git log --oneline --graph --decorate=full"
alias gd "git diff --color-words"
alias gc "git commit"
alias ga "git add ."
alias gp "git push"
alias nn "npm"
alias y "yarn"
alias cdcoding "cd $HOME/coding/"
alias cdfrontend "cd $HOME/coding/frontend/"
alias cddotfiles "cd $HOME/coding/miscellaneous/repos/public-dotfiles/"
alias cdblog "cd $HOME/coding/frontend/1_frontend_repos/youkoucoding.github.io/"
alias cdplay "cd $HOME/coding/playground/"
alias code "code ."
alias open "open ."
alias vimfish "nvim $HOME/.config/fish/config.fish"
alias vimpersonal_config "nvim $HOME/Documents/personal_configuration"
alias sourcefish "source $HOME/.config/fish/config.fish"

# golang configuration
set -x GOPATH $HOME/coding/go
set -x GOROOT /usr/local/opt/go/libexec
set -x PATH $PATH:$GOPATH/bin
set -x PATH $PATH:$GOROOT/bin
set PATH $HOME/.cargo/bin $PATH

# starship
starship init fish | source
