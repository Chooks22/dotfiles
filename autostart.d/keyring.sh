#!/bin/sh
# Enable keyring
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
