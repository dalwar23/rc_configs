# Terraform aliases
abbr -a tf terraform
abbr -a tfi terraform init
abbr -a tfp terraform plan
abbr -a tfv terraform validate
abbr -a tfl terraform fmt
abbr -a tfa terraform apply
abbr -a xtfa terraform apply -auto-approve
abbr -a tfs terraform show
abbr -a tfsl terraform state list
abbr -a tfo terraform output
abbr -a tfd terraform destroy
abbr -a xtfd terraform destroy -auto-approve
abbr -a tfwl terraform workspace list
abbr -a tfws terraform workspace select

# exa aliases
alias ls='exa -1 --icons'
alias ll='exa -a --git --modified --created --group --header --long --icons'

# GitHub CLI
alias issues='gh issue list --search "is:open assignee:ok026"'
alias infra-issues='gh issue list --search "is:open" --label "Infra/Ops :tractor:" --limit 200'
alias p1-issues='gh issue list --search "is:open" --label 'High' --limit 100'
alias prs='gh pr list --search "is:open assignee:ok026"'
alias reviews='gh pr list --search "is:open user-review-requested:@me"'

# Concourse CLI
alias cc='fly'

# misc
alias reload='exec fish'

# Newreleases.io
alias nr='newreleases'
