#! /usr/bin/env bash

# enable unofficial bash strict mode
set -o errexit
set -o nounset
set -o pipefail

action=${1:-"dump"}

if [ "$action" = "delete" ]; then
    echo "Delete backup..."
    /bin/bash /delete.sh
else
    echo "Dump backup to remote..."
    /bin/bash /dump.sh
fi