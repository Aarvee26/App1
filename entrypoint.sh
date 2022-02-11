#!/bin/bash

# Stops the execution of a script in case of error
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f ./tmp/pids/server.pid

echo "pid removed..."

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"