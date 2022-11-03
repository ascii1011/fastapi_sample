#!/bin/sh

HOST="0.0.0.0"
PORT="8081"

echo "HOSTING AS: http://{$HOST}:{$PORT}}"

cd /app
echo "uvicorn main:app --host {$HOST} --port {$PORT} --reload"
uvicorn main:app --host $HOST --port $PORT --reload

echo 'tailing...'
tail -f /dev/null
