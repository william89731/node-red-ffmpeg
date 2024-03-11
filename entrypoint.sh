#!/bin/bash

trap stop SIGINT SIGTERM

function stop() {
	kill $CHILD_PID
	wait $CHILD_PID
}

node $NODE_OPTIONS node_modules/node-red/red.js $FLOWS --userDir=/data &

CHILD_PID="$!"

wait "${CHILD_PID}"
