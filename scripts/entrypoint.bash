#!/bin/bash

# use the enivronment override for the user id and group id, otherwise use the default backup id of 34
if [[ ! -z "${BUID}" ]]; then
	echo "INIT: Updating backup user id to $BUID..."
	usermod -o -u "$BUID" backup
fi

if [[ ! -z "${BGID}" ]]; then
	echo "INIT: Updating backup group id to $BGID..."
	groupmod -o -g "$BGID" backup
fi

runsvdir /runit