#!/usr/bin/env bash

# Check current Wi-Fi state
if nmcli radio wifi | grep -q "enabled"; then
    nmcli radio wifi off
else
    nmcli radio wifi on
fi