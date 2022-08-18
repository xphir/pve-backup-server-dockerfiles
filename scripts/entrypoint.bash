#!/bin/bash

# optional override for the backup user id
if [[ ! -z "${BUID}" ]]; then
	echo "INIT: Updating backup user id to $BUID..."
	usermod -o -u "$BUID" backup
fi
# optional override for the backup group id
if [[ ! -z "${BGID}" ]]; then
	echo "INIT: Updating backup group id to $BGID..."
	groupmod -o -g "$BGID" backup
fi
# start
runsvdir /runit