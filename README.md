# Terminal-Productivity-Enhancements
Terminal Productivity Enhancements
# Terminal Productivity Enhancements

## Overview
This repository contains a collection of useful aliases and functions designed to streamline terminal workflows for macOS users. The configurations help with system sleep management, Python environment setup, Git-friendly navigation, and overall shell usability improvements.

## Installation
To integrate these aliases and functions into your shell configuration:

1. Clone this repository (or manually copy the contents to your shell config files):
   ```sh
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Append the contents of `aliases.sh` to your shell configuration file:
   ```sh
   cat aliases.sh >> ~/.zshrc  # For Zsh users
   cat aliases.sh >> ~/.bashrc  # For Bash users
   ```

3. Apply changes immediately:
   ```sh
   source ~/.zshrc  # Or source ~/.bashrc
   ```

## Available Aliases & Functions

### System Sleep Control
```sh
alias turnoffsleep='sudo pmset -a sleep 0; sudo pmset -a hibernatemode 0; sudo pmset -a disablesleep 1'
alias turnonsleep='sudo pmset -a sleep 1; sudo pmset -a hibernatemode 3; sudo pmset -a disablesleep 0'
```

### Python & Virtual Environments
```sh
alias python='python3'
alias pip='pip3'
alias venv='python3 -m'
function venvs() {
    python3 -m venv "$1" && source "$1"/bin/activate && pip3 install --upgrade pip
}
```

### Shell & Navigation Enhancements
```sh
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
```

### Node.js & Pyenv Configuration
```sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_caliompletion" ] && \. "$NVM_DIR/bash_completion"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=0

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

## Notes
- This setup is optimized for **macOS**.
- Running some commands (e.g., `turnoffsleep`) requires **sudo** privileges.
- Ensure that `pmset`, `python3`, `pyenv`, `nvm`, and `conda` are installed on your system.

## License
This configuration is open-source. Feel free to modify and share it as needed.

