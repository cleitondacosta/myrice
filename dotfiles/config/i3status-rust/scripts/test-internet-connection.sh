#!/usr/bin/env bash

LOCK_FILE="/tmp/.test-internet-connection-script"
LOG_FILE=~/.logs/internet_connectivity_log

servers=("8.8.8.8" "8.8.4.4" "1.1.1.1" "4.2.2.4" "4.2.2.2")

function sping() {
    ping -W 1 -c 1 "$1" > /dev/null

    if [ $? -eq 0 ]; then
        echo "{\"text\": \"\\uf0ac  ON\"}"

        if [ -e "$LOCK_FILE" ]; then 
            notify-send "Nice" "Connected to the internet."
            log "With internet connection."
            rm "$LOCK_FILE"
        fi

        exit 0;
    fi
}

function log() {
    echo "[$(date '+%d/%m/%y-%H:%M:%S')] $1" >> $LOG_FILE
}

for server in "${servers[@]}"; do
    sping "$server"
done

echo "{\"text\": \"  \\uf0ac  OFF  \", \"state\": \"critical\"}"

if [ ! -e "$LOCK_FILE" ]; then 
    notify-send "Warning" "No internet connection."
    log "Without internet connection."
    touch "$LOCK_FILE"
fi
