#!/usr/bin/env bash

log_file=monitor.txt
time_interval=10 #//seconds

while true; do

	date >> "$log_file"
	free -h >> "$log_file"
	df -h >> "$log_file"
	uptime >>"$log_file"

	sleep "$time_interval"
done
