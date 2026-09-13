#!/usr/bin/env bash

log_file=monitor.log
time_interval=5 #секунд

if ! touch "$log_file" 2>/dev/null; then
    echo "Ошибка: не удалось создать $log_file" >&2
    exit 1
fi

while true; do

	date '+--- %Y-%m-%d %H:%M:%S ---' >> "$log_file"
	free -h >> "$log_file"
	df -h >> "$log_file"
	uptime >> "$log_file"

	sleep "$time_interval"
done
