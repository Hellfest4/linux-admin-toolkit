#!/bin/bash
echo "=== SYSTEM INFO ==="
date
uptime
echo
echo "=== DISK USAGE ==="
df -h
echo 
echo "=== MEMORY ==="
vm_stat | head -n 10
echo
echo "=== TOP PROCESSES ==="
ps aux | head -n 10

