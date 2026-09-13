#!/usr/bin/env bash

log_file=monitor.txt
time_interval=10 #//seconds

date
free -h >> "$log_file"
df -h >> "$log_file"
uptime >>"$log_file"
