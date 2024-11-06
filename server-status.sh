# Total CPU usage
# Total memory usage (Free vs Used including percentage)
# Total disk usage (Free vs Used including percentage)
# Top 5 processes by CPU usage
# Top 5 processes by memory usage
# Stretch goal: Feel free to optionally add more stats such as os version, uptime, load average, logged in users, failed login attempts etc.


#!/bin/bash

#for CPU usage
mpstat -P ALL


free -h | grep -w Mem | awk '{printf "total - %.1fGB \n used - %.1fGB\n free - %.1fGB \n",$2,$3,$4}'


df -h | grep -w "/"
df -h | grep -w "/home"


ps aux --sort -%mem | head -n 5 | awk '{print $1 "\t" $2 "\t" $4 "\t" $11}'


ps aux --sort -%cpu | head -n 5 | awk '{print $1 "\t" $2 "\t" $3 "\t" $11}'

#os version
uname -a
cat /etc/os-release | grep PRETTY_NAME

#uptime
uptime

#logged in users
who




