#!/usr/bin/env bash
set -euo pipefail

PLIST="$HOME/Library/LaunchAgents/com.songurov.gitlab-compose.plist"

launchctl bootout gui/"$(id -u)" "$PLIST" >/dev/null 2>&1 || true
launchctl bootstrap gui/"$(id -u)" "$PLIST"
launchctl enable gui/"$(id -u)"/com.songurov.gitlab-compose
launchctl kickstart -k gui/"$(id -u)"/com.songurov.gitlab-compose

echo "launchd activ pentru GitLab compose."
