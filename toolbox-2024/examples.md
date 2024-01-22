# Examples

## Espanso

```
; mac
mac: Deploying the following change to production:

; todo
TODO: jpriest@akamai.com -  (use with todo extension in vscode)
```

base.yml
```
  - trigger: ";mac"
    replace: "mac: Deploying the following change to production:"

  - trigger: ";reinit"
    replace: "@support-staff Reiniting the Admin boxes at XXXX EST to pick up config changes. This will cause a brief interruption to admin. Save any ticket text you're working on during that time."

  - trigger: ";todo"
    replace: "TODO: jpriest@akamai.com - $|$"

  - trigger: ";cmt"
    replace: "// jpriest@akamai.com - {{mydate}}"
    vars:
      - name: mydate
        type: date
        params:
          format: "%m/%d/%Y"
```


## Emmet (build into VSCode)

```
div>ul>li*5
div>(header>ul>li*2>a)+footer>p
```

## Aliases

.bashrc

```
alias dcs='cd ~/www/devenv && docker compose stop && cd -'
alias dcu='cd ~/www/devenv && docker compose up -d lindev apinext login && cd -'
alias website='cd ~/www/devenv/repos/website'
alias gcm='git checkout master'
alias gcp='git checkout -'
```

## CLI

```
tldr fd
tldr rg
(fzf) gco
(fzf) gbd
```

.bash_aliases
```
#################################################
# GIT + FZF helpers                             #
# https://github.com/junegunn/fzf/wiki/examples #
#################################################

# CHECKOUT  gco (git checkout) - will display local branches avail to checkout
gco() {
  local branches branch
  branches=$(git --no-pager branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# DELETE    gbd (git branch -d) - will display local branches avail to delete
gbd() {
  local branches branch
  branches=$(git --no-pager branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git branch -D $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}
```
