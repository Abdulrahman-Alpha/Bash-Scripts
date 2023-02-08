#!/bin/bash
# monitor the usage of system resources and send an email notification if they exceed a certain threshold
# Set the thresholds
cpu_threshold=80
memory_threshold=90

# Get the current CPU usage
cpu_usage=$(top -bn1 | awk '/%Cpu/ {print $2}')

# Get the current memory usage
memory_usage=$(free | awk '/Mem/ {printf("%.2f"), $3/$2 * 100.0}')

# Check if either the CPU or memory usage exceeds the thresholds
if (( $(echo "$cpu_usage > $cpu_threshold" | bc -l) )) ||
   (( $(echo "$memory_usage > $memory_threshold" | bc -l) )); then
  # Send an email notification
  echo "Subject: High system resource usage detected!" | sendmail recipient@example.com
fi