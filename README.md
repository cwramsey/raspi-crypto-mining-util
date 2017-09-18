# Raspberry Pi QCN Mining Util

This repo is two simple bash scripts that will compile and install [CPUMiner Multi](https://github.com/lucasjones/cpuminer-multi).

This also installs [tmux](https://github.com/tmux/tmux) to allow for running the miner in the background, regardless of whether you're ssh'd into your pi or not.

## How to use

After cloning the repo, you'll want to run `./install.sh` to setup the necessary dependencies (one time only is fine) and then run `./run.sh` to kick off a tmux session.

The session will be named `mining` so it's easy to identify at a later date.