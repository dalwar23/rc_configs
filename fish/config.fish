# Load aliases
source ~/.config/fish/alias.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# starship.rs
# starship init fish | source

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
set -g theme_display_user yes
# set -g theme_display_hostname yes

# node 14
fish_add_path /usr/local/opt/node@14/bin

# mysql client
fish_add_path /usr/local/opt/mysql-client/bin
set -gx PKG_CONFIG_PATH "/usr/local/opt/mysql-client/lib/pkgconfig"
set -gx LDFLAGS "-L/usr/local/opt/mysql-client/lib"
set -gx CPPFLAGS "-I/usr/local/opt/mysql-client/include"
