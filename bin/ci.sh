#!/bin/bash

function npmtest() {
	rm -rf node_modules
	npm cache clean
	nvm use $1
	npm install
	npm test
}

function run() {
	case "$CIRCLE_NODE_INDEX" in
		0)
			npmtest 6
			;;
		1)
			npmtest 4
			;;
		2)
			npmtest 8
			;;
		3)
			npmtest 0.12
			;;
		*)
			;;
	esac
}

run
