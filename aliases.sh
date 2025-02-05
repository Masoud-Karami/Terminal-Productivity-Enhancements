System Sleep Control##########################################################

alias turnoffsleep='sudo pmset -a sleep 0; sudo pmset -a hibernatemode 0; sudo pmset -a disablesleep 1'
alias turnonsleep='sudo pmset -a sleep 1; sudo pmset -a hibernatemode 3; sudo pmset -a disablesleep 0'

Python & Virtual Environments##########################################################################

alias python='python3'
alias pip='pip3'
alias venv='python3 -m'
function venvs() {
    python3 -m venv "$1" && source "$1"/bin/activate && pip3 install --upgrade pip
}

Shell & Navigation Enhancements########################################################################

alias tbash='open -a TextEdit ~/.bashrc && open -a TextEdit ~/.zshrc'
alias nbash='nano ~/.bash_profile'
alias sbash='source ~/.bash_profile && source ~/.zshrc'
alias ls='ls --color=auto'
function cd {
    builtin cd "$@" && ls -F
}
function mkcd() {
    mkdir -p -- "$1" && cd -P -- "$1"
}

Node.js & Pyenv Configuration########################################################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=0

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
