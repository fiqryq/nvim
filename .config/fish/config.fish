set fish_greeting "welcome sir! happy hacking!"

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias . "nvim ."

# git aliases
alias g git
alias ga "git add ."
alias gcm "git commit -m"
alias gpo "git push origin"
alias gco "git checkout"
alias clone "git clone"

# go alias
alias gr "go run"
alias gb "go build"

# yarn aliases
alias yd "yarn run dev"
alias yi "yarn install"
alias yad "yarn add"

# pnpm alias
alias pi "pnpm install"
alias pd "pnpm run dev"
alias ps "pnpm run start"
alias pt "pnpm run test"

# vm alias
alias vm "ssh vm"

# create react app
alias cra "npx create-next-app --example https://github.com/fiqryq/next-boilerplate"

alias ide "tmux split-window -v -p 30" 

command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

# pnpm
set -gx PNPM_HOME "/Users/fiqrychoerudin/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH