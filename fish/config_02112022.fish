# Load aliases
source ~/.config/fish/aliases.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# starship.rs
starship init fish | source

# Pipenv
set -x PIPENV_VENV_IN_PROJECT 1
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

# GPG signing passpharse to tty
set -x GPG_TTY (tty)

# bobthefish theme settings
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g fish_prompt_pwd_dir_length 0
set -g theme_display_k8s_namespace yes
set -g theme_display_k8s_context yes
set -g theme_display_aws_vault_profile yes
set -g theme_display_user yes
# set -g theme_display_hostname yes
set -g fish_prompt_pwd_dir_length 2
set -g theme_project_dir_length 2

# Go
set -g GO11MODULE on
set -g GOROOT /usr/local/go
set -g GOPATH $HOME/go
set -g GOBIN $HOME/go/bin
fish_add_path /usr/local/go $HOME/go $HOME/go/bin

# Proxy
set -g NO_PROXY 127.0.0.1

# LinuxBrew
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
