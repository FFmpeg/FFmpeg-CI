#!/bin/bash
cd "$(dirname "$0")"

BEARER_TOKEN="${ACTIONS_RUNTIME_TOKEN}"

if [[ $ACTIONS_RESULTS_URL =~ ^(https?://[^/]+)(/.*)?$ ]]; then
    BASE_URL="${BASH_REMATCH[1]}"
    URL_PATH="${BASH_REMATCH[2]}"
    URL_PATH="${URL_PATH%/}"
else
    echo "Invalid url"
    exit 1
fi

sed \
    -e "s|@@@REV_TARGET_BASE@@@|${BASE_URL}|g" \
    -e "s|@@@REV_TARGET_PATH@@@|${URL_PATH}|g" \
    -e "s|@@@BEARER_TOKEN@@@|${BEARER_TOKEN}|g" \
    Caddyfile.in > Caddyfile
