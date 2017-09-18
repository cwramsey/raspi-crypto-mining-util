#!/usr/bin/env bash

# Get the lastest list of updates from the repos
sudo apt-get update -y

# Install necessary tools
sudo apt-get -y install \
	autoconf \
	libcurl4-openssl-dev \
	libjansson-dev \
	openssl \
	libssl-dev \
	gcc \
	gawk \
	git \
	tmux

# Get the miner from github
git clone https://github.com/lucasjones/cpuminer-multi.git

cd cpuminer-multi

# Build the miner
./autogen
./configure
make

# If using zsh, add it to zshrc
if [[ -f ~/.zshrc ]]; then
	echo "export PATH=$PATH:$(pwd)" >> ~/.zshrc
fi

# If using bash, add it to bashrc
if [[ -f ~/.bashrc ]]; then
	echo "export PATH=$PATH:$(pwd)" >> ~/.bashrc
fi

# Go back to original directory
cd ../

echo "CPUMiner Multi and related deps have been installed and compiled."
echo "You can now run ./run.sh my.email@provider.com to start mining."