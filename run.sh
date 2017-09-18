#!/usr/bin/env bash

if [[ "$1" == "" ]]; then
	echo "ERROR: You must pass the email you want to use as the first argument."
	echo "EXAMPLE: ./install.sh my.email@provider.com"
	exit 1
fi

MINING_EMAIL="$1"

which minerd > /dev/null 2>&1

if [[ "$?" -ne 0 ]]; then
	echo "ERROR: You must have minerd on your path."
	exit 1
fi

command="minerd -a cryptonight -o stratum+tcp://qcn.pool.minergate.com:45570 -u "$MINING_EMAIL" -p x"

tmux new-session -d -s mining "$command"
tmux rename-window 'Miner'
tmux select-window -t mining:0
tmux -2 attach-session -t mining