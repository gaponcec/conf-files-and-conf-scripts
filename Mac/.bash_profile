export GOPATH=/Users/gaponcec/projects
export PATH=$PATH:$GOPATH/bin
export CLICOLOR=1
export LSCOLORS=ExGxcxdxCxegedabagacad
export EDITOR=vim
set -o vi
alias vi=vim
alias ls='ls -Gh'
alias grep='grep --color=auto'
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'

####GIT PROMPT#######
export GIT_PROMPT_ONLY_IN_REPO=1 # Use the default prompt when not in a git repo.
export GIT_PROMPT_FETCH_REMOTE_STATUS=0 # Avoid fetching remote status
export GIT_PROMPT_SHOW_UPSTREAM=0 # Don't display upstream tracking branch
export GIT_SHOW_UNTRACKED_FILES=no # Don't count untracked files (no, normal, all)
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
	GIT_PROMPT_THEME=Default
	source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi
GIT_PROMPT="{PathShort}{Branch}{Remote}{Modified}{Staged}{Clean}"
source ~/.git-prompt-colors.sh 2> /dev/null

####BASH AUTOCOMPLETE#######
[[ -f "$(brew --prefix)/etc/bash_completion" ]] && source "$(brew --prefix)/etc/bash_completion"
PATH=$PATH:/Users/gaponcec/bin
#PATH="/usr/local/opt/node@6/bin:$PATH"

####NVM
#export NVM_DIR="$HOME/.nvm"
#. "$(brew --prefix nvm)/nvm.sh"

####SQLite
#export PATH="/usr/local/opt/sqlite/bin:$PATH"

####GO
#export PATH=$PATH:/usr/local/opt/go/libexec/bin

#export PATH="/usr/local/opt/icu4c/bin:$PATH"
#export PATH="/usr/local/opt/icu4c/sbin:$PATH"

export http_proxy=http://proxy-chain.intel.com:911
export https_proxy=http://proxy-chain.intel.com:912
export ftp_proxy=http://proxy-chain.intel.com:911
export socks_proxy=http://proxy-us.intel.com:1080
export no_proxy=intel.com,.intel.com,localhost,127.0.0.1

export HTTP_PROXY=http://proxy-chain.intel.com:911
export HTTPS_PROXY=http://proxy-chain.intel.com:912
export FTP_PROXY=http://proxy-chain.intel.com:911
export SOCKS_PROXY=http://proxy-us.intel.com:1080
export NO_PROXY=intel.com,.intel.com,localhost,127.0.0.1
