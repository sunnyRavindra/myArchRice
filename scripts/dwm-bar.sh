#!/bin/bash

while true; do
    # Get the current date and time
    date=$(date +"%Y-%m-%d %H:%M:%S")

    # Get the current system load average
    loadavg=$(uptime | awk -F'average:' '{ print $2 }' | awk -F',' '{ print $1 }' | tr -d ' ')

    # Get the current CPU usage percentage
    cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}' | awk -F. '{print $1}')

    # Get the available memory percentage
    mem=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

    # Get the battery status and percentage (assuming you have a battery)
    battery=$(acpi | awk '{print $3}' | tr -d ',')
    battery_percentage=$(acpi | awk '{print $4}' | tr -d '%,')

    # Create the status bar string
    status_bar=" $date  $loadavg  CPU: $cpu%  Memory: $mem%  Battery: $battery $battery_percentage%"

    # Update the status bar
    xsetroot -name "$status_bar"

    # Sleep for 1 second before updating again
    sleep 1
done

