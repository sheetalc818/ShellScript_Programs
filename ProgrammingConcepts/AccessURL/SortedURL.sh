#!/bin/bash
cat /home/admin1/Videos/TerminalCommands/linux-content/access.log | awk '{print $7}' | sort -nr | uniq -c | head -4



