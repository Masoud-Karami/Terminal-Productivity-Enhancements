# Terminal Productivity Enhancements

## Overview

This repository contains a collection of useful aliases and functions designed to streamline terminal workflows for macOS users. The configurations help with system sleep management, Python environment setup, Git-friendly navigation, and overall shell usability improvements.

---

## 🛠️ Installation

To integrate these aliases and functions into your shell configuration:

1. **Clone this repository:**
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. **Append to your shell configuration file:**
   ```bash
   cat aliases.sh >> ~/.zshrc   # For Zsh users
   cat aliases.sh >> ~/.bashrc  # For Bash users
   ```

3. **Apply the changes:**
   ```bash
   source ~/.zshrc   # Or use source ~/.bashrc
   ```

---

## ⚙️ Available Aliases & Functions

### 🔒 System Sleep Control

```bash
alias turnoffsleep='sudo pmset -a sleep 0; sudo pmset -a hibernatemode 0; sudo pmset -a disablesleep 1'
alias turnonsleep='sudo pmset -a sleep 1; sudo pmset -a hibernatemode 3; sudo pmset -a disablesleep 0'
```

### 🐍 Python & Virtual Environments

```bash
alias python='python3'
alias pip='pip3'
alias venv='python3 -m'
function venvs() {
    python3 -m venv "$1" && source "$1"/bin/activate && pip3 install --upgrade pip
}
```

### 🧭 Shell & Navigation Enhancements

```bash
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

### 🧰 Node.js & Pyenv Configuration

```bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=0

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

---

## 📌 Notes

- This setup is optimized for **macOS**.
- Running some commands (e.g., `turnoffsleep`) requires **sudo** privileges.
- Ensure tools like `pmset`, `python3`, `pyenv`, `nvm`, and `conda` are installed on your system.

---

## 🪪 License

This configuration is open-source. Feel free to modify and share it as needed.

---

# 🖧 Compute Canada Resource Management

## 1. Generating an SSH Key

### 1.1 Check for Existing SSH Key

```bash
ls -al ~/.ssh
```

### 1.2 Generate a New SSH Key

```bash
ssh-keygen -t ed25519
```

---

# 📘 How to Install Zotero on Fedora

## Manual Installation (Method 1)

This method installs Zotero directly from the official website and integrates it into your system manually.

### ✅ Step-by-Step Instructions

### 1. Download and Extract Zotero

```bash
wget https://www.zotero.org/download/client/dl?channel=release&platform=linux-x86_64&version=7.0.15 -O zotero.tar.bz2
tar -xjf zotero.tar.bz2
```

### 2. Move to `/opt`

```bash
sudo mv Zotero-7.0.15_linux-x86_64 /opt/zotero
```

### 3. Create a Desktop Entry

```bash
nano ~/.local/share/applications/zotero.desktop
```

Paste the following content:

```ini
[Desktop Entry]
Name=Zotero
Comment=Research tool to collect, organize, cite, and share research
Exec=/opt/zotero/zotero
Icon=/opt/zotero/chrome/icons/default/default256.png
Terminal=false
Type=Application
Categories=Office;Education;Research;
```

### 4. Make the Entry Executable

```bash
chmod +x ~/.local/share/applications/zotero.desktop
```

Zotero should now be accessible from your application launcher.
