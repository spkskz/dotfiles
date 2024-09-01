#!/usr/bin/env bash

. "$( pwd )/utils.sh"

# Update and upgrade APK
apt update && apt upgrade -y

# Install essential packages
apt install -y \
  coreutils \
  nodejs \
  python3 \
  yarn \
  tmux \
  vim \
  neovim \
  gdb \
  bash \
  git \
  curl \
  wget \
  tar \
  htop 

# Install additional development tools
add-apt-repository -y ppa:aslatter/ppa -y
apt install -y alacritty

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Activate NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install Node.js using NVM
nvm install node

# Set bash as default shell
chsh -s /bin/bash

