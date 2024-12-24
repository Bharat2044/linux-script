#!/bin/bash

# Get total memory
totalMem=`free -m | head -2 | tail -1 | awk '{ print $2 }'`

# Get used memory
memUsed=`free -m | head -2 | tail -1 | awk '{ print $3 }'`

# Calculate percentage of used memory
usedMemPercentage=`expr $memUsed \* 100 / $totalMem`
# usedMemPercentage=$((memUsed * 100 / totalMem))

# Print the result
# echo $usedMemPercentage
echo -e "`date +"%r %D"`\t$usedMemPercentage" >> mem_report.csv
