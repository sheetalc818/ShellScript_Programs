#! /bin/bash
cat /home/admin1/Videos/TerminalCommands/linux-content/access.log | awk '{print $16}' | sort | uniq -c | head -10
